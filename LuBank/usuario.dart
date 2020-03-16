class Usuario{

    var _Nome;
    var _DataNascimento;
    var _Nivel;
    var _cpf;
    var _Senha;

    Usuario(this._cpf, this._DataNascimento, this._Nivel, this._Nome, this._Senha);
    
    void set Nome(var Nome){
      this._Nome = Nome;
    }
    String get Nome{
      return this._Nome;
    }

    void set DataNascimento(var DataNascimento){
      this._DataNascimento = DataNascimento;
    }
    String get DataNascimento{
      return this._DataNascimento;
    }

    void set Nivel(var nivel){
      this._Nivel = nivel;
    }
    String get Nivel{
      return this._Nivel;
    }

    void set CPF(var CPF){
      this._cpf = CPF;
    }
    String get CPF{
      return this._cpf;
    }

    void set Senha(var senha){
      this._Senha = senha;
    }
    String get Senha{
      return this._Senha;
    }
}