package monitor

class Monitor {
    String nome//?, matricula, curso, email, celular, telFixo, disciplina, unidade, codigoDoProjeto, professorOrientador
    String sobrenome
    String matricula
    String curso
    String cpf
    String email
    String Identidade
    String celular
    String telFixo
    String login
    String senha
    String filiacao
    String disciplina
    String unidade
    String codigoDoProjeto
    String professorOrientador
    String periodosMonitorVoluntario
    String periodosMonitorBolsista
    String avalicaoComplementar
    boolean sexo
    float notaDisciplina, cra, notaObtida, mediaFinal
    int classificacao

    // falta colocar métodos
    //ainda não sei como funciona os métodos nessa linguagem
    //depois tenho que parar pra pesquisar.
    static constraints = {
        nome(blank:false)
        sobrenome(blank:false)
        matricula(blank:false)
        curso(blank:false)
        cpf(blank:false)
        email(email:true)
        identidade(blank:false)
        login(blank:false)
        senha(blank:false)
        

    }
}
