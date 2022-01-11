import 'package:flutter/material.dart';
import 'package:xlo_mobx/ui/home/home_screen.dart';

class BaseScreen extends StatelessWidget {
  //const BaseScreen({Key? key}) : super(key: key);
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          Container(color: Colors.red,),
          Container(color: Colors.yellow,),
          Container(color: Colors.green,),
          Container(color: Colors.grey,),
        ],
      ),
    );
  }
}
