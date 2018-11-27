package Setting;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Setting {
	public static void main(String[] args) {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306?useSSL=false&useUnicode=true&characterEncoding=UTF-8";
		String user = "root";
		String password = "ekdus0209!";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		
		StringBuffer createMovie = new StringBuffer();
		createMovie.append("create table movie ");
		createMovie.append("(id int not null primary key auto_increment, ");
		createMovie.append("name varchar(50), ");
		createMovie.append("outline varchar(100), ");
		createMovie.append("director varchar(30), ");
		createMovie.append("actor varchar(500), ");
		createMovie.append("filmrate varchar(100), ");
		createMovie.append("highlight varchar(100), ");
		createMovie.append("summary text, ");
		createMovie.append("image varchar(1000)) ");
		
		StringBuffer createTheater = new StringBuffer();
		createTheater.append("create table theater ");
		createTheater.append("(id int not null primary key auto_increment, ");
		createTheater.append("name varchar(20)) ");
		
		StringBuffer createScreen = new StringBuffer();
		createScreen.append("create table screen ");
		createScreen.append("(id int not null primary key auto_increment, ");
		createScreen.append("t_id int, ");
		createScreen.append("screennum int, ");
		createScreen.append("seatnum int, ");
		createScreen.append("foreign key(t_id) references theater(id) on delete cascade) ");
		
		StringBuffer createMovieScreen = new StringBuffer();
		createMovieScreen.append("create table moviescreen ");
		createMovieScreen.append("(id int not null primary key auto_increment, ");
		createMovieScreen.append("m_id int, ");
		createMovieScreen.append("s_id int, ");
		createMovieScreen.append("date date, ");
		createMovieScreen.append("time varchar(10), ");
		createMovieScreen.append("foreign key(m_id) references movie(id) on delete cascade, ");
		createMovieScreen.append("foreign key(s_id) references screen(id) on delete cascade) ");
		
		StringBuffer createMember = new StringBuffer();
		createMember.append("create table member ");
		createMember.append("(id int not null primary key auto_increment, ");
		createMember.append("memberID varchar(20), ");
		createMember.append("memberPW varchar(20)) ");
		
		StringBuffer createSeat = new StringBuffer();
		createSeat.append("create table seat ");
		createSeat.append("(id int not null primary key auto_increment, ");
		createSeat.append("s_id int, ");
		createSeat.append("setname varchar(10), ");
		createSeat.append("reservation int, ");
		createSeat.append("foreign key(s_id) references screen(id) on delete cascade) ");
		
		StringBuffer createReserve = new StringBuffer();
		createReserve.append("create table reserve ");
		createReserve.append("(ms_id int, ");
		createReserve.append("s_id int, ");
		createReserve.append("m_id int, ");
		createReserve.append("foreign key(ms_id) references moviescreen(id) on delete cascade, ");
		createReserve.append("foreign key(s_id) references seat(id) on delete cascade, ");
		createReserve.append("foreign key(m_id) references member(id) on delete cascade) ");
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery("show databases like 'movieDB'");
			if(rs.next()) {
				stmt.executeUpdate("drop database movieDB");
			}
			
			stmt.executeUpdate("create database movieDB");
			stmt.executeUpdate("use movieDB");
			
			stmt.executeUpdate(createMovie.toString());
			stmt.executeUpdate(createTheater.toString());
			stmt.executeUpdate(createScreen.toString());
			stmt.executeUpdate(createMovieScreen.toString());
			stmt.executeUpdate(createMember.toString());
			stmt.executeUpdate(createSeat.toString());
			stmt.executeUpdate(createReserve.toString());
			
			stmt.executeUpdate("alter table movie convert to charset utf8");
			stmt.executeUpdate("alter table theater convert to charset utf8");
			stmt.executeUpdate("alter table screen convert to charset utf8");
			stmt.executeUpdate("alter table moviescreen convert to charset utf8");
			stmt.executeUpdate("alter table member convert to charset utf8");
			stmt.executeUpdate("alter table seat convert to charset utf8");
			stmt.executeUpdate("alter table reserve convert to charset utf8");
			
			System.out.println("table create completed");
			
			int wordNum[] = {9, 2, 4, 5, 3, 4};
			String pathArray[] = {"txt/movie.txt", "txt/theater.txt", "txt/screen.txt", 
					"txt/moviescreen.txt", "txt/member.txt", "txt/seat.txt"};
			
			StringBuffer sb[] = new StringBuffer[pathArray.length];
			PreparedStatement pstmt[] = new PreparedStatement[pathArray.length];
			
			for(int i=0; i<sb.length; i++) {
				sb[i] = new StringBuffer();
				switch(i) {
				case 0:
					sb[i].append("insert into movie ");
					break;
				case 1:
					sb[i].append("insert into theater ");
					break;
				case 2:
					sb[i].append("insert into screen ");
					break;
				case 3:
					sb[i].append("insert into moviescreen ");
					break;
				case 4:
					sb[i].append("insert into member ");
					break;
				case 5:
					sb[i].append("insert into seat ");
					break;
				}
				sb[i].append("values(");
				
				for(int j=0; j<wordNum[i]; j++) {
					if(j != wordNum[i] - 1) sb[i].append("?, ");
					else sb[i].append("?) "); 
				}
				
				pstmt[i] = conn.prepareStatement(sb[i].toString());
			}
			
			for(int i=0; i<pathArray.length; i++) {
				File file = new File(pathArray[i]);
				try {
					BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
					
					String line = "";
					int flag = 0;
					
					while((line = br.readLine()) != null) {
						if(flag == 0) {
							flag++;
							continue;
						}
						
						String strArray[] = line.split("\t");
						
						/*System.out.println(strArray[0]);
						System.out.println(Integer.parseInt(strArray[0].toString()));*/
						
						for(int j=0; j<strArray.length; j++){
							System.out.print(strArray[j] + "\t");
						}
						System.out.println();
						
						switch(i) {
						case 0:
							pstmt[i].setInt(1, Integer.parseInt(strArray[0]));
							pstmt[i].setString(2, strArray[1]);
							pstmt[i].setString(3, strArray[2]);
							pstmt[i].setString(4, strArray[3]);
							pstmt[i].setString(5, strArray[4]);
							pstmt[i].setString(6, strArray[5]);
							pstmt[i].setString(7, strArray[6]);
							pstmt[i].setString(8, strArray[7]);
							pstmt[i].setString(9, strArray[8]);
							break;
						case 1:
							pstmt[i].setInt(1, Integer.parseInt(strArray[0]));
							pstmt[i].setString(2, strArray[1]);
							break;
						case 2:
							pstmt[i].setInt(1, Integer.parseInt(strArray[0]));
							pstmt[i].setInt(2, Integer.parseInt(strArray[1]));
							pstmt[i].setInt(3, Integer.parseInt(strArray[2]));
							pstmt[i].setInt(4, Integer.parseInt(strArray[3]));
							break;
						case 3:
							pstmt[i].setInt(1, Integer.parseInt(strArray[0]));
							pstmt[i].setInt(2, Integer.parseInt(strArray[1]));
							pstmt[i].setInt(3, Integer.parseInt(strArray[2]));
							pstmt[i].setString(4, strArray[3]);
							pstmt[i].setString(5, strArray[4]);
							break;
						case 4:
							pstmt[i].setInt(1, Integer.parseInt(strArray[0]));
							pstmt[i].setString(2, strArray[1]);
							pstmt[i].setString(3, strArray[2]);
							break;
						case 5:
							pstmt[i].setInt(1, Integer.parseInt(strArray[0]));
							pstmt[i].setInt(2, Integer.parseInt(strArray[1]));
							pstmt[i].setString(3, strArray[2]);
							pstmt[i].setInt(4, Integer.parseInt(strArray[3]));
							break;
						}
						
						pstmt[i].executeUpdate();
						
						/*for(int j=0; j<strArray.length; j++){
							System.out.print(strArray[j] + " ");
						}
						System.out.println();*/
					}
					br.close();
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			stmt.executeQuery("use mysql");
			rs2 = stmt.executeQuery("select host, user, authentication_string from user where user = 'user'");
			while(rs2.next()) {
				stmt.executeUpdate("drop user 'user'@'localhost'");
			}
			stmt.executeUpdate("create user 'user'@'localhost' identified by '1234'");
			stmt.executeUpdate("grant select on movieDB.* to 'user'@'localhost'");
			stmt.executeUpdate("grant update on movieDB.reserve to 'user'@'localhost'");
			stmt.executeUpdate("grant update on movieDB.seat to 'user'@'localhost'");
			stmt.executeUpdate("grant insert, delete, update on movieDB.member to 'user'@'localhost'");
			
			System.out.println("권한 생성 완료");
			
			for(int i=0; i<pstmt.length; i++) if(pstmt[i]!=null) pstmt[i].close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				if(stmt != null) stmt.close();
				if(rs != null) rs.close();
				if(rs2 != null) rs2.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
