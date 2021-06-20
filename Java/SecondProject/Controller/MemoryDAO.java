package com.mega.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemoryDAO {
	
	@Autowired
	SqlSessionTemplate memo;
	
	public void create(MemoryVO bag) throws Exception {
		memo.insert("memory.insert", bag);
	}
	
	public MemoryVO read(MemoryVO bag) {
		MemoryVO vo = memo.selectOne("memory.select", bag);
		return vo;
	}

	public List<MemoryVO> all1() {
		return memo.selectList("memory.memo1");
	}
	public List<MemoryVO> all2() {
		return memo.selectList("memory.memo2");
	}
	public List<MemoryVO> all3() {
		return memo.selectList("memory.memo3");
	}
	public List<MemoryVO> all4() {
		return memo.selectList("memory.memo4");
	}
	public List<MemoryVO> all5() {
		return memo.selectList("memory.memo5");
	}
	public List<MemoryVO> all6() {
		return memo.selectList("memory.memo6");
	}
	public List<MemoryVO> all7() {
		return memo.selectList("memory.memo7");
	}
	public List<MemoryVO> all8() {
		return memo.selectList("memory.memo8");
	}
	
	public List<MemoryVO> find(String subject) {
		return memo.selectList("memory.find", subject);
	}
	public List<MemoryVO> find2(String subject) {
		return memo.selectList("memory.find", subject);
	}
	public List<MemoryVO> find3(String subject) {
		return memo.selectList("memory.find2", subject);
	}
	public List<MemoryVO> find4(String subject) {
		return memo.selectList("memory.find3", subject);
	}
	public List<MemoryVO> find5(String subject) {
		return memo.selectList("memory.find4", subject);
	}
	public List<MemoryVO> find6(String subject) {
		return memo.selectList("memory.find5", subject);
	}
	public List<MemoryVO> find7(String subject) {
		return memo.selectList("memory.find6", subject);
	}
	public List<MemoryVO> find8(String subject) {
		return memo.selectList("memory.find7", subject);
	}
	public List<MemoryVO> find9(String subject) {
		return memo.selectList("memory.find8", subject);
	}
	
	public MemoryVO random(MemoryVO bag) {
		MemoryVO vo = memo.selectOne("memory.random", bag);
		return vo;
	}

}