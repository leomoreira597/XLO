import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:xlo_mobx/componets/category_field.dart';
import 'package:xlo_mobx/componets/cep_field.dart';
import 'package:xlo_mobx/componets/custom_drawer/custom_drawer.dart';
import 'package:xlo_mobx/componets/hide_phone_field.dart';
import 'package:xlo_mobx/componets/imagesfield.dart';
import 'package:xlo_mobx/stores/create_store.dart';

class CreateScreen extends StatelessWidget {
  //const CreateScreen({Key? key}) : super(key: key);
  final CreateStore createStore = CreateStore();


  @override
  Widget build(BuildContext context) {
    final labelStlye = TextStyle(
      fontWeight: FontWeight.w800,
      color: Colors.grey,
      fontSize: 18,
    );
    final contentPadding = const EdgeInsets.fromLTRB(
      16,
      10,
      12,
      10,
    );
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Criar anuncio'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ImagesField(createStore),
                Observer(builder: (_){
                  return TextFormField(
                    onChanged: createStore.setTitle,
                    decoration: InputDecoration(
                      labelText: 'Titulo *',
                      labelStyle: labelStlye,
                      contentPadding: contentPadding,
                      errorText: createStore.titleError,
                    ),
                  );
                }),
                Observer(builder: (_){
                  return TextFormField(
                    onChanged: createStore.setDescription,
                    decoration: InputDecoration(
                      labelText: 'Descri????o *',
                      labelStyle: labelStlye,
                      contentPadding: contentPadding,
                      errorText: createStore.descriptionError,
                    ),
                    maxLines: null,
                  );
                }),
                CategoryField(createStore),
                CepField(createStore),
                Observer(builder: (_){
                   return TextFormField(
                    onChanged: createStore.setPrice,
                    decoration: InputDecoration(
                      labelText: 'Pre??o *',
                      labelStyle: labelStlye,
                      contentPadding: contentPadding,
                      prefixText: 'R\$ ',
                      errorText: createStore.priceError,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CentavosInputFormatter(),
                    ],
                  );
                }),
                HidePhoneField(createStore),
                Observer(builder: (_){
                  return SizedBox(
                    height: 50,
                    child: GestureDetector(
                      onTap: createStore.invalidSendPressed,
                      child: ElevatedButton(
                        onPressed: createStore.senPressed,
                        child: Text(
                          'Enviar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
