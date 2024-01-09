import 'dart:ui';

import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior{


  Set<PointerDeviceKind>get dragDevices=>{
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse
  };
}