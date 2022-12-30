import 'package:mobx/mobx.dart';
part 'principal_controller.g.dart';

class PrincipalController = PrincipalControllerBase with _$PrincipalController;
abstract class PrincipalControllerBase with Store {
  
  @observable
  String item = "";

  @action
  void setItem(String valor) => item = valor;
  
  ObservableList<String> listaItem = ObservableList();

  @action 
  listar(){
    listaItem.add(item);
    print(item);
  }

}
