package icreative

class Menu {
    String display_value;//菜单显示
    String levelNo;//节点等级
    String orderLevel;//顺序
    String position;//菜单位置
    String perlink;
    static belongsTo = [parentMenu: Menu];
    static hasMany = [menus: Menu];
    static constraints = {
        levelNo(inList: ["Top", "level1", "level2", "level3"])
        display_value blank: false
        orderLevel blank: false
        keyWords blank: false
        description blank: false
        perlink blank: true;
        createUser blank: true ;
        //position(inList: ["Company","Product","Service","Others"])
         position blank: true;
        lastUpdateUser blank: true;
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

        String toString() {
            return display_value;
        }

    }
