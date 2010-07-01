package funcionario

class Funcionario {
    String nome
    String sobrenome
    String senha
    String matricula
    String hashSenha

    static constraints = {
        nome(blank:false)
        sobrenome(blank:false)
        senha(blank:false)
        matricula(blank:false)
       }
        void setSenha(String valor){
        this.senha = valor;
        if (valor != null) this.hashSenha = valor.encodeAsPassword()

    }
  
}
