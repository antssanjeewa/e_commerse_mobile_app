import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum Pages {
  home,
}

extension PagesExtention on Pages {
  String toPath() {
    return '/$name';
  }

  String toPathName() {
    return name;
  }

  void go(BuildContext context) {
    GoRouter.of(context).goNamed(toPathName());
  }
}
