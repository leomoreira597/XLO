import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:xlo_mobx/componets/image_source_modal.dart';
import 'package:xlo_mobx/stores/create_store.dart';
class ImagesField extends StatelessWidget {

  ImagesField(this.createStore);
  //const ImagesField(CreateStore createStore, {Key? key, this.createStore}) : super(key: key);
  final CreateStore createStore;


  @override
  Widget build(BuildContext context) {
    void onImageSelected(File? image){
    createStore.images.add(image);
    Navigator.of(context).pop();
    }
    return Container(
      color: Colors.grey[200],
      height: 120,
      child: Observer(builder: (_){
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: createStore.images.length < 5 ? createStore.images.length + 1 : 5,
          itemBuilder: (_, index) {
            if(index == createStore.images.length) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: GestureDetector(
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (_) => ImageSourceModel(onImageSelected),
                    );
                  },
                  child: CircleAvatar(
                    radius: 44,
                    backgroundColor: Colors.grey[300],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          '+ Inserir',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            else{
              return Padding(
                padding:  EdgeInsets.fromLTRB(8, 16, index == 4 ? 8 : 0, 16),
                child: GestureDetector(
                  onTap: () {
                  },
                  child: CircleAvatar(
                    radius: 44,
                    backgroundImage: FileImage(createStore!.images[index]),
                  ),
                ),
              );

            }
          },
        );
      },),
    );
  }
}
