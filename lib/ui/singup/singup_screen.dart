import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:xlo_mobx/stores/singup_store.dart';
import 'package:xlo_mobx/ui/login/login_screen.dart';
import 'package:xlo_mobx/ui/singup/components/field_title.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SingUpScreen extends StatelessWidget {
  //const SingUpScreen({Key? key}) : super(key: key);

  final SingupStore singupStore = SingupStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FieldTitle(
                      title: 'Apelido',
                      subtitle: 'Como aparecerá em seus anuncios',
                    ),
                    Observer(builder: (_){
                      return TextField(
                        enabled: !singupStore.loading,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Exemplo: Leonardo Moreira da Silva',
                          isDense: true,
                          errorText: singupStore.nameError,
                        ),
                        onChanged: singupStore.setName,
                      );
                    }),
                    SizedBox(height: 16,),
                    FieldTitle(
                      title: 'E-mail',
                      subtitle: 'Enviaremos um e-mail de confirmação',
                    ),
                    Observer(builder: (_){
                      return TextField(
                        enabled: !singupStore.loading,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Exemplo: leonardo@gmail.com',
                          isDense: true,
                          errorText: singupStore.emailError,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        onChanged: singupStore.setEmail,
                      );
                    }),
                    SizedBox(height: 16,),
                    FieldTitle(
                      title: 'Celular',
                      subtitle: 'proteja sua conta',
                    ),
                    Observer(builder: (_){
                      return TextField(
                        enabled: !singupStore.loading,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Exemplo: (99) 99999-9999',
                          isDense: true,
                          errorText: singupStore.phoneError,
                        ),
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                        ],
                        onChanged: singupStore.setPhone,
                      );
                    }),
                    SizedBox(height: 16,),
                    FieldTitle(
                      title: 'Senha',
                      subtitle: 'Use letras, numeros e caracteres especiais',
                    ),
                    Observer(builder: (_){
                      return TextField(
                        enabled: !singupStore.loading,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Crie sua Senha',
                          isDense: true,
                          errorText: singupStore.pass1Error,
                        ),
                        obscureText: true,
                        onChanged: singupStore.setPass1,
                      );
                    }),
                    SizedBox(height: 16,),
                    FieldTitle(
                      title: 'Confirmar senha',
                      subtitle: 'Repita a senha',
                    ),
                    Observer(builder: (_){
                      return TextField(
                        enabled: !singupStore.loading,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Repita sua Senha',
                            isDense: true,
                            errorText: singupStore.pass2Error
                        ),
                        obscureText: true,
                        onChanged: singupStore.setPass2,
                      );
                    }),
                    Observer(builder: (_){
                      return Container(
                        height: 40,
                        margin: EdgeInsets.only(top: 20, bottom: 12),
                        child: ElevatedButton(
                          child: singupStore.loading ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          ) : Text('Cadastrar'),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          onPressed: () => singupStore.singupPressed(),
                        ),
                      );
                    }),
                    Divider(color: Colors.black,),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text('Já tem Conta?',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => LoginScreen(),
                              ));
                            },
                            child: Text(
                              'Entrar!',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.purple,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
