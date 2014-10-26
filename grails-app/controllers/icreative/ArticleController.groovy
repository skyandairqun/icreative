package icreative

import icreative.utils.Permalink
import org.springframework.dao.DataIntegrityViolationException

class ArticleController {

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
        if (authenticationService.isLoggedIn(request)) {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            [articleInstanceList: Article.list(params), articleInstanceTotal: Article.count()]
        } else {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            [articleInstanceList: Article.findAllByType("News", params), articleInstanceTotal: Article.countByType("News")]
        }

    }

    def alist() {
        if (authenticationService.isLoggedIn(request)) {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            [articleInstanceList: Article.list(params), articleInstanceTotal: Article.count()]
        } else {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            [articleInstanceList: Article.findAllByType("News", params), articleInstanceTotal: Article.countByType("News")]
        }

    }

    def create() {
        [articleInstance: new Article(params)]
    }

    def save() {
        def articleInstance = new Article(params)
        def permalink = Permalink.generatePerlink("article", "a", articleInstance.title);
        print(permalink);
        def count = Article.countByPerlinkLike(permalink + "%");
        print(count + " here is the count of " + permalink)
        if (count > 0) {
            permalink = permalink + "_" + count;
        }
        articleInstance.perlink = permalink;
        articleInstance.createUser = authenticationService.getSessionUser().login;
        articleInstance.lastUpdateUser = authenticationService.getSessionUser().login;
        if (!articleInstance.save(flush: true)) {
            render(view: "create", model: [articleInstance: articleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'article.label', default: 'Article'), articleInstance.id])
        redirect(action: "show", id: articleInstance.id)
    }

    def detail() {
        print(params.get("id"));
        def perlink = params.get("id");
        def articleInstance = Article.findByPerlink("article/detail/" + perlink);
        print(perlink);
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'Article.label', default: 'Article'), params.perlink])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    def a() {
        print(params.get("id"));
        def perlink = params.get("id");
        def articleInstance = Article.findByPerlink("article/a/" + perlink);
        print(perlink);
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'Article.label', default: 'Article'), params.perlink])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    def show() {
        def articleInstance = Article.get(params.id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), params.id])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    def edit() {
        def articleInstance = Article.get(params.id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), params.id])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    def update() {
        def articleInstance = Article.get(params.id);

        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (articleInstance.version > version) {
                articleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'article.label', default: 'Article')] as Object[],
                        "Another user has updated this Article while you were editing")
                render(view: "edit", model: [articleInstance: articleInstance])
                return
            }
        }

        articleInstance.properties = params
        articleInstance.lastUpdateUser = authenticationService.getSessionUser().login;
        if (!articleInstance.save(flush: true)) {
            render(view: "edit", model: [articleInstance: articleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'article.label', default: 'Article'), articleInstance.id])
        redirect(action: "show", id: articleInstance.id)
    }

    def delete() {
        def articleInstance = Article.get(params.id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), params.id])
            redirect(action: "list")
            return
        }

        try {
            articleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'article.label', default: 'Article'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'article.label', default: 'Article'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
