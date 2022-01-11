import 'package:flutter/material.dart';
import 'package:xlo_mobx/componets/custom_drawer/page_tile.dart';



class PageSection extends StatelessWidget {
  const PageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anuncios',
          iconData: Icons.list,
          onTap:(){
        },
        highlighted: false
        ),
        PageTile(
            label: 'Anuncios',
            iconData: Icons.list,
            onTap:(){
            },
            highlighted: false
        ),
        PageTile(
            label: 'Inserir Anuncios',
            iconData: Icons.edit,
            onTap:(){
            },
            highlighted: false
        ),
        PageTile(
            label: 'Chat',
            iconData: Icons.chat,
            onTap:(){
            },
            highlighted: false
        ),PageTile(
            label: 'Favoritos',
            iconData: Icons.favorite,
            onTap:(){
            },
            highlighted: false
        ),
        PageTile(
            label: 'Minha Conta',
            iconData: Icons.person,
            onTap:(){
            },
            highlighted: false
        ),
      ],
    );
  }
}
