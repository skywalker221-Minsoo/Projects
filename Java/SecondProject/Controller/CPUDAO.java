package com.mega.project;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CPUDAO {
	
	@Autowired //�̱������� SQL��ɾ ����� �� �ִ� API(Application Programming Interface) ���.
	SqlSessionTemplate cpu;
	
	public void create(CPUVO bag) throws Exception {
		cpu.insert("cpu.insert", bag);
	}
	
	//����¡ ���� �Է¹޾Ƽ�, ���̺� ����� ID�÷����� ���Ͽ� �� �������� �����ϴ� ������ �����͵��� �ҷ����� �뵵�� ���
	public CPUVO read(CPUVO bag) {
		CPUVO vo = cpu.selectOne("cpu.select", bag);
		return vo; //ID�÷� ���� �ҷ��� �� �ְ� ����.
	} 
	
	//�� ������ ��ǰ ������ �ҷ��� �� �ֵ��� �� ���� ������ �ҷ����� SQL���� ����.
	public List<CPUVO> all1() {
		return cpu.selectList("cpu.cpu1");
	}
	public List<CPUVO> all2() {
		return cpu.selectList("cpu.cpu2");
	}
	public List<CPUVO> all3() {
		return cpu.selectList("cpu.cpu3");
	}
	public List<CPUVO> all4() {
		return cpu.selectList("cpu.cpu4");
	}
	public List<CPUVO> all5() {
		return cpu.selectList("cpu.cpu5");
	}
	public List<CPUVO> all6() {
		return cpu.selectList("cpu.cpu6");
	}
	public List<CPUVO> all7() {
		return cpu.selectList("cpu.cpu7");
	}
	public List<CPUVO> all8() {
		return cpu.selectList("cpu.cpu8");
	}
	
	//���ڿ� �������� ���� ���� �˻��� ���� �޾ƿͼ� �ش� �ܾ ���Ե� ��ǰ���� �������� �Ѱܵ� �˻��ǵ���  ���.
	//�˻����� �� �� �������� ������ �ҷ����� SQL���� ����.
	public List<CPUVO> find(String subject) {
		return cpu.selectList("cpu.find", subject);
	}
	public List<CPUVO> find2(String subject) {
		return cpu.selectList("cpu.find", subject);
	}
	public List<CPUVO> find3(String subject) {
		return cpu.selectList("cpu.find2", subject);
	}
	public List<CPUVO> find4(String subject) {
		return cpu.selectList("cpu.find3", subject);
	}
	public List<CPUVO> find5(String subject) {
		return cpu.selectList("cpu.find4", subject);
	}
	public List<CPUVO> find6(String subject) {
		return cpu.selectList("cpu.find5", subject);
	}
	public List<CPUVO> find7(String subject) {
		return cpu.selectList("cpu.find6", subject);
	}
	public List<CPUVO> find8(String subject) {
		return cpu.selectList("cpu.find7", subject);
	}
	public List<CPUVO> find9(String subject) {
		return cpu.selectList("cpu.find8", subject);
	}
	
	//PC��õ�� �Ҷ� ���� ������ �����ϴ� ������ �� ���Ƿ� �ϳ� ����.
	public CPUVO random(CPUVO bag) {
		CPUVO vo = cpu.selectOne("cpu.random", bag);
		return vo;
	}
}