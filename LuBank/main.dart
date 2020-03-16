import 'Cliente.dart';
import 'OperacaoBancarias.dart';

main(){
  Cliente cliente = new Cliente("Gold",1.200, 2.900);
  OperacaoBancarias conta1 = new OperacaoBancarias(cliente);
  print(conta1.AbirCartaoCredito());
  print(conta1.OperacaoCartaoCredito.Compra(500));
  print(conta1.OperacaoCartaoCredito.FaturaAtual);
}