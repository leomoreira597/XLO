import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/generated/i18n.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/ui/base/base_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialzeParse();
  runApp(MyApp());


}

Future<void> initialzeParse() async{
  await Parse().initialize('46O1Hveqzi0Tylab81c3M05fFLJFqfewZaGTFdRt',
      'https://parseapi.back4app.com/',
      clientKey: '2P5NdRmCgJsZjfWDXwhjdFX26b0ycJsG6HxBMJ7m',
      autoSendSessionId: true,
      debug: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'XLO',
     theme: ThemeData(
       primarySwatch: Colors.blue,
       visualDensity: VisualDensity.adaptivePlatformDensity,
     ),
     home: BaseScreen(),
   );
  }
}
