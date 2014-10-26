package icreative

class PaypalBuyFilters {

    def filters = {
        buyFilter(controller: 'paypal', action: 'buy') {
            before = {
                println("Let's Look!!!!!!!")
                println params
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
