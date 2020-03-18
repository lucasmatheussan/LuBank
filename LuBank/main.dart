import 'Cliente.dart';
import 'OperacaoBancarias.dart';

main(){
  Cliente cliente1 = new Cliente("Lucas Matheus", "05/12/1999", "1", "1111", "senha", "normal", 1200, 1600);
  List<Cliente> cliente = new List();
  cliente.add(cliente1);
  print(cliente[0].CPF);
  

}