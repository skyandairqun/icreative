package icreative

class SystemConfiguration {
    String absolute_url; //域名
    String website_name;  //网站名
    String website_description; //首页网站描述
    String website_keywords; //首页关键字
    String website_footer_des; //footer
    String website_email;   //email地址
    String welcome;//右上角的欢迎描述
    String contact;//联系方式
    String isEnable;    //是否启用
    static constraints = {
        absolute_url(url: true, nullable: false)
        website_name(nullable: false, maxSize: 200)
        website_description(nullable: false, maxSize: 2000)
        website_keywords(nullable: false, maxSize: 200)
        website_footer_des(nullable: false, maxSize: 500)
        website_email(email: true, null: false)
        welcome(nullable: false, maxSize: 5000)
        contact(nullable: false, maxSize: 5000)
        isEnable(inList: ["Yes", "No"])
    }
}
