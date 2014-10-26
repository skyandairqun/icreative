package icreative

import org.springframework.dao.DataIntegrityViolationException
import icreative.utils.Permalink

class ProductController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def authenticationService;
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        if (params.get("sort")==null||params.get("sort").equals("")||params.get("order")==null||params.get("order").equals("")){
            params.put("sort","lastUpdated");
            params.put("order","desc");
        }
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productInstanceList: Product.listOrderByLastUpdated(params), productInstanceTotal: Product.count()]
    }

    def plist() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productInstanceListByLevel: Product.listOrderByOrderLevel(params), productInstanceTotal: Product.count()]
            }

    def create() {
        [productInstance: new Product(params)]
    }

    def save() {
        def productInstance = new Product(params)
        productInstance.lastUpdateUser = authenticationService.getSessionUser().login;
        productInstance.createUser = authenticationService.getSessionUser().login;
        def permalink = Permalink.generatePerlink("product", "p", productInstance.name);
        def count = Product.countByPerlinkLike(permalink + "%");
        print(count + " here is the count of " + permalink)
        if (count > 0) {
            permalink = permalink + "_" + count;
        }
        productInstance.perlink = permalink;
        if (!productInstance.save(flush: true)) {
            render(view: "create", model: [productInstance: productInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def show() {
        def productInstance = Product.get(params.id)
        print(params);
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
            return
        }

        [productInstance: productInstance]
    }

    def detail() {
        print(params.get("id"));
        def perlink = params.get("id");
        def productInstance = Product.findByPerlink("product/detail/" + perlink);
        print(perlink);
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.perlink])
            redirect(action: "list")
            return
        }
        [productInstance: productInstance]
    }

    def p() {
        print(params.get("id"));
        def perlink = params.get("id");
        def productInstance = Product.findByPerlink("product/p/" + perlink);
        print(perlink);
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.perlink])
            redirect(action: "list")
            return
        }

        [productInstance: productInstance]
    }

    def edit() {
        def productInstance = Product.get(params.id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
            return
        }

        [productInstance: productInstance]
    }

    def update() {
        def productInstance = Product.get(params.id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (productInstance.version > version) {
                productInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'product.label', default: 'Product')] as Object[],
                        "Another user has updated this Product while you were editing")
                render(view: "edit", model: [productInstance: productInstance])
                return
            }
        }

        productInstance.properties = params

        if (!productInstance.save(flush: true)) {
            render(view: "edit", model: [productInstance: productInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def delete() {
        def productInstance = Product.get(params.id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
            return
        }

        try {
            productInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
