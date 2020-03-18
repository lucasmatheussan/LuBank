import 'Cliente.dart';

class LuConta{
  Cliente _Cliente;
  var _Conta;
  double _Saldo;
  double _Devedor;
  static final String _Agencia = "08702";

  LuConta(this._Cliente,this._Conta){
    this._Saldo =0;
    this._Devedor = 0;
  }

  void Deposito(double valor){
    this._Saldo += valor;
  }

  bool Saque(double valor){
     if(this._Saldo >=valor){
       this._Saldo -= valor;
       return true;
     }else{
       return false;
     }
  }

  bool Pagamento(double valor, var codigo_de_barras){
    if(this._Saldo >= valor){
      this._Saldo -= valor;
      return true;
    }else{
      return false;
    }
  }
  
  double get Saldo{
    return this._Saldo;
  }
}