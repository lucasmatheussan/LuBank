import 'CartaoCredito.dart';
import 'Cliente.dart';
import 'OperacaoBancarias.dart';

main(){
  Cliente cliente1 = new Cliente("Lucas Matheus", "05/12/1999", "1", "1111", "senha", "normal", 1200, 1600);
  OperacaoBancarias ope1 = new OperacaoBancarias(cliente1);
  print(ope1.ObterCartaoCredito());
  print(ope1.ObterContaBancaria("30827-7"));
  print(ope1)
}