package professor

class ProfessorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [professorInstanceList: Professor.list(params), professorInstanceTotal: Professor.count()]
    }

    def create = {
        def professorInstance = new Professor()
        professorInstance.properties = params
        return [professorInstance: professorInstance]
    }

    def save = {
        def professorInstance = new Professor(params)
        if (professorInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'professor.label', default: 'Professor'), professorInstance.id])}"
            redirect(action: "show", id: professorInstance.id)
        }
        else {
            render(view: "create", model: [professorInstance: professorInstance])
        }
    }

    def show = {
        def professorInstance = Professor.get(params.id)
        if (!professorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'professor.label', default: 'Professor'), params.id])}"
            redirect(action: "list")
        }
        else {
            [professorInstance: professorInstance]
        }
    }

    def edit = {
        def professorInstance = Professor.get(params.id)
        if (!professorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'professor.label', default: 'Professor'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [professorInstance: professorInstance]
        }
    }

    def update = {
        def professorInstance = Professor.get(params.id)
        if (professorInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (professorInstance.version > version) {
                    
                    professorInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'professor.label', default: 'Professor')] as Object[], "Another user has updated this Professor while you were editing")
                    render(view: "edit", model: [professorInstance: professorInstance])
                    return
                }
            }
            professorInstance.properties = params
            if (!professorInstance.hasErrors() && professorInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'professor.label', default: 'Professor'), professorInstance.id])}"
                redirect(action: "show", id: professorInstance.id)
            }
            else {
                render(view: "edit", model: [professorInstance: professorInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'professor.label', default: 'Professor'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def professorInstance = Professor.get(params.id)
        if (professorInstance) {
            try {
                professorInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'professor.label', default: 'Professor'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'professor.label', default: 'Professor'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'professor.label', default: 'Professor'), params.id])}"
            redirect(action: "list")
        }
    }
}
