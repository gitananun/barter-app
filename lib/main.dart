import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

void main() => runApp(
      /// [DevicePreview] Package Runner
      // DevicePreview(
      //   enabled: AppMixin.getDevicePreviewStatus(APP_MODE),
      //   builder: (context) => const AnnotatedRegion<SystemUiOverlayStyle>(
      //     value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      //     child: App(),
      //   ),
      // ),

      const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: App(),
      ),
    );
