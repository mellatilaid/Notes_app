import 'package:flutter/material.dart';

extension Navigate on BuildContext {
  toView(view) {
    Navigator.push(this, MaterialPageRoute(builder: ((context) {
      return view;
    })));
  }
}
