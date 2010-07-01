package coordenador

class CoordenadorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [coordenadorInstanceList: Coordenador.list(params), coordenadorInstanceTotal: Coordenador.count()]
    }

    def create = {
        def coordenadorInstance = new Coordenador()
        coordenadorInstance.properties = params
        return [coordenadorInstance: coordenadorInstance]
    }

    def save = {
        def coordenadorInstance = new Coordenador(params)
        if (coordenadorInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), coordenadorInstance.id])}"
            redirect(action: "show", id: coordenadorInstance.id)
        }
        else {
            render(view: "create", model: [coordenadorInstance: coordenadorInstance])
        }
    }

    def show = {
        def coordenadorInstance = Coordenador.get(params.id)
        if (!coordenadorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), params.id])}"
            redirect(action: "list")
        }
        else {
            [coordenadorInstance: coordenadorInstance]
        }
    }

    def edit = {
        def coordenadorInstance = Coordenador.get(params.id)
        if (!coordenadorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [coordenadorInstance: coordenadorInstance]
        }
    }

    def update = {
        def coordenadorInstance = Coordenador.get(params.id)
        if (coordenadorInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (coordenadorInstance.version > version) {
                    
                    coordenadorInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'coordenador.label', default: 'Coordenador')] as Object[], "Another user has updated this Coordenador while you were editing")
                    render(view: "edit", model: [coordenadorInstance: coordenadorInstance])
                    return
                }
            }
            coordenadorInstance.properties = params
            if (!coordenadorInstance.hasErrors() && coordenadorInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), coordenadorInstance.id])}"
                redirect(action: "show", id: coordenadorInstance.id)
            }
            else {
                render(view: "edit", model: [coordenadorInstance: coordenadorInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def coordenadorInstance = Coordenador.get(params.id)
        if (coordenadorInstance) {
            try {
                coordenadorInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'coordenador.label', default: 'Coordenador'), params.id])}"
            redirect(action: "list")
        }
    }
}
