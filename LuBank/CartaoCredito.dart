import 'Cliente.dart';

class CartaoCredito{

  Cliente _Cliente;
  double _LimiteDisponivel;
  double _FaturaAtual;

  CartaoCredito(this._Cliente){
     this._LimiteDisponivel = _Cliente.LimiteCredito;
  }

  double get LimiteDisponivel => _LimiteDisponivel;
  
  double get FaturaAtual => _FaturaAtual;

  bool Comprar(double valor){
      if(this._LimiteDisponivel >= valor){
          this._LimiteDisponivel -= valor;
          this._FaturaAtual += valor;
          return true;
      }else{
          return false;
      }
  }

  void PagarFatura(double valor){
    this._LimiteDisponivel += valor;
    this._FaturaAtual -= valor;
    if(this._FaturaAtual < 0){
      this._FaturaAtual = 0;
    }
  }

  void AumentarLimite(){
    this._LimiteDisponivel = this._Cliente.AumentarLimiteCredito();
  }
}