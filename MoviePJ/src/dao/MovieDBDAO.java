package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Connection.DBConnection;
import vo.MovieVO;

public class MovieDBDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public MovieDBDAO() {
		conn = DBConnection.getInstance().getConnection();
	}
	
	public ArrayList<MovieVO> SelectAll() {
		ArrayList<MovieVO> list = new ArrayList<>();
		
		sb.setLength(0);
		sb.append("select * from movie ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String outline = rs.getString(3);
				String director = rs.getString(4);
				String actor = rs.getString(5);
				String filmrate = rs.getString(6);
				String highlight = rs.getString(7);
				String summary = rs.getString(8);
				String image = rs.getString(9);
				
				MovieVO vo = new MovieVO(id, name, outline, director, actor, filmrate, highlight, summary, image);
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
		
	}// selectAll() end
	
	public MovieVO getData(int mid) {
		sb.setLength(0);
		sb.append("select * from movie ");
		sb.append("where id = ? ");
		
		MovieVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, mid);
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			String name = rs.getString(2);
			String outline = rs.getString(3);
			String director = rs.getString(4);
			String actor = rs.getString(5);
			String filmrate = rs.getString(6);
			String highlight = rs.getString(7);
			String summary = rs.getString(8);
			String image = rs.getString(9);
			
			vo = new MovieVO(mid, name, outline, director, actor, filmrate, highlight, summary, image);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	} // getData() end
}
