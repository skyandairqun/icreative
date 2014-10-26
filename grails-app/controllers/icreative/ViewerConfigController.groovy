package icreative

import org.springframework.dao.DataIntegrityViolationException

class ViewerConfigController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }


    def list() {
        if (params.get("sort")==null||params.get("sort").equals("")||params.get("order")==null||params.get("order").equals("")){
            params.put("sort","lastUpdated");
            params.put("order","desc");
        }
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [viewerConfigInstanceList: ViewerConfig.list(params), viewerConfigInstanceTotal: ViewerConfig.count()]
    }

    def create() {
        [viewerConfigInstance: new ViewerConfig(params)]
    }

    def save() {
        def viewerConfigInstance = new ViewerConfig(params)
        if (!viewerConfigInstance.save(flush: true)) {
            render(view: "create", model: [viewerConfigInstance: viewerConfigInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), viewerConfigInstance.id])
        redirect(action: "show", id: viewerConfigInstance.id)
    }

    def show() {
        def viewerConfigInstance = ViewerConfig.get(params.id)
        if (!viewerConfigInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), params.id])
            redirect(action: "list")
            return
        }

        [viewerConfigInstance: viewerConfigInstance]
    }

    def edit() {
        def viewerConfigInstance = ViewerConfig.get(params.id)
        if (!viewerConfigInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), params.id])
            redirect(action: "list")
            return
        }

        [viewerConfigInstance: viewerConfigInstance]
    }

    def update() {
        def viewerConfigInstance = ViewerConfig.get(params.id)
        if (!viewerConfigInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (viewerConfigInstance.version > version) {
                viewerConfigInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'viewerConfig.label', default: 'ViewerConfig')] as Object[],
                        "Another user has updated this ViewerConfig while you were editing")
                render(view: "edit", model: [viewerConfigInstance: viewerConfigInstance])
                return
            }
        }

        viewerConfigInstance.properties = params

        if (!viewerConfigInstance.save(flush: true)) {
            render(view: "edit", model: [viewerConfigInstance: viewerConfigInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), viewerConfigInstance.id])
        redirect(action: "show", id: viewerConfigInstance.id)
    }

    def delete() {
        def viewerConfigInstance = ViewerConfig.get(params.id)
        if (!viewerConfigInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), params.id])
            redirect(action: "list")
            return
        }

        try {
            viewerConfigInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'viewerConfig.label', default: 'ViewerConfig'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
