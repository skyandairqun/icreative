package icreative

class Product {
    String name;// '商品名称',
    String price;// '价格',
    String off;// '商品折扣价',
    String intro;// '商品简介',
    String specification;// '商品参数规格',
    String product_desc;// '商品描述',
    String picture_url;
    int orderLevel;// '产品展出顺序类似于置顶功能',
    String perlink;
    String thumb1_url;//缩略图1
    String thumb2_url;//缩略图2
    String thumb3_url;//缩略图3
    /* String shortName;*/
    static constraints = {
        name blank: false
        price blank: false
        off blank: false
        intro balnk: false, maxSize: 1000
        specification(nullable: false, maxSize: 5000)
        orderLevel balnk: false
        keyWords blank: false
        description blank: false, maxSize: 1000;
        perlink blank: false
        product_desc(nullable: false, maxSize: 5000)
        picture_url(nullable: false, maxSize: 200)
        /*  shortName(nullable: false,maxSize: 50)*/
    }
    static belongsTo = [category: Category]
    String keyWords;// 搜索关键字
    String description;// 搜索描述内容
    String createUser;
    String lastUpdateUser;
    Date dateCreated;
    Date lastUpdated;
    static mapping = {

        autoTimestamp(true);
    }

    public String toString() {
        return name;
    }
}
