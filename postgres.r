
# a.pg.query("al3x", "***"
#            , "jdbc:postgresql://do.ma.i.n.com:5432/dbname?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory",
#               "select * from tableA limit 10")
my.pg.query = function (user, pass=Sys.getenv(c("PGPASSWORD")), conn, sql) {
	p_load(RJDBC)

	# bigger database pull
	#options(java.parameters = "-Xmx12000m")

	drv = JDBC("org.postgresql.Driver"
           ,"C:\\Users\\amatos\\Work Folders\\_pin\\GP\\Workbench\\postgresql-9.3-1102.jdbc41.jar")

  con = dbConnect(drv, conn, user=user, password=pass)

  dbGetQuery(con, sql)
}

