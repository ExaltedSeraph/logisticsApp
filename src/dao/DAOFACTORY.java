	package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAOFACTORY {

    private DAOFACTORY() {	
	
    }

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://directdb1.cnpx7jeir56v.eu-west-3.rds.amazonaws.com:3306/dtl_website?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String user = "root";
			String mdp = "DirectDbPasswort101";
			conn=DriverManager.getConnection(url,user,mdp);
		}
		catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		return conn;
	}
}
