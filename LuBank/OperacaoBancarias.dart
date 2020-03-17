import 'CartaoCredito.dart';
import 'Cliente.dart';
import 'LuConta.dart';

class OperacaoBancarias{
  Cliente _cliente;
  CartaoCredito _cartaoCredito;
  LuConta _LuConta;

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

  bool ObterContaBancaria(var conta){
    if(this._cliente.Salario >= 500){
      this._cliente.TipoConta = "Gold";
    }
    this._LuConta = new LuConta(this._cliente, conta);
    return true;
  }

}
