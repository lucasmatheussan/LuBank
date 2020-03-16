
import 'CartaoCredito.dart';
import 'Cliente.dart';

main(){
  Cliente cliente1 = new Cliente("Lucas Matheus", "05/12/1999", "1", "111287", "Senha", "Gold", 1200, 900);
  CartaoCredito visa = new CartaoCredito(cliente1);
  print(cliente1.LimiteCredito);
  visa.Comprar(400);
  visa.Comprar(600);
  print(visa.FaturaAtual);
  visa.PagarFatura(1400);
  print(visa.LimiteDisponivel);
  visa.Comprar(1600);
  visa.AumentarLimite();
  print(cliente1.LimiteCredito);
}