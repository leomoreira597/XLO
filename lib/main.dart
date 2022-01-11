import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/generated/i18n.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/stores/page_store.dart';
import 'package:xlo_mobx/ui/base/base_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialzeParse();
  setUpLocators();
  runApp(MyApp());

}

void setUpLocators(){
  GetIt.I.registerSingleton(PageStore());
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
       primarySwatch: Colors.purple,
       visualDensity: VisualDensity.adaptivePlatformDensity,
       scaffoldBackgroundColor: Colors.purple,
       appBarTheme: AppBarTheme(
         elevation: 0,
       ),
       textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.orange),
       elevatedButtonTheme: ElevatedButtonThemeData(
           style: TextButton.styleFrom(
               backgroundColor: Colors.orange
           )
       ),
     ),
     home: BaseScreen(),
   );
  }
}
