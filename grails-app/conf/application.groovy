
dataSource {
    pooled = true
    jmxExport = true
    driverClassName = 'oracle.jdbc.OracleDriver'
    dialect = 'org.hibernate.dialect.Oracle12cDialect'
}

dataSource {
    driverClassName = 'oracle.jdbc.OracleDriver'
    dialect = 'org.hibernate.dialect.Oracle12cDialect'
    url = 'jdbc:oracle:thin:@localhost:1521/orcl'
    username = 'linksharing'
    password = 'linksharing'
    }