import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * User: lenovo
 * Date: 13-1-13
 * Time: 下午1:13
 * To change this template use File | Settings | File Templates.
 */
public class PerlinkUtils {
    public static String generatePerlink(String controllerName, String actionName, String value) {
        String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(value);
        String url = (controllerName + "/" + actionName + "/" + m.replaceAll("").trim().replace("   ", "_").replace("  ", "_").replace(" ", "_")).toLowerCase();
        return url;
    }

    public static void main(String args[]) {
        System.out.println(PerlinkUtils.generatePerlink("product", "detail", "product A  B + #$%#^()"));
        System.out.println(PerlinkUtils.convertToPerlink("product    A B + #$%#^()"));

    }

    public static String convertToPerlink(String value) {
        String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(value);
        return (m.replaceAll("").trim().replace("   ", "_").replace("  ", "_").replace(" ", "_")).toLowerCase();
    }
}
