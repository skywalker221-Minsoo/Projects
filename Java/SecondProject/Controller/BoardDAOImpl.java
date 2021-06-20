package com.mega.project;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository	//�ܺο��� ����� �۾� ó��
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	SqlSession SqlSession;
	
	//1. �Խñ� �ۼ�
	@Override
	public void create(BoardVO vo) throws Exception {
		SqlSession.insert("board.insert", vo);
	}
	
	//2. �Խñ� �󼼺���
	@Override
	public BoardVO read(int bno) throws Exception {
		return SqlSession.selectOne("board.view", bno);
	}
	
	//3. �Խñ� ����
	@Override
	public void update(BoardVO vo) throws Exception {
		SqlSession.update("board.updateArticle", vo);
	}
	
	//4. �Խñ� ����
	@Override
	public void delete(int bno) throws Exception {
		SqlSession.delete("board.deleteArticle", bno);
	}
	
	//5. �Խñ� ��ü ���
	@Override
	public List<BoardVO> listAll() throws Exception {
		return SqlSession.selectList("board.listAll");
	}
	
	//6. �Խñ� ��ȸ�� ����
	@Override
	public void increaseViewcnt(int bno) throws Exception {
		SqlSession.update("board.increaseViewcnt", bno);
	}
	
	//7. ��ü ������ ��������
	@Override
	public int readall() {
		return SqlSession.selectOne("board.selectall");
	}
}
