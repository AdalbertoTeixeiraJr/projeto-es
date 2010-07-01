package redir

class RedirecionaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def login = {
    	 def matricula = params["matricula"]
         def senha = params.senha
         //def coordenador = Coordenador.findByLoginAndHashSenha(matricula, senha.encodeAsPassword())
         def monitor = Monitor.findByMatriculaAndHashSenha(matricula, senha.encodeAsPassword())
         def professor = Professor.findByMatriculAndHashSenha(matricula, senha.encodeAsPassword())

//         if (coordenador){
//         	 session["coordenador"] = coordenador
//         	 redirect(action:"index",controller:"coordenador")
//
//         }else

        if (monitor){
         	 session["monitor"] = monitor
         	 redirect(action:"index",controller:"monitor")

         } else if (professor){
         	 session["professor"] = professor
         	 redirect(action:"index",controller:"professor")

         }else render("Usuário nao encontrado no sistema.")
    }

}
