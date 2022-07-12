import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_connect.dart';
import 'dart:io';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:frontend/firebase_options.dart';


part 'package:frontend/helpers/api.dart';
part 'package:frontend/helpers/routes.dart';
part 'package:frontend/helpers/databinding.dart';



part 'package:frontend/main.dart';

//User Interface

part 'package:frontend/screens/splash.dart';
part 'package:frontend/screens/auth/login.dart';
part 'package:frontend/screens/auth/register.dart';
part 'package:frontend/screens/auth/controller.dart';

part 'package:frontend/screens/quotes/controller.dart';
part 'package:frontend/screens/quotes/view.dart';
part 'package:frontend/screens/quotes/form_fragment.dart';

part 'package:frontend/screens/quotes/quote_card.dart';


