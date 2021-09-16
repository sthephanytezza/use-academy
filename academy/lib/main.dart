import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Use Academy'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.book),
            ),
          ],
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(12.0))),
        ),
        /*drawer: Drawer(
          child: Column(),
        ),*/
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue[200],
          selectedLabelStyle: const TextStyle(
            color: Colors.white,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.grey[100],
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Sacola',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            //expandir o corpo na horizontal
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //verticalDirection: VerticalDirection.up,

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MyContainer(),
              MyContainer(),
              MyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 100,
        margin: const EdgeInsets.all(24.0),
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.4),
              //em qual direção o sombreado vai
              offset: const Offset(4.0, 4.0),
              blurRadius: 6.0,
              //spreadRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.home),
            Expanded(
              child: Text(
                'Meu Container testando o texto com overflow',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 13.0,
                  color: Colors.white,
                ),
              ),
            ),
            const FlutterLogo(
              size: 32.0,
            ),
          ],
        ));
  }
}
