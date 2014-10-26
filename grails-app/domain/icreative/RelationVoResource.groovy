package icreative

class RelationVoResource {
    String vo_id;//实体类id不限于某一了性的id
    String resourc_id; //资源id 资源和实体都是多对多的情况
    static constraints = {
        vo_id balnk: false;
        resourc_id balnk: false
        keyWords blank: false
        description blank: false
        perlink blank: false
    }

    String keyWords;// 搜索关键字
    String description;// 搜索描述内容
    String createUser;
    String lastUpdateUser;
    String perlink;
    Date dateCreated;
    Date lastUpdated;
    static mapping = {
        autoTimestamp(true);
    }

}
