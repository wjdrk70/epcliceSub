package dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConection {

	public static void main(String[] args) {
		java.sql.Connection connection = null;
		java.sql.Statement st = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql:localhost:8080/oasisT", "Oasis", "1234");
			st = connection.createStatement();

			String sql;
			sql = "select * FROM table member2;";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				String sqlRecipeProcess = rs.getString("column명");
			}

			rs.close();
			st.close();
			connection.close();
		} catch (SQLException se1) {
			se1.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st != null)
					st.close();
			} catch (SQLException se2) {
			}
			try {
				if (connection != null)
					connection.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}
}
