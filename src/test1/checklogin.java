package test1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;

public class checklogin {
	
	 private Connection conn;            // DB�� �����ϴ� ��ü
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
			//����̹��� �ε��Ѵ�. �Ķ���ʹ� sql���� �ٸ��� �̸� ������ �ִ�.
			Class.forName("com.mysql.jdbc.Driver");

			//url�� jdbc:sql����:�ּ�/��Ű�� ������ �Է��Ѵ�.

			String query = "select id,pwd from userinfo";

			//�������� �޴´�.
			//stmt = conn.createStatement();

			stmt=conn.prepareStatement(query);
			stmt=setString(1,userID);
			
			
			//���� �� ������� rs�� �޴´�.
			rs = stmt.executeQuery();

			if(rs.next()){
                if(rs.getString(1).equals(userPassword))
                    return 1;    // �α��� ����
                else
                    return 0; // ��й�ȣ ����ġ
            }


			stmt.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
        return -2; 

    }

}
