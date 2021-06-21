import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'env.dart';
import 'infrastructure/mixins/app_mixin.dart';

void main() => runApp(
      /// [DevicePreview] Package Runner
      DevicePreview(
        enabled: AppMixin.getDevicePreviewStatus(APP_MODE),
        builder: (context) => const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          child: App(),
        ),
      ),
    );
