package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DbConnection;
import modal.News;

public class newsDAO {
	
	public static List<News> loadNews() {
		Connection connection = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		List<News> tk = null;
		String query = "select * from tb_tintuc";
		try {
			tk = new ArrayList<>();
			connection = DbConnection.connection();
			stm = connection.prepareStatement(query);
			rs = stm.executeQuery();
			while(rs.next()) {
				 int id = rs.getInt("id");
				 String images = rs.getString("images");
				 String title = rs.getNString("title");
				 String content = rs.getNString("content");
				 News item = new News(id,images, title, content);
				 tk.add(item);
			}
			return tk;
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return tk;
	}
	public static void main(String args[]) {
		List<News> list = loadNews();
		for (News news : list) {
			System.out.println(news.getTitle());
			
		}
		
	}
}
