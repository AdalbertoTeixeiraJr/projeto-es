package monitor

class MonitorBolsista extends Monitor{
    String contacorrente
    String agencia
    
    static constraints = {
        contacorrente(blank:false)
        agencia(blank:false)
    }
}
