import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  double get height {
    return MediaQuery.of(this).size.height;
  }

  double get width {
    return MediaQuery.of(this).size.width;
  }

  bool get isMobile {
    return MediaQuery.of(this).size.width <= 600.0;
  }

  bool get isTablet {
    return MediaQuery.of(this).size.width <= 768.0 &&
        MediaQuery.of(this).size.width > 600.0;
  }

  bool get isLaptop {
    return MediaQuery.of(this).size.width <= 992.0 &&
        MediaQuery.of(this).size.width > 768;
  }

  bool get isDesktop {
    return MediaQuery.of(this).size.width >= 993.0;
  }

  Future<void> push(String route) async {
    Navigator.of(this).pushNamed(route);
  }

  Future<void> replace(String route) async {
    await Navigator.of(this).pushReplacementNamed(route);
  }

  Future<void> replaceAll(String route) async {
    while (Navigator.of(this).canPop()) {
      Navigator.of(this).pop();
    }
    await Navigator.of(this).pushReplacementNamed(route);
  }

  Future<void> pop([bool? result]) async {
    return Navigator.of(this).pop(result);
  }

  bool get canPop => Navigator.of(this).canPop();
}