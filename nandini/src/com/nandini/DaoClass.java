package com.nandini;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class DaoClass {

	public static boolean saveValue(String arr[], String name, String finalname)
			throws ClassNotFoundException, SQLException {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/nandini";
			con = DriverManager.getConnection(url, "root", "root");

			Statement stmt = con.createStatement();

			StringBuilder build = new StringBuilder(
					" insert into nandini values( ");
			for (int i = 0; i < arr.length; i++) {
				build.append(arr[i] + ",");
			}
			build.append("'" + name + "',");
			build.append(finalname + ")");

			System.out.println(build);
			int i = stmt.executeUpdate(build.toString());
			if (i > 0) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			System.out.println("Exception " + e.getMessage());
		} finally {
			con.close();
		}
		return false;

	}

	public static List<String> OptionValue() throws ClassNotFoundException,
			SQLException {
		Connection con = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nandini";
		con = DriverManager.getConnection(url, "root", "root");

		Statement stmt = con.createStatement();

		StringBuilder build = new StringBuilder("select name from nandini");

		ResultSet res = stmt.executeQuery(build.toString());
		ArrayList<String> al = new ArrayList<String>();
		while (res.next()) {
			al.add(res.getString("name"));
		}
		if (con != null)
			con.close();

		return al;
	}

	public static List<String> getOptionValue(String name)
			throws ClassNotFoundException, SQLException {
		Connection con = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/nandini";
		con = DriverManager.getConnection(url, "root", "root");

		PreparedStatement stmt = con
				.prepareStatement("select * from nandini where name=?");

		stmt.setString(1, name);

		ResultSet res = stmt.executeQuery();
		ArrayList<String> al = new ArrayList<String>();
		while (res.next()) {

			al.add(res.getString(1));
			al.add(res.getString(2));
			al.add(res.getString(3));
			al.add(res.getString(4));
			al.add(res.getString(5));
			al.add(res.getString(6));
			al.add(res.getString(7));
			al.add(res.getString(8));
			al.add(res.getString(9));
			al.add(res.getString(10));
			al.add(res.getString(11));
			al.add(res.getString(12));
			al.add(res.getString(13));
			al.add(res.getString(14));
			al.add(res.getString(15));
			al.add(res.getString(16));
			al.add(res.getString(17));
			al.add(res.getString(18));
			al.add(res.getString(19));
			al.add(res.getString(20));
			al.add(res.getString(21));
			al.add(res.getString(22));
			al.add(res.getString(23));
			al.add(res.getString(24));
			al.add(res.getString(25));
			al.add(res.getString(26));
			al.add(res.getString(27));
			al.add(res.getString(28));
			al.add(res.getString(29));
			al.add(res.getString(30));
			al.add(res.getString(31));
			al.add(res.getString(32));
			al.add(res.getString(33));
			al.add(res.getString(34));
			al.add(res.getString(35));
			al.add(res.getString(36));
			al.add(res.getString(37));
			al.add(res.getString(38));
			al.add(res.getString(39));
			al.add(res.getString(40));
			al.add(res.getString(41));
			al.add(res.getString(42));
			al.add(res.getString(43));
			al.add(res.getString(44));
			al.add(res.getString(45));
			al.add(res.getString(46));
			al.add(res.getString(47));
			al.add(res.getString(48));
			al.add(res.getString(49));
			al.add(res.getString(50));
			al.add(res.getString(51));
			al.add(res.getString(52));
			al.add(res.getString(53));
			al.add(res.getString(54));
			al.add(res.getString(55));
			al.add(res.getString(56));
			al.add(res.getString(57));
			al.add(res.getString(58));
			al.add(res.getString(59));
			al.add(res.getString(60));
			al.add(res.getString(61));
			al.add(res.getString(62));
			al.add(res.getString(63));

		}
		con.close();
		return al;
	}

	public static void main(String[] args) throws ClassNotFoundException,
			SQLException {

		String st="0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,4.45,233.5,20.26,20.26,20.26,20.26,20.26,asd,339.250.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,4.45,233.5,20.26,20.26,20.26,20.26,20.26,asd,339.25";
		String[] tok=st.split(",");
		int count=1;for(String ss:tok){
			System.out.println(ss  +"    " +count);
			count++;
		}
		System.out.println(count);
	}
}
