package icreative

import org.springframework.dao.DataIntegrityViolationException

class SystemConfigurationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [systemConfigurationInstanceList: SystemConfiguration.list(params), systemConfigurationInstanceTotal: SystemConfiguration.count()]
    }

    def create() {
        [systemConfigurationInstance: new SystemConfiguration(params)]
    }

    def save() {
        def systemConfigurationInstance = new SystemConfiguration(params)
        if (!systemConfigurationInstance.save(flush: true)) {
            render(view: "create", model: [systemConfigurationInstance: systemConfigurationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), systemConfigurationInstance.id])
        redirect(action: "show", id: systemConfigurationInstance.id)
    }

    def show() {
        def systemConfigurationInstance = SystemConfiguration.get(params.id)
        if (!systemConfigurationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), params.id])
            redirect(action: "list")
            return
        }

        [systemConfigurationInstance: systemConfigurationInstance]
    }

    def sys() {
        def systemConfigurationInstance = SystemConfiguration.get(params.id)
        if (!systemConfigurationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), params.id])
            redirect(action: "list")
            return
        }

        [systemConfigurationInstance: systemConfigurationInstance]
    }

    def edit() {
        def systemConfigurationInstance = SystemConfiguration.get(params.id)
        if (!systemConfigurationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), params.id])
            redirect(action: "list")
            return
        }

        [systemConfigurationInstance: systemConfigurationInstance]
    }

    def update() {
        def systemConfigurationInstance = SystemConfiguration.get(params.id)
        if (!systemConfigurationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (systemConfigurationInstance.version > version) {
                systemConfigurationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'systemConfiguration.label', default: 'SystemConfiguration')] as Object[],
                        "Another user has updated this SystemConfiguration while you were editing")
                render(view: "edit", model: [systemConfigurationInstance: systemConfigurationInstance])
                return
            }
        }

        systemConfigurationInstance.properties = params

        if (!systemConfigurationInstance.save(flush: true)) {
            render(view: "edit", model: [systemConfigurationInstance: systemConfigurationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), systemConfigurationInstance.id])
        redirect(action: "show", id: systemConfigurationInstance.id)
    }

    def delete() {
        def systemConfigurationInstance = SystemConfiguration.get(params.id)
        if (!systemConfigurationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), params.id])
            redirect(action: "list")
            return
        }

        try {
            systemConfigurationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'systemConfiguration.label', default: 'SystemConfiguration'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
