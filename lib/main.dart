import 'package:flutter/material.dart';
import 'package:techquest/core/routing/app_router.dart';

import 'core/di/dependecy_injection.dart';
import 'tech_questApp.dart';


void main() {
   setupGetIt();
  runApp( TechQuestApp(appRouter: AppRouter(),));
}

