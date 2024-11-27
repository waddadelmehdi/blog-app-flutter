import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 255, 147, 147),
                    Colors.white
                  ])
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    child:Text(''),
                  ),
                  Text('Name/Email'),
                ],
              )),
          ExpansionTile(
            subtitle: Text('Fashion Mnist Classification'),
            childrenPadding: EdgeInsets.only(left: 20.0),
            title: Text('Image Classification Model'),
            leading: Icon(Icons.image),
            children: [
              ListTile(title: Text('ANN Model'),
              ),
              ListTile(title: Text('CNN Model')),
            ],
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Stock Price Prediction'),),
          ListTile(
              leading: Icon(Icons.voice_chat),
              title: Text('Vocal  Assistant(LLM)')),
          ListTile(
              leading: Icon(Icons.image),
              title: Text('RAG')),
        ],
      ),
    );
  }
}