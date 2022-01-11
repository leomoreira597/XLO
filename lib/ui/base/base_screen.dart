import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/stores/page_store.dart';
import 'package:xlo_mobx/ui/home/home_screen.dart';

class BaseScreen extends StatefulWidget {
  //const BaseScreen({Key? key}) : super(key: key);
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();

  final PageStore pageStore = GetIt.I<PageStore>();


  @override
  void initState() {
  super.initState();

  reaction(
      (_) => pageStore.page,
      (page) => pageController.jumpToPage(page as int)
  );

  }

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
