package icreative

import org.springframework.util.CollectionUtils

class LoadDataFilters {
    public static boolean isFirst = true;
    def filters = {
        all(controller: '*', action: '*') {
            before = {
                if (!isFirst) {
                    BaseController baseController = new BaseController();
                } else {
                    isFirst = false;
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
