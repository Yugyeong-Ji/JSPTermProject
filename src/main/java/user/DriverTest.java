package user;
import java.sql.Connection;
import java.sql.DriverManager;
public class DriverTest {
	public static void main(String[] args) {
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3305/bbangdengi?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
		String dbname = "bbangdengi";
		String id = "root";
		String pwd = "1234";
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("데이터 베이스 연결 성공!!");
		} catch (Exception e) {
			System.out.println("데이터 베이스 연결실패!!");
			e.printStackTrace();
		}finally {
			try {
				if(con != null)
					con.close();
					System.out.println("데이터 베이스 연결 해제!");
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
		}
	}
}