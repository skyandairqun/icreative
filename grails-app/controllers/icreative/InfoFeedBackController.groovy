package icreative

import org.springframework.dao.DataIntegrityViolationException

class InfoFeedBackController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {

        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [infoFeedBackInstanceList: InfoFeedBack.list(params), infoFeedBackInstanceTotal: InfoFeedBack.count()]
    }

    def create() {
        for (String key : params.keySet()) {
            println(key + ":" + params.get(key));
        }
        [infoFeedBackInstance: new InfoFeedBack(params)]
    }

    def save() {
        def infoFeedBackInstance = new InfoFeedBack(params)
        if (!infoFeedBackInstance.save(flush: true)) {
            render(view: "create", model: [infoFeedBackInstance: infoFeedBackInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'infoFeedBack.label', default: 'InfoFeedBack'), infoFeedBackInstance.id])
        redirect(action: "show", id: infoFeedBackInstance.id)
    }

    def show() {
        def infoFeedBackInstance = InfoFeedBack.get(params.id)
        if (!infoFeedBackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'infoFeedBack.label', default: 'InfoFeedBack'), params.id])
            redirect(action: "list")
            return
        }

        [infoFeedBackInstance: infoFeedBackInstance]
    }

    def edit() {
        def infoFeedBackInstance = InfoFeedBack.get(params.id)
        if (!infoFeedBackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'infoFeedBack.label', default: 'InfoFeedBack'), params.id])
            redirect(action: "list")
            return
        }

        redirect(action: "show", id: infoFeedBackInstance.id)
    }

    def update() {
        def infoFeedBackInstance = InfoFeedBack.get(params.id)
        if (!infoFeedBackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'infoFeedBack.label', default: 'InfoFeedBack'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (infoFeedBackInstance.version > version) {
                infoFeedBackInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'infoFeedBack.label', default: 'InfoFeedBack')] as Object[],
                        "Another user has updated this InfoFeedBack while you were editing")
                render(view: "edit", model: [infoFeedBackInstance: infoFeedBackInstance])
                return
            }
        }

        infoFeedBackInstance.properties = params

        if (!infoFeedBackInstance.save(flush: true)) {
            render(view: "edit", model: [infoFeedBackInstance: infoFeedBackInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'infoFeedBack.label', default: 'InfoFeedBack'), infoFeedBackInstance.id])
        redirect(action: "show", id: infoFeedBackInstance.id)
    }

    def delete() {
        def infoFeedBackInstance = InfoFeedBack.get(params.id)
        if (!infoFeedBackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'infoFeedBack.label', default: 'InfoFeedBack'), params.id])
            redirect(action: "list")
            return
        }

        redirect(action: "show", id: infoFeedBackInstance.id)


    }
}
