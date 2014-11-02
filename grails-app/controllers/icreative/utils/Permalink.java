package icreative.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * User: lenovo
 * Date: 13-1-13
 * Time: 下午1:16
 * To change this template use File | Settings | File Templates.
 */
public class Permalink {
    public static String generatePerlink(String controllerName, String actionName, String value) {
        value= value.replaceAll("\"","");
        String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(value);
        String url = (controllerName + "/" + actionName + "/" + m.replaceAll("").trim().replace("   ", "_").replace("  ", "_").replace(" ", "_")).toLowerCase();
        return url;
    }

    public static String generatePerlink( String value) {
        String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(value);
        String url = ( m.replaceAll("").trim().replace("   ", "_").replace("  ", "_").replace(" ", "_")).toLowerCase();
        return url;
    }

    public static void main(String args[]) {
        System.out.println(Permalink.generatePerlink("product", "detail", "\"product A  B + #$%#^()"));
        System.out.println(Permalink.convertToPerlink("product    A B + #$%#^()"));

    }

    public static String convertToPerlink(String value) {
        String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(value);
        return (m.replaceAll("").trim().replace("   ", "_").replace("  ", "_").replace(" ", "_")).toLowerCase();
    }
}
