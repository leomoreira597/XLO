import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagedialogIos extends StatelessWidget {
  //const ImagedialogIos({Key? key}) : super(key: key);
  ImagedialogIos({required this.image, required this.onDelete});
  final dynamic image;
  final VoidCallback onDelete;


  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
      onPressed: (){
        Navigator.of(context).pop();
        onDelete();
      },
      child: const Text('Excluir'),
    );
  }
}
