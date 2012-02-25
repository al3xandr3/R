
# a.pg.query("al3x", "***", "jdbc:postgresql://192.168.0.1:5432/db-name",
#               "select * from tableA limit 10")
a.pg.query = function (user, pass, conn, sql) {
  library(RJDBC)

  drv = JDBC("org.postgresql.Driver",
    "/dmg/java/postgresql-9.0-801.jdbc3.jar")

  con = dbConnect(drv, conn, user=user, password=pass)

  dbGetQuery(con, sql)
}

