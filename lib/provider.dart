import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/log_util.dart';
import 'core/toast_util.dart';
import 'router/route.gr.dart';

/// 全局的provider
final myRouter = AppRouter();
final myLogger = MyLog();
final myToast = MyToast();

