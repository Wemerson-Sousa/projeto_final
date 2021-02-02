import 'package:app/views/map_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          child: Image.asset("lib/image/logo.jpg"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Opções'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Contatos'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Mapas'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MapPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
