package icreative

class User {
    String userName;
    String password;
    String realName;
    String perlink;
    static constraints = {
        userName blank: false
        password blank: false
        realName blank: false
        keyWords blank: false
        description blank: false
        perlink blank: false
    }

    String keyWords;// 搜索关键字
    String description;// 搜索描述内容
    String createUser;
    String lastUpdateUser;
    Date dateCreated;
    Date lastUpdated;
    static mapping = {
        autoTimestamp(true);
    }

}
