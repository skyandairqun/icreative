package icreative

class Category {
    String display_value;//分类显示
    String orderLevel;//分类排序
    String keyWords;// 搜索关键字
    String description;// 搜索描述内容
    String createUser;
    String lastUpdateUser;
    String perlink;
    Date dateCreated;
    Date lastUpdated;
    String levelNo;
    static mapping = {
        autoTimestamp(true);
    }
    static hasMany = [products: Product, following: Category]
    static constraints = {
        display_value: blank: false
        orderLevel blank: false
        keyWords blank: false
        description blank: false
        perlink blank: false
        levelNo(nullable: true, inList: (["Top", "Level1", "Level2"]))
        //  lastUpdateUser(nullable: true)

    }

    public String toString() {
        return display_value;
    }
}
