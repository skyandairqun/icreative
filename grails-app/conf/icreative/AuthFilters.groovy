package icreative

class AuthFilters {
    static nonAuthenticatedActions = [
            [controller: 'authentication', action: '*']
    ]
    def filters = {
        all(controller: '*', action: 'update|save|delete|edit|create') {
            before = {

                boolean needsAuth = !nonAuthenticatedActions.find {
                    (it.controller == controllerName) && ((it.action == '*')
                            || (it.action == actionName))
                }

                if (needsAuth) {
                    return applicationContext.authenticationService.filterRequest(
                            request, response,
                            "${request.contextPath}/authentication/index")
                } else return true

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
