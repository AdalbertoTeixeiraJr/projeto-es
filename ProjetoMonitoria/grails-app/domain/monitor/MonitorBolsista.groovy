package monitor

/*
 *Temos que começar a fazer os java docs de cada classe, senão vai ficar muito dificil, fazer tudo depois,
 *vamos documentar.
*/
class MonitorBolsista extends Monitor{
    String contacorrente
    String agencia
    
    static constraints = {
        contacorrente(blank:false)
        agencia(blank:false)
    }
}
