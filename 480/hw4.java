

public static void JDBCExample (string userid, string passwd)
{
	class.forName("Oracle.jdbc.driver.OracleDriver");

	Connection conn = DriverManager.getConnection (connectionstring, userid, passwd);
	Statement stmt = conn.CreateStatement();
	
	try
	{
		stmt.executUpdate("insert into accoutns values ('AAA', 1000, 'UIC')");
	}
	catch (SQLException)

	ResultSet rset = stmt.executeQuery ("select br-name, AVG(bal) from accounts group by br-name");
	
	while (rset.next())
	{
		system.out.println(rset.getSTring("br-new") + " " + rset.getFloat(2))
	}
	
	stmt.close;
	conn.close()
}


