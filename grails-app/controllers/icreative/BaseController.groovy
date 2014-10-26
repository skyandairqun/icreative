package icreative

class BaseController {
    //是否是第一次加载，如果是第一次加载就加载菜单信息
    public static boolean isFirst = "";

    //加载菜单List形势
    public static List<Menu> allMenuList = new ArrayList<Menu>();
    // 加载菜单Map形势key : level    value:menus

    public static Map<String, List<Menu>> levelTopMenuMap = new HashMap<String, List<Menu>>();

    public static List<Category> allCategoryList = new ArrayList<Category>();

    public static Map<String, List<Category>> levelTopCategoryMap = new HashMap<String, List<Category>>();

    public static List<ViewerConfig> homeViewerList = new ArrayList<ViewerConfig>();

    public static List<ViewerConfig> rightViewrListA = new ArrayList<ViewerConfig>();

    public static List<ViewerConfig> headerSmallList = new ArrayList<ViewerConfig>();

    public static List<Product> hotProductList = new ArrayList<Product>();//加载首页的热门商品和新品

    public static SystemConfiguration mainSysConfig = new SystemConfiguration();//加载主要系统配置的实体对象
    public static List<Article> rightArticleList=new ArrayList<Article>();

    def index() {
        String to = params.get("to");
        if (to == null || to.equals("")) {
            render(view: "index");
        } else {
            render(view: to);
        }
    }

    def about() {

    }

    def category() {

    }

    def cart() {

    }

    def contact() {

    }

    def details() {

    }

    def register() {

    }

    def myaccount() {

    }

    def specials() {

    }



    def public BaseController() {
        loadData();
        init2ScopeData();
    }



    def loadData() {
        allMenuList = Menu.listOrderByOrderLevel();

        levelTopMenuMap = new HashMap<String, List<Menu>>();
        for (Menu menu : allMenuList) {

            if (menu.getLevelNo().equals("Top")) {
                List<Menu> topList = levelTopMenuMap.get("Top");
                if (topList == null) {
                    topList = new ArrayList<Menu>();
                }
                topList.add(menu);
                levelTopMenuMap.put("Top", topList);
            }
        }
        //加载顶级菜单
        servletContext.setAttribute("allMenuListData", allMenuList);

        servletContext.setAttribute("levelTopMenuMapData", levelTopMenuMap);


        allCategoryList = Category.list();
        levelTopCategoryMap = new HashMap<String, List<Category>>();
        for (Category category : allCategoryList) {
            //装配父节点的菜单Map

            if (category.getLevelNo().equals("Top")) {
                List<Category> topList = levelTopCategoryMap.get("Top");
                if (topList == null) {
                    topList = new ArrayList<Category>();
                }
                topList.add(category);
                levelTopCategoryMap.put("Top", topList);
            }
        }

        //加载首页的viewer信息
        homeViewerList = ViewerConfig.findAllByIsEnableAndPosition("Yes", "HeaderBig", null);
        List<ViewerConfig> allViewerList = ViewerConfig.findAllByIsEnable("Yes");
        servletContext.setAttribute("homeViewerList", homeViewerList);
        rightViewrListA = ViewerConfig.findAllByIsEnableAndPosition("Yes", "RightA", null);
        servletContext.setAttribute("rightViewrListA", rightViewrListA);
        headerSmallList = ViewerConfig.findAllByIsEnableAndPosition("Yes", "HeaderSmall", null);
        servletContext.setAttribute("headerSmallList", headerSmallList);
        //加载热门商品和新的商品

        hotProductList = Product.listOrderByOrderLevel(max: 10, order: "desc");
        servletContext.setAttribute("hotProductList", hotProductList);

        //加载顶级菜单
        servletContext.setAttribute("allCategoryListData", allCategoryList);
        servletContext.setAttribute("levelTopCategoryMapData", levelTopCategoryMap);

        //加载主的系统信息配置
        mainSysConfig = SystemConfiguration.findByIsEnable("Yes");
        servletContext.setAttribute("mainSysConfig", mainSysConfig);
        //加载右侧导航需要展示的文章列表
        rightArticleList=Article.findAllByType("Right_Navigation");
        servletContext.setAttribute("rightArticleList",rightArticleList);

    }


    def init2ScopeData() {
        session.setAttribute("levelTopMenuMapData", levelTopMenuMap.get("Top"));
        session.setAttribute("levelTopCategoryMapData", levelTopCategoryMap.get("Top"));
        session.setAttribute("homeViewerList", homeViewerList);
        session.setAttribute("rightViewrListA", rightViewrListA);
        session.setAttribute("hotProductList", hotProductList);
        session.setAttribute("mainSysConfig", mainSysConfig);
        session.setAttribute("headerSmallList", headerSmallList);
        session.setAttribute("rightArticleList",rightArticleList)       ;
    }


}

