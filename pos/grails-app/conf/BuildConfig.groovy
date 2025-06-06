grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6

//grails.project.war.file = "target/${appName}-${appVersion}.war"

// uncomment (and adjust settings) to fork the JVM to isolate classpaths
//grails.project.fork = [
//   run: [maxMemory:1024, minMemory:64, debug:false, maxPerm:256]
//]

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve
    legacyResolve false // whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

    repositories {
        inherits true // Whether to inherit repository definitions from plugins

        grailsPlugins()
        grailsHome()
        grailsCentral()

        mavenLocal()
        mavenCentral()

        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        mavenRepo "http://snapshots.repository.codehaus.org"
        mavenRepo "http://repository.codehaus.org"
        mavenRepo "http://download.java.net/maven/2/"
        mavenRepo "http://repository.jboss.com/maven2/"
        mavenRepo "https://repo.spring.io/libs-release"


    }
    grails.project.dependency.resolver = "maven"


    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes e.g.

        compile 'mysql:mysql-connector-java:5.1.49'
        compile 'com.itextpdf:itextpdf:5.5.13.2'
        compile 'org.springframework:spring-web:3.0.7.RELEASE'
        //runtime 'com.oracle:ojdbc6:11.2.0.4'
        compile 'commons-io:commons-io:2.4'


        // aws sdk for java
        compile 'com.amazonaws:aws-java-sdk-s3:1.11.1000'
        compile 'com.amazonaws:aws-java-sdk-core:1.11.1000'

        // Jackson library for JSON processing (required by AWS SDK)
        compile 'com.fasterxml.jackson.core:jackson-databind:2.9.10.1'  // Compatible version
        compile 'com.fasterxml.jackson.core:jackson-annotations:2.9.10'   // Ensure annotations are included
        compile 'com.fasterxml.jackson.core:jackson-core:2.9.10'   // Core Jackson library

        // Add Apache HttpClient dependencies (required by AWS SDK)
        compile 'org.apache.httpcomponents:httpclient:4.5.13'
        compile 'org.apache.httpcomponents:httpcore:4.4.13'




        // ----end minio---



    }

    plugins {
        runtime ":hibernate:$grailsVersion"
        runtime ":jquery:1.8.0"
        runtime ":resources:1.1.6"
        compile ':joda-time:1.4'
        compile ":mail:1.0.4"


        // Uncomment these (or add new ones) to enable additional resources capabilities
        //runtime ":zipped-resources:1.0"
        //runtime ":cached-resources:1.0"
        //runtime ":yui-minify-resources:0.1.5"

        build ":tomcat:$grailsVersion"

        runtime ":database-migration:1.1"

        compile ':cache:1.0.0'
    }
}
