package icreative

class ViewerConfig {
    String picPath;  //图片路径
    String title;//标题
    String view_desc;//简介描述
    String isEnable; //是否可用
    String position; //所在区域
    String keyWords;  //关键字
    String perlink;
    String createUser;
    String lastUpdateUser;
    String description;
    Date dateCreated;
    Date lastUpdated;
    String target;
    String type;
    static constraints = {
        position(inList: ["HeaderBig", "HeaderSmall","RightA"])
        isEnable(inList: ["Yes", "No"])
        target(inList: ["_self", "_blank", "_media", "_parent", "_search", "_top"]);
        type(inList: ["Company","Product","Service","Others"])
    }


    static mapping = {
        autoTimestamp(true);
    }
}
