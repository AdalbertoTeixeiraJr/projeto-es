package coordenador

class Coordenador {
String nome
    String sobrenome
    String email
    String senha
    String matricula
    String disciplina
    String hashSenha

    static constraints = {
        nome(blank:false)
        sobrenome(blank:false)
        email(email:true)
        senha(blank:false)
        matricula(blank:false)
        disciplina(blank:false)
    }
        void setSenha(String valor){
        this.senha = valor;
        if (valor != null) this.hashSenha = valor.encodeAsPassword()

    }
}
