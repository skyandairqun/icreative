package icreative



import org.junit.*
import grails.test.mixin.*

@TestFor(ViewerConfigController)
@Mock(ViewerConfig)
class ViewerConfigControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/viewerConfig/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.viewerConfigInstanceList.size() == 0
        assert model.viewerConfigInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.viewerConfigInstance != null
    }

    void testSave() {
        controller.save()

        assert model.viewerConfigInstance != null
        assert view == '/viewerConfig/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/viewerConfig/show/1'
        assert controller.flash.message != null
        assert ViewerConfig.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/viewerConfig/list'


        populateValidParams(params)
        def viewerConfig = new ViewerConfig(params)

        assert viewerConfig.save() != null

        params.id = viewerConfig.id

        def model = controller.show()

        assert model.viewerConfigInstance == viewerConfig
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/viewerConfig/list'


        populateValidParams(params)
        def viewerConfig = new ViewerConfig(params)

        assert viewerConfig.save() != null

        params.id = viewerConfig.id

        def model = controller.edit()

        assert model.viewerConfigInstance == viewerConfig
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/viewerConfig/list'

        response.reset()


        populateValidParams(params)
        def viewerConfig = new ViewerConfig(params)

        assert viewerConfig.save() != null

        // test invalid parameters in update
        params.id = viewerConfig.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/viewerConfig/edit"
        assert model.viewerConfigInstance != null

        viewerConfig.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/viewerConfig/show/$viewerConfig.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        viewerConfig.clearErrors()

        populateValidParams(params)
        params.id = viewerConfig.id
        params.version = -1
        controller.update()

        assert view == "/viewerConfig/edit"
        assert model.viewerConfigInstance != null
        assert model.viewerConfigInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/viewerConfig/list'

        response.reset()

        populateValidParams(params)
        def viewerConfig = new ViewerConfig(params)

        assert viewerConfig.save() != null
        assert ViewerConfig.count() == 1

        params.id = viewerConfig.id

        controller.delete()

        assert ViewerConfig.count() == 0
        assert ViewerConfig.get(viewerConfig.id) == null
        assert response.redirectedUrl == '/viewerConfig/list'
    }
}
