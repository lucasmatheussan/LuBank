import 'usuario.dart';

class Cliente extends Usuario{
    
    var _TipoDeConta;
    double _LimiteCredito;
    double _Salario;
    double _TotalGasto;

    Cliente(this._TipoDeConta, this._LimiteCredito, this._Salario);

    void set TipoConta(var TipoConta){
        this._TipoDeConta = TipoConta;
    }
    String get TipoConta{
       return this._TipoDeConta;
    }

    double get LimiteCredito{
        this._LimiteCredito = (this._Salario * _TotalGasto)/12;
        return this._LimiteCredito;
    }

    void set Salario(double Salario){
      this._Salario = Salario;
    }
    double get Salario{
      return this._Salario;
    }

    double get TotalGasto{
      return this._TotalGasto;
    }

    void set TsotalGasto(double Transacao){
      if(Transacao == 0){
        this._TotalGasto = 0;
      }else{
        this._TotalGasto += Transacao;
      }
    }
    
}