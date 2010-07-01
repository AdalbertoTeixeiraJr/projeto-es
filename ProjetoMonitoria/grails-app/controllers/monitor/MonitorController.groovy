package monitor

class MonitorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "homeMonitor.gsp", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [monitorInstanceList: Monitor.list(params), monitorInstanceTotal: Monitor.count()]
    }

    def create = {
        def monitorInstance = new Monitor()
        monitorInstance.properties = params
        return [monitorInstance: monitorInstance]
    }

    def save = {
        def monitorInstance = new Monitor(params)
        if (monitorInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'monitor.label', default: 'Monitor'), monitorInstance.id])}"
            redirect(action: "show", id: monitorInstance.id)
        }
        else {
            render(view: "create", model: [monitorInstance: monitorInstance])
        }
    }

    def show = {
        def monitorInstance = Monitor.get(params.id)
        if (!monitorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitor.label', default: 'Monitor'), params.id])}"
            redirect(action: "list")
        }
        else {
            [monitorInstance: monitorInstance]
        }
    }

    def edit = {
        def monitorInstance = Monitor.get(params.id)
        if (!monitorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitor.label', default: 'Monitor'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [monitorInstance: monitorInstance]
        }
    }

    def update = {
        def monitorInstance = Monitor.get(params.id)
        if (monitorInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (monitorInstance.version > version) {
                    
                    monitorInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'monitor.label', default: 'Monitor')] as Object[], "Another user has updated this Monitor while you were editing")
                    render(view: "edit", model: [monitorInstance: monitorInstance])
                    return
                }
            }
            monitorInstance.properties = params
            if (!monitorInstance.hasErrors() && monitorInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'monitor.label', default: 'Monitor'), monitorInstance.id])}"
                redirect(action: "show", id: monitorInstance.id)
            }
            else {
                render(view: "edit", model: [monitorInstance: monitorInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitor.label', default: 'Monitor'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def monitorInstance = Monitor.get(params.id)
        if (monitorInstance) {
            try {
                monitorInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'monitor.label', default: 'Monitor'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'monitor.label', default: 'Monitor'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitor.label', default: 'Monitor'), params.id])}"
            redirect(action: "list")
        }
    }

    def verificar = {
        def matricula = params["matricula"]
        def matriculaMonitor = Monitor.findByMatricula(matricula)
        if (!(matriculaMonitor== matricula)) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitor.label', default: 'Monitor'), params.matricula])}"
            redirect(action: "procuraMatricula.gsp")
        }
        else {
            redirect(action: "cadastro.gsp")
        }
    }
}
