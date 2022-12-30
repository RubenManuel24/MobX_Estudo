import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_aula/controller.dart';
import 'package:mobx_aula/principal.dart';
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
ReactionDisposer? reactionDisposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
     
     //autorun((_){
       //print(controller.validarCampos);
     //});

    reactionDisposer = reaction(
      (_)=> controller.logado, 
      (usuarioLogado){
       if(usuarioLogado == true){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => Principal())
          );
       }
      }
      );
  }

  @override
  void dispose() {
    super.dispose();
    reactionDisposer!();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
        children: [
          /*
          Padding(
            padding: EdgeInsets.all(25),
            child: Observer(
              builder: (_){
                return Text("",
                  style: TextStyle(
                  fontSize: 30
                 ),
               );
              })
            ),
            */
            Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email"
              ),
              onChanged: controller.setEmail,
            )
            ),
            Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Senha"
              ),
              onChanged: controller.setSenha,
            )
            ),
             Padding(
            padding: EdgeInsets.all(16),
            child: Observer(
              builder: (_){
                return Text( 
                  controller.validarCampos
                  ? "* Campos válidos!" 
                  : "* Campos não válidos!" 
                  
              );
              })
            ),
            Padding(
            padding: EdgeInsets.all(16),
            child: Observer(
              builder: (_){
                return TextButton(
              onPressed: controller.validarCampos
                  ? (){controller.logar();}
                  : null,
              child: controller.carregar 
                  ? CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.white),)
                  : Text("Logar",
                     style: TextStyle(
                     color: Colors.white
                     ),
                  ),
              style: TextButton.styleFrom(backgroundColor : 
                 controller.validarCampos
                  ?  Colors.deepPurple
                  :  Colors.red
                ),
              );
              })
            )
        ],),
       ),
    );
  }
}