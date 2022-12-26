import 'package:mobx/mobx.dart';
part 'controller.g.dart';

 class Controller = ControllerBase with _$Controller;

//a utilizacao do mixin Store é para geracao dos codigos automaticos
abstract class ControllerBase with Store {
  
  @observable
  int contador = 0;

  @action
  incrementar(){
    contador++;
  }

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
