package icreative

class ResourceFile {
    String name;// 资源文件名称
    String type;// 资源类型doc/jpg/zip...
    String url;// 发布的链接情况
    String perlink;
    static constraints = {
        name blank: false
        type blank: false
        url balnk: false
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
