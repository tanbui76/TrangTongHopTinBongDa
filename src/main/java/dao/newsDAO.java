package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import connection.DbConnection;
import modal.News;

public class newsDAO {
	public static List<News> loadNews() {
		Connection conn = DbConnection.connection();
		List<News> list = new ArrayList<>();
		String sql = "select * from tb_tintuc";
//		PreparedStatement 
		return list;
	}
}
