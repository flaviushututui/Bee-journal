import 'package:flutter/material.dart';
import './hivegrid.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFAE2),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow,
          title: Text(
            'Bee Journal',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body:HiveGrid(),
      ),
    );
  }
}




///Detalii stup individual:\
///Generalitati:
///- numarul/numele stupului
///- origine stup (roi, cumparat, injumatatit, etc)
///- anul in care a fost pusa regina
///- ce rasa e regina
///
///La inspectie exterioara:
///- aduc polen?
///- pazesc urdinisul?
///
/// La inspectie interioara:
///- comportament (agresiv, docil, amortit etc)
///- cate rame sunt cu albine
///- numarul trantorilor
///- tiparul depunerii oualelor ( multe/putine, organizat/haotic)
///- starea reginei (sanatoasa si vivace/ cu defecte si molcoma)
///- celule umplute cu pastura (multe/putine)
///- numarul celulelor cu miere deja capacite (multe, putine)
///- paraziti
