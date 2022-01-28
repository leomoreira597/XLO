import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSourceModel extends StatelessWidget {
  const ImageSourceModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return CupertinoActionSheet(
        title: const Text('Selecionar foto para o anuncio'),
        message: const Text('Escolha a origem da foto'),
        cancelButton: CupertinoActionSheetAction(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancelar',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: (){},
            child: const Text('Câmera'),
          ),
          CupertinoActionSheetAction(
            onPressed: (){},
            child: const Text('Galeria'),
          ),
        ],
      );
  }
}
