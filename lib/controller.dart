import 'package:mobx/mobx.dart';

class Controller {

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
}
