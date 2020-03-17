import 'CartaoCredito.dart';
import 'Cliente.dart';

class OperacaoBancarias{
  Cliente _cliente;
  CartaoCredito _cartaoCredito;

  OperacaoBancarias(this._cliente);

  bool ObterCartaoCredito(){
    if(this._cliente.Salario > 500){
      this._cartaoCredito = new CartaoCredito(this._cliente);
      this._cliente.TipoConta = "Normal";
      if(this._cliente.Salario > 1500){
        this._cliente.TipoConta = "Gold";
      }
      return true;
    }else{
      return false;
  }

}
}