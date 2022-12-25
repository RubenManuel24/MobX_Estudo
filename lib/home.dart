import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_aula/controller.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
// int _contador = 0;
// _mudarDeEstado(){
// setState(() {
// _contador++;
// });
// }

Controller controller = Controller();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Observer(
              builder: (_){
                return Text("${controller.getContador}",
                  style: TextStyle(
                  fontSize: 30
                 ),
               );
              })
            ),
            Padding(
            padding: EdgeInsets.all(16),
            child: TextButton(
              onPressed: (){
                controller.incrementar();
              }, 
              child: Text("Adicionar",
              style: TextStyle(
              color: Colors.white
            ),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
              )
            )
        ],),
       ),
    );
  }
}