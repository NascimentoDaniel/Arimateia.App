import 'package:arimateiapp/Pages/ClientsPage.dart';
import 'package:arimateiapp/Pages/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:arimateiapp/Pages/AboutPage.dart';
import 'package:arimateiapp/Pages/ContactsPage.dart';
import 'package:arimateiapp/Pages/ServicesPage.dart';

class ClickMenuPage extends StatelessWidget{
  final List<dynamic> menuName = ["Sobre Nós", "Nossos Serviços","Fale Conosco", "Deseja se Cadastrar?", "Procurando Alguém?"];

  menuSwitch(context, index)
  {
    switch (index) {
      case 0:
        return Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));  
        break;
      case 1:
        return Navigator.push(context, MaterialPageRoute(builder: (context) => ServicesPage(),));  
        break;
      case 2:
        return Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsPage(),));  
        break;
      case 3:
        return Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));  
        break;
      default:
        return Navigator.push(context, MaterialPageRoute(builder: (context) => ClientsPage(),));  
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu'),),
      body: Container(
        child: gridDo(false, context)
      ),
    );
  }
  
  Widget gridDo(bool val, BuildContext context){
    if(val)
      return ListView.builder(
        itemCount: menuName.length,
        itemBuilder: (context, index) => cardDouble(context, index),
      );
    else
      return Wrap(
        children: menuName.map((value) => 
          cardCreate(context, menuName.indexOf(value))
        ).toList().cast<Widget>(),
      );
  }

  Widget cardDouble(context, index){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: () => menuSwitch(context, index),
              color: Colors.blue[100],
              child:  Padding(
                padding: EdgeInsets.all(20), 
                child: Text(
                  menuName[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              )  ,
            )
          ),
          SizedBox(width: 20),
          Expanded(
            child:FlatButton(
              onPressed: () => menuSwitch(context, index),
              color: Colors.blue[100],
              child:  Padding(
                padding: EdgeInsets.all(20), 
                child: Text(
                  menuName[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              )  ,
            )
          ),
          SizedBox(width: 20),
          Expanded(
            child:FlatButton(
              onPressed: () => menuSwitch(context, index),
              color: Colors.blue[100],
              child:  Padding(
                padding: EdgeInsets.all(20), 
                child: Text(
                  menuName[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              )  ,
            )
          )
        ],
      ),
    );
  }

  Widget cardCreate(context, index){
    return Container(
      
      width: (MediaQuery.of(context).size.width / 2),
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: GestureDetector(
          onTap: () => menuSwitch(context, index),
          child: Container(
            
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
          child:  Padding(
            padding: EdgeInsets.all(20), 
            child: Text(
              menuName[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
        ) 
      ), 
    );
    
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //   body: Container(
  //    padding: EdgeInsets.only(
  //      top: 60,
  //      left: 40,
  //      right: 40,
  //    ),
  //     color: Colors.white,
  //     child: ListView(
  //       children: <Widget>[
  //         SizedBox(
  //           height: 10,
  //         ),
  //         Container(
  //           height: 150,
  //           alignment: Alignment.topLeft,
  //           decoration: BoxDecoration(
  //               color: Colors.blue[100],
  //               borderRadius: BorderRadius.all(
  //               Radius.circular(10),
  //                 ),
  //           ),
  //           child: SizedBox.expand(
  //             child: FlatButton(
  //               child: Container(
  //                         child: Text(
  //                         "Sobre Nós",
  //                         style: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white,
  //                           fontSize: 20,
  //                         ),
  //                         textAlign: TextAlign.left,
  //                       ),
  //                       ),
  //             onPressed: () {
  //                 Navigator.push(
  //                   context, 
  //                   MaterialPageRoute(
  //                     builder: (context) => AboutPage(),
  //                   ),
  //                );
  //             },
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           height: 10,
  //         ),
  //         Container(
  //           height: 150,
  //           alignment: Alignment.topLeft,
  //           decoration: BoxDecoration(
  //               color: Colors.blue[200],
  //               borderRadius: BorderRadius.all(
  //               Radius.circular(10),
  //                 ),
  //           ),
  //           child: SizedBox.expand(
  //             child: FlatButton(
  //               child: Container(
  //                         child: Text(
  //                         "Nossos Serviços",
  //                         style: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white,
  //                           fontSize: 20,
  //                         ),
  //                         textAlign: TextAlign.left,
  //                       ),
  //                       ),
  //             onPressed: () {
  //                 Navigator.push(
  //                   context, 
  //                   MaterialPageRoute(
  //                     builder: (context) => ServicesPage(),
  //                   ),
  //                );
  //             },
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //             height: 10,
  //         ),
  //         Container(
  //           height: 150,
  //           alignment: Alignment.topLeft,
  //           decoration: BoxDecoration(
  //               color: Colors.blue[300],
  //               borderRadius: BorderRadius.all(
  //               Radius.circular(10),
  //                 ),
  //           ),
  //           child: SizedBox.expand(
  //             child: FlatButton(
  //               child: Container(
  //                         child: Text(
  //                         "Fale Conosco",
  //                         style: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white,
  //                           fontSize: 20,
  //                         ),
  //                         textAlign: TextAlign.left,
  //                       ),
  //                       ),
  //             onPressed: () {
  //                 Navigator.push(
  //                   context, 
  //                   MaterialPageRoute(
  //                     builder: (context) => ContactsPage(),
  //                   ),
  //                );
  //             },
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //             height: 10,
  //         ),
  //         Container(
  //           height: 150,
  //           alignment: Alignment.topLeft,
  //           decoration: BoxDecoration(
  //               color: Colors.blue[500],
  //               borderRadius: BorderRadius.all(
  //               Radius.circular(10),
  //                 ),
  //           ),
  //           child: SizedBox.expand(
  //             child: FlatButton(
  //               child: Container(
  //                         child: Text(
  //                         "Deseja se Cadastrar?",
  //                         style: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white,
  //                           fontSize: 20,
  //                         ),
  //                         textAlign: TextAlign.left,
  //                       ),
  //                       ),
  //             onPressed: () {
  //                 Navigator.push(
  //                   context, 
  //                   MaterialPageRoute(
  //                     builder: (context) => RegisterPage(),
  //                   ),
  //                );
  //             },
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //             height: 10,
  //         ),
  //         Container(
  //           height: 150,
  //           alignment: Alignment.topLeft,
  //           decoration: BoxDecoration(
  //               color: Colors.blue[700],
  //               borderRadius: BorderRadius.all(
  //               Radius.circular(5),
  //                 ),
  //           ),
  //           child: SizedBox.expand(
  //             child: FlatButton(
  //               child: Container(
  //                         child: Text(
  //                         "Procurando Alguém?",
  //                         style: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white,
  //                           fontSize: 20,
  //                         ),
  //                         textAlign: TextAlign.left,
  //                       ),
  //                       ),
  //             onPressed: () {
  //                 Navigator.push(
  //                   context, 
  //                   MaterialPageRoute(
  //                     builder: (context) => ClientsPage(),
  //                   ),
  //                );
  //             },
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //             height: 10,
  //         ),
  //       ],
  //     ),
  //   ),
  // ) ;
  // }
}