package professor
/*
 *Temos que começar a fazer os java docs de cada classe, senão vai ficar muito dificil, fazer tudo depois,
 *vamos documentar.
*/
class Professor {
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
    static transients = ['senha']
}
