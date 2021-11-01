import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClientsPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
     padding: EdgeInsets.only(
       top: 60,
       left: 40,
       right: 40,
     ),
      color: Colors.white,
      child: Text("Clientes aqui"),
    ),
    );
  }
}