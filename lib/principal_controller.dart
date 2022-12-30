import 'package:mobx/mobx.dart';
import 'package:mobx_aula/item_controller.dart';
part 'principal_controller.g.dart';

class PrincipalController = PrincipalControllerBase with _$PrincipalController;
abstract class PrincipalControllerBase with Store {
  
  @observable
  String item = "";

  @action
  void setItem(String valor) => item = valor;
  
  ObservableList<ItemController> listaItem = ObservableList<ItemController>();
  //nome: Flutter
  //marcado: true

  @action 
  listar(){
    listaItem.add(ItemController(item));
    //print(item);
  }

}
