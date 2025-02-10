// Dimensions for devices
import 'package:flutter/material.dart';

const mobileWidth = 600;
Size screenSize =
    WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
double screenWidth = screenSize.width;
double screenHeight = screenSize.height;
