import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:dio/src/options.dart' as RequestOptions;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


part 'package:frontend/helpers/api.dart';




//User Interface
part 'package:frontend/screens/auth/login.dart';
part 'package:frontend/screens/auth/register.dart';