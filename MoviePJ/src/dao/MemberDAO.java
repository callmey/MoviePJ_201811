package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Connection.DBConnection;

public class MemberDAO {
		StringBuffer sb = new StringBuffer();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		public MemberDAO() {
			conn = DBConnection.getInstance().getConnection();
		}
		
		public boolean isExist(String id, String pw) {
			sb.setLength(0);
			sb.append("select * from member ");
			sb.append("where memberid = ? , memberpw = ? ");
			
			boolean isOk = false;
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				
				rs = pstmt.executeQuery();
				
				isOk = rs.next();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return isOk;
		}
}
