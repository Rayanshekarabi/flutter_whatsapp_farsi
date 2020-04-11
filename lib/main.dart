import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'whatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Vazir',
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366)
      ),
      home:new Directionality(textDirection: TextDirection.rtl, child: WhatsAppHome(),) ,
    );
  }


}