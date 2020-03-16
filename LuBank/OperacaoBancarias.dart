import 'CartaoCredito.dart';
import 'Cliente.dart';
import 'Conta.dart';


class OperacaoBancarias{
  Cliente _cliente;
  CartaoCredito _cartaoCredito;
  Conta _LuConta;

  OperacaoBancarias(this._cliente);

  bool AbirCartaoCredito(){
      if(this._cliente.Salario > 500){
        this._cartaoCredito = new CartaoCredito(_cliente);
        return true;
      }else{
        return false;
      }
  }

  bool AbrirConta(){
    return false;
  }

  CartaoCredito get OperacaoCartaoCredito{
    return this._cartaoCredito;
  }



}