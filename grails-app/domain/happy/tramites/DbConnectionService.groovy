package happy.tramites
import groovy.sql.Sql
import org.springframework.jdbc.core.JdbcTemplate

class DbConnectionService {
    boolean transactional = false

    def dataSource

    public init(){
    }

    /**
     * Devuelve la conexión a la base de datos
     */
    def getConnection(){
        Sql sql = new Sql(dataSource)
        return sql
    }

    def ejecutar (sql) {
        def template = new JdbcTemplate(dataSource)
        def result = template.queryForMap(sql)
        return result
    }

}
