package monitor

class MonitorBolsistaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [monitorBolsistaInstanceList: MonitorBolsista.list(params), monitorBolsistaInstanceTotal: MonitorBolsista.count()]
    }

    def create = {
        def monitorBolsistaInstance = new MonitorBolsista()
        monitorBolsistaInstance.properties = params
        return [monitorBolsistaInstance: monitorBolsistaInstance]
    }

    def save = {
        def monitorBolsistaInstance = new MonitorBolsista(params)
        if (monitorBolsistaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), monitorBolsistaInstance.id])}"
            redirect(action: "show", id: monitorBolsistaInstance.id)
        }
        else {
            render(view: "create", model: [monitorBolsistaInstance: monitorBolsistaInstance])
        }
    }

    def show = {
        def monitorBolsistaInstance = MonitorBolsista.get(params.id)
        if (!monitorBolsistaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), params.id])}"
            redirect(action: "list")
        }
        else {
            [monitorBolsistaInstance: monitorBolsistaInstance]
        }
    }

    def edit = {
        def monitorBolsistaInstance = MonitorBolsista.get(params.id)
        if (!monitorBolsistaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [monitorBolsistaInstance: monitorBolsistaInstance]
        }
    }

    def update = {
        def monitorBolsistaInstance = MonitorBolsista.get(params.id)
        if (monitorBolsistaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (monitorBolsistaInstance.version > version) {
                    
                    monitorBolsistaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'monitorBolsista.label', default: 'MonitorBolsista')] as Object[], "Another user has updated this MonitorBolsista while you were editing")
                    render(view: "edit", model: [monitorBolsistaInstance: monitorBolsistaInstance])
                    return
                }
            }
            monitorBolsistaInstance.properties = params
            if (!monitorBolsistaInstance.hasErrors() && monitorBolsistaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), monitorBolsistaInstance.id])}"
                redirect(action: "show", id: monitorBolsistaInstance.id)
            }
            else {
                render(view: "edit", model: [monitorBolsistaInstance: monitorBolsistaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def monitorBolsistaInstance = MonitorBolsista.get(params.id)
        if (monitorBolsistaInstance) {
            try {
                monitorBolsistaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'monitorBolsista.label', default: 'MonitorBolsista'), params.id])}"
            redirect(action: "list")
        }
    }
}
