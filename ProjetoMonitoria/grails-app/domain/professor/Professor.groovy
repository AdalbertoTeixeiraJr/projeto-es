package professor

class Professor {
    String nome
    String sobrenome
    String email
    String login
    String senha
    String matricula
    String disciplina
    
    static constraints = {
        nome(blank:false)
        sobrenome(blank:false)
        email(email:true)
        login(blank:false)
        senha(blank:false)
        matricula(blank:false)
        disciplina(blank:false)
    }
}
