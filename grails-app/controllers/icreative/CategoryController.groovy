package icreative

import org.springframework.dao.DataIntegrityViolationException
import icreative.utils.Permalink

class CategoryController {

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
        [categoryInstanceList: Category.list(params), categoryInstanceTotal: Category.count()]
    }

    def create() {
        [categoryInstance: new Category(params)]
    }

    def save() {
        print("tst");
        def categoryInstance = new Category(params)
        categoryInstance.lastUpdateUser = "sysAdmin";
        def permalink = Permalink.generatePerlink("category","c", categoryInstance.display_value.toString());
        print(params.get("orderLevel"));
        print(categoryInstance.orderLevel);
        def count = Category.countByPerlinkLike(permalink + "%");

        if (count > 0) {
            permalink = permalink + "_" + count;
        }
        categoryInstance.perlink = permalink;

        categoryInstance.lastUpdateUser = authenticationService.getSessionUser().login;
        categoryInstance.createUser = authenticationService.getSessionUser().login;

        if (!categoryInstance.save(flush: true)) {
            render(view: "create", model: [categoryInstance: categoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "show", id: categoryInstance.id)
    }
    /* def detail() {
         print(params.get("id"))                  ;
         def permalink=params.get("id");
         def categoryInstance = Category.findByPerlink("category/detail/"+permalink);
         print(permalink) ;
         if (!categoryInstance) {
             flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.perlink])
             redirect(action: "list")
             return
         }

         [categoryInstance: categoryInstance]
     }*/

    def detail() {
        print(params.get("id"));
        def permalink = params.get("id");
        def categoryInstance = Category.findByPerlink("category/detail/" + permalink);
        print(permalink);
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.perlink])
            redirect(action: "list")
            return
        }
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productInstanceList: categoryInstance.getProducts(), productInstanceTotal: categoryInstance.getProducts().size(), categoryInstance: categoryInstance]
    }

    def c() {
        def permalink = params.get("id");
        if (permalink){
            session.setAttribute("category_name", permalink);

        } else
        {
            permalink=session.getAttribute("category_name")
            print("uri is "+permalink)
            //  redirect(uri: "/category/c/"+permalink)
        }
        print("category  and permalink is "+permalink)
        def categoryInstance = Category.findByPerlink("category/c/"+permalink);
        print(permalink);
//        print(params.get("id"));
//        def permalink = params.get("id");
//        def categoryInstance = Category.findByPerlink("category/c/"+permalink);
//        print(permalink);
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.perlink])
            redirect(action: "list")
            return
        }
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        params.put("sort","orderLevel");
        params.put("order","desc");
//
//        print("----------------------start params-----------------------------"+Product.findAllByCategory(categoryInstance,params).size())
//        for(Product pro : Product.findAllByCategory(categoryInstance,params)){
//              print(pro.getOrderLevel())
//        }
//        print("----------------------start all-----------------------------"+Product.findAllByCategory(categoryInstance).size())
//        for(Product pro : Product.findAllByCategory(categoryInstance)){
//            print(pro.getOrderLevel())
//        }

        [productInstanceList: Product.findAllByCategory(categoryInstance,params), productInstanceTotal: categoryInstance.getProducts().size(), categoryInstance: categoryInstance]
    }

    def show() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
            return
        }
        [categoryInstance: categoryInstance]
    }

    def edit() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
            return
        }

        [categoryInstance: categoryInstance]
    }

    def update() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (categoryInstance.version > version) {
                categoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'category.label', default: 'Category')] as Object[],
                        "Another user has updated this Category while you were editing")
                render(view: "edit", model: [categoryInstance: categoryInstance])
                return
            }
        }

        categoryInstance.properties = params

        categoryInstance.lastUpdateUser = authenticationService.getSessionUser().login;
        categoryInstance.createUser = authenticationService.getSessionUser().login;


        def permalink = Permalink.generatePerlink( "category","c",categoryInstance.display_value.toString());

        categoryInstance.setPerlink(permalink)  ;
        if (!categoryInstance.save(flush: true)) {
            render(view: "edit", model: [categoryInstance: categoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "show", id: categoryInstance.id)
    }

    def delete() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
            return
        }

        try {
            categoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
