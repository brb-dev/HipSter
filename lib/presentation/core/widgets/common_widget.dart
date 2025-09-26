import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hipstermeet/presentation/core/utils/extension_util.dart';

Widget get bottomSpace => kIsWeb
    ? 20.hs
    : Platform.isIOS
    ? 40.hs
    : 20.hs;
