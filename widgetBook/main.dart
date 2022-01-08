import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetBookReload extends StatelessWidget {
  const WidgetBookReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      categories: const [],
      appInfo: AppInfo(name: "Flutter Cubit SM"),
    );
  }
}

void main() {
  runApp(
    const WidgetBookReload(),
  );
}
