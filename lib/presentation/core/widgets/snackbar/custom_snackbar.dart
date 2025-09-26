import 'package:flutter/material.dart';

class CustomSnackbar extends StatelessWidget {
  const CustomSnackbar({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.messageText,
    required this.textStyle,
    this.mainButton,
  });

  final Color backgroundColor;
  final Widget icon;
  final String messageText;
  final TextStyle textStyle;
  final Widget? mainButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 42.0),
                child: icon,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 4.0,
                        right: 8.0,
                        bottom: 10,
                      ),
                      child: Text(
                        messageText,
                        style: textStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
