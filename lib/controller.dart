import 'package:mobx/mobx.dart';
part 'controller.g.dart';

 class Controller = ControllerBase with _$Controller;

//a utilizacao do mixin Store é para geracao dos codigos automaticos
abstract class ControllerBase with Store {

ControllerBase(){
  //AutoRun é executa sempre que um Observable tiver um estado alterado
   /*
  autorun((_){
    print("AutoRun Email: " +email );
    print("AutoRun Senha: " +senha );
    print("AutoRun EmailSenha: " +emailSenha );

  });
  */
}

@observable
String email = "";

@observable
String senha = "";

@computed
String get emailSenha => "$email - $senha";

@computed
bool get validarCampos => email.length >= 5 && senha.length >= 5;

@action
void setEmail(String valor) => email = valor;

@action
void setSenha(String valor) => senha = valor;


  
  //@observable
  // int contador = 0;

  //@action
  //incrementar(){
   // contador++;
  //}

  /*
  Controller(){
    incrementar = Action(_incrementar);
  }

  var _contador = Observable(0);
  late Action incrementar;

  int get getContador => _contador.value;
  set setContador(int contadorNovo ){
     _contador.value = contadorNovo;
  }


   _incrementar(){
     _contador.value++;
   }
   */
}
