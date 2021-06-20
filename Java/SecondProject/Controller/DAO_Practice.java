package com.mega.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO_Practice {
	
	public void create(MemoryVO bag) throws Exception {
		
		//1.Ŀ���� ����ϰڴٰ� �����ؾ���.
		System.out.println("===============" + bag.getId());
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("1. Ŀ���� ��� ���� ����. <br>");
		
		//2. db�����غ���! - shop, root, 1234
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		Connection con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("2. db���� �Ϸ�.");
		
		//3.sql�� ��ü�� �����
		String sql = "insert into memory values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getId());
		ps.setString(2, bag.getCompany());
		ps.setString(3, bag.getIndate());
		ps.setString(4, bag.getUse());
		ps.setString(5, bag.getClassify());
		ps.setString(6, bag.getStandard());
		ps.setString(7, bag.getCapacity());
		ps.setString(8, bag.getPack());
		ps.setString(9, bag.getClock());
		ps.setString(10, bag.getRamtime());
		ps.setString(11, bag.getVoltage());
		ps.setString(12, bag.getHeatsink());
		ps.setString(13, bag.getFee());

		System.out.println("3. SQL���� ����� ����. <br>");
		
		//4.SQL���� MySQL ������ ������.
		ps.executeUpdate();
		con.commit();
		con.close();
		System.out.println("4. SQL���� MySQL������ ���� ����. <br>");
	}
	
	public void delete(MemoryVO bag) throws Exception {
		System.out.println("���޹��� ���濡 ����ִ� ������ db�� �ִ� ó�� �ϸ� ��.");
		//1.Ŀ���� ����ϰڴٰ� �����ؾ���.
		System.out.println("===============" + bag.getId());
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("1. Ŀ���� ��� ���� ����. <br>");
		
		//2. db�����غ���! - shop, root, 1234
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		Connection con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("2. db���� �Ϸ�.");
		
		//3.sql�� ��ü�� �����
		String sql = "delete from memory where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getId());

		System.out.println("3. SQL���� ���� ����. <br>");
		
		//4.SQL���� MySQL ������ ������.
		ps.executeUpdate();
		con.commit();
		con.close();
		System.out.println("4. SQL���� Oracle ������ ���� ����. <br>");
	}
}
