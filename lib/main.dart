import 'package:day3/Pages/auth/login.dart';
import 'package:day3/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const SystemUiOverlayStyle(statusBarColor: Colors.white,statusBarBrightness: Brightness.light);
  runApp( const ProviderScope(child: MyApp()));
}
final navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends ConsumerWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref){
    return  MaterialApp( navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: backgroundColor),
      home: const Login(),
    );
  }
}
