dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "123321"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            //url = "jdbc:h2:mem:devDb;MVCC=TRUE"
            url = "jdbc:mysql://localhost:3306/guanglijia?useUnicode=true&autoreconnect=true&characterEncoding=UTF-8"
        }
    }
    test {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            //url = "jdbc:h2:mem:devDb;MVCC=TRUE"
            url = "jdbc:mysql://localhost:3306/guanglijia?useUnicode=true&autoreconnect=true&characterEncoding=UTF-8"

        }
    }


    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://198.38.89.21:3306/guanglijia?useUnicode=true&autoreconnect=true&characterEncoding=UTF-8"
            pooled = true
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis = 1800000
                timeBetweenEvictionRunsMillis = 1800000
                numTestsPerEvictionRun = 3
                testOnBorrow = true
                testWhileIdle = true
                testOnReturn = true
                validationQuery = "SELECT 1"

            }
        }
    }
}
