// ignore_for_file: must_be_immutable

import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hipstermeet/presentation/core/utils/asset/app_asset.dart';
import 'package:hipstermeet/presentation/core/widgets/shimmer/loading_shimmer.dart';

class CustomImageView extends StatelessWidget {
  ///[imagePath] is required parameter for showing image
  String? imagePath;

  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;
  // optional radius for respective corners
  Radius? topLeftRadius;
  Radius? topRightRadius;
  Radius? bottomLeftRadius;
  Radius? bottomRightRadius;

  ///a [CustomImageView] it can be used for showing any type of images
  /// it will shows the placeholder image if image is not found on network image
  CustomImageView({
    super.key,
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder = AppAssets.appIcon,
    this.topLeftRadius,
    this.topRightRadius,
    this.bottomLeftRadius,
    this.bottomRightRadius,
  });

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment!, child: _buildWidget())
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(onTap: onTap, child: _buildCircleImage()),
    );
  }

  ///build the image with border radius
  Widget _buildCircleImage() {
    BorderRadius effectiveRadius;

    if (radius != null) {
      effectiveRadius = radius!;
    } else if (topLeftRadius != null ||
        topRightRadius != null ||
        bottomLeftRadius != null ||
        bottomRightRadius != null) {
      effectiveRadius = BorderRadius.only(
        topLeft: topLeftRadius ?? Radius.zero,
        topRight: topRightRadius ?? Radius.zero,
        bottomLeft: bottomLeftRadius ?? Radius.zero,
        bottomRight: bottomRightRadius ?? Radius.zero,
      );
    } else {
      effectiveRadius = BorderRadius.zero;
    }

    return ClipRRect(
      borderRadius: effectiveRadius,
      child: _buildImageWithBorder(),
    );
  }

  ///build the image with border and border radius style
  Widget _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(border: border, borderRadius: radius),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return SizedBox(
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!,
              height: height,
              width: width,
              fit: fit ?? BoxFit.contain,
            ),
          );
        case ImageType.file:
          return Image.file(
            File(imagePath!),
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
        case ImageType.network:
          return CachedNetworkImage(
            height: height,
            width: width,
            fit: fit,
            imageUrl: imagePath!,
            color: color,
            placeholder: (context, url) => LoadingShimmer.logo(),
            errorWidget: (context, url, error) => placeHolder.startsWith('http')
                ? CachedNetworkImage(
                    imageUrl: placeHolder,
                    height: height,
                    width: width,
                    fit: fit ?? BoxFit.cover,
                  )
                : Image.asset(
                    placeHolder,
                    height: height,
                    width: width,
                    fit: fit ?? BoxFit.cover,
                  ),
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
      }
    }
    return const SizedBox();
  }
}

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (endsWith('.svg') &&
        !(startsWith('http') || startsWith('https'))) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }
