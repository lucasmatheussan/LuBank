import 'usuario.dart';

class Cliente extends Usuario{
    
    var _TipoDeConta;
    double _LimiteCredito;
    double _Salario;
    double _TotalGasto;

    Cliente (var Nome, var DataNascimento, var Nivel, var cpf, var Senha ,this._TipoDeConta, this._LimiteCredito, this._Salario) : super (cpf, DataNascimento, Nivel, Nome, Senha);

    void set TipoConta(var TipoConta){
        this._TipoDeConta = TipoConta;
    }
    String get TipoConta{
       return this._TipoDeConta;
    }

    double  AumentarLimiteCredito(){
        this._LimiteCredito = (this._Salario * _TotalGasto)/12;
        if(this._TipoDeConta == "Gold"){
          this._LimiteCredito = (this._LimiteCredito * 0.10); 
        }
        return this._LimiteCredito;
    }

    double get LimiteCredito{
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

    void  sTotalGasto(double Transacao){
      if(Transacao == 0 || this.TotalGasto == null){
        this._TotalGasto = 0;
      }else{
        this._TotalGasto += Transacao;
      }
    }
    
}