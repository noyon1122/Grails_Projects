dataSource {
    pooled = true
    driverClassName = "oracle.jdbc.OracleDriver"
    dialect = org.hibernate.dialect.Oracle10gDialect
    username = "pos"
    password = "oracle123"
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
            url = "jdbc:oracle:thin:@192.168.150.169:1521/POSDB"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:oracle:thin:@192.168.150.169:1521/POSDB"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:oracle:thin:@192.168.150.169:1521/POSDB"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
