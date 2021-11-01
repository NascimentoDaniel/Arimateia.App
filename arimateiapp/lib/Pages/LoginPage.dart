import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:arimateiapp/Pages/ClickMenuPage.dart';

class LoginPage extends StatelessWidget{
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
      child: Form(
        child: ListView(
        children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("assets/arimIco1.png"),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "E-mail",
              labelStyle: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: FlatButton(
               child: Text(
                 "Recuperar Senha",
                 textAlign: TextAlign.right,
               ),
               onPressed: (){
                //  Navigator.push(
                //    context, 
                //    MaterialPageRoute(
                //      builder: (context) => ResetPasswordPage(),
                //       ),
                //       );
               },
               ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors:[
                  Color(0xFFFF00005d),
                  Color(0xFFFF00a5ec)
                ], 
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                  ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/loginIco.png"),
                            height: 40,
                            width: 40,
                          ),
                        ),
                    ],
                ),
              onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => ClickMenuPage(),
                    ),
                 );
              },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Color(0xFFFF00005d),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                        Text(
                          "Login com Facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/FbIcon.png"),
                            height: 40,
                            width: 40,
                          ),
                        ),
                    ],
                ),
              onPressed: () {},
              ),
            ),
          ),
          SizedBox(
              height: 10,
          ),
          Container(
            height: 40,
            child: FlatButton( 
              child: Text(
                "Cadastre-se",
                textAlign: TextAlign.center,
                style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                ),
              ),
              onPressed: (){},
            ),
          ),
          
        ],
      ),
      ) 
    ),
  ) ;
}


}