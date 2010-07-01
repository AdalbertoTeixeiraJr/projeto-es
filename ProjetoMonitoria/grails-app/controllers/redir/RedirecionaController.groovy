package redir

class RedirecionaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def login = {
    	 def login = params["login"]
         def senha = params.senha
         def coordenador = Coordenador.findByLoginAndHashSenha(login, senha.encodeAsPassword())
         def monitor = Monitor.findByLoginAndHashSenha(login, senha.encodeAsPassword())
         def professor = Professor.findByLoginAndHashSenha(login, senha.encodeAsPassword())

         if (coordenador){
         	 session["coordenador"] = coordenador
         	 redirect(action:"index",controller:"coordenador")

         }else if (monitor){
         	 session["monitor"] = monitor
         	 redirect(action:"index",controller:"monitor")

         } else if (professor){
         	 session["professor"] = professor
         	 redirect(action:"index",controller:"professor")

         }else render("Usuário nao encontrado no sistema.")
    }

}
