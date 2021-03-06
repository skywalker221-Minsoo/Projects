package com.mega.project;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository	//외부에서 입출력 작업 처리
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	SqlSession SqlSession;
	
	//1. 게시글 작성
	@Override
	public void create(BoardVO vo) throws Exception {
		SqlSession.insert("board.insert", vo);
	}
	
	//2. 게시글 상세보기
	@Override
	public BoardVO read(int bno) throws Exception {
		return SqlSession.selectOne("board.view", bno);
	}
	
	//3. 게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		SqlSession.update("board.updateArticle", vo);
	}
	
	//4. 게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		SqlSession.delete("board.deleteArticle", bno);
	}
	
	//5. 게시글 전체 목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return SqlSession.selectList("board.listAll");
	}
	
	//6. 게시글 조회수 증가
	@Override
	public void increaseViewcnt(int bno) throws Exception {
		SqlSession.update("board.increaseViewcnt", bno);
	}
	
	//7. 전체 데이터 가져오기
	@Override
	public int readall() {
		return SqlSession.selectOne("board.selectall");
	}
}
