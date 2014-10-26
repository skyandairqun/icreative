package icreative

class Article {

    static constraints = {
        type(inList: ["News", "Company","Others","Right_Navigation"])
        title blank: false
        content(nullable: false, maxSize: 5000)
        keyWords blank: false
        description(nullable: false, maxSize: 5000)
        perlink blank: false
    }

    String title;//文章标题
    String content;//内容信息
    String keyWords;// 搜索关键字
    String description;// 搜索描述内容
    String createUser;
    String lastUpdateUser;
    Date dateCreated;
    Date lastUpdated;
    String perlink;
    String type;
    static mapping = {
        autoTimestamp(true);
    }


}
