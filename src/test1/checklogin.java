package test1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;

public class checklogin {
	
	 private Connection conn;            // DB에 접근하는 객체
	 private PreparedStatement stmt;    // 
	 private ResultSet rs;

	
    public checklogin(){
        try {
        	String jdbc_driver = "com.mysql.jdbc.Driver";
    		String db_url = "jdbc:mysql://localhost:3306/mysql" + "?serverTimezone=Asia/Seoul&useSLL=false";
    		String db_user = "user1";
    		String db_passwd = "user1";
    		String db_table = "userinfo";
    		Class.forName(jdbc_driver);

    		conn = DriverManager.getConnection(db_url, db_user, db_passwd);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    public int login(String userID, String userPassword) {
    	try {
			//드라이버를 로드한다. 파라미터는 sql마다 다르면 미리 정해져 있다.
			Class.forName("com.mysql.jdbc.Driver");

			//url은 jdbc:sql유형:주소/스키마 순으로 입력한다.

			String query = "select id,pwd from userinfo";

			//쿼리문을 받는다.
			//stmt = conn.createStatement();

			stmt=conn.prepareStatement(query);
			stmt=setString(1,userID);
			
			
			//쿼리 후 결과값을 rs에 받는다.
			rs = stmt.executeQuery();

			if(rs.next()){
                if(rs.getString(1).equals(userPassword))
                    return 1;    // 로그인 성공
                else
                    return 0; // 비밀번호 불일치
            }


			stmt.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
        return -2; 

    }

}
