import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xlo_mobx/ui/login/login_screen.dart';


class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LoginScreen())
        );
      },
      child: Container(
      color: Colors.purple,
      height: 94,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
      children: [
        Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
        ),
        const SizedBox(width: 20,),
        Expanded(
          child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Acesse sua conta agora',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                ),
                Text(
                    'Clique Aqui',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ],
            ),
        ),
      ],
    ),
    ),
    );
  }
}
