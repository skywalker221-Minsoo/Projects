package com.mega.project;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service // 내부에서 자바 로직 처리
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO boardDAO;
	
	//1. 게시글 쓰기
	@Override
	public void create(BoardVO vo) throws Exception {
		String title = vo.getTitle();
		String content = vo.getContent();
		String writer = vo.getWriter();
		
		//*태그문자 처리 (< -> &lt; > -> &gt;)
		//replace(A, B) A를 B로 변경
		title = title.replace("<",  "&lt;");
		title = title.replace(">",  "&gt;");
		writer = writer.replace("<",  "&lt;");
		writer = writer.replace(">",  "&gt;");
		
		//*공백문자 처리
		title = title.replace(" ", "&nbsp;&nbsp;");
		writer = writer.replace(" ", "&nbsp;&nbsp;");
		
		//*줄바꿈 문자처리
		content = content.replace("\n",  "<br>");
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		boardDAO.create(vo);
	}
	
	//2. 게시글 상세보기
	@Override
	public BoardVO read(int bno) throws Exception {
		return boardDAO.read(bno);
	}
	
	//3. 게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		boardDAO.update(vo);
	}
	
	//4. 게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		boardDAO.delete(bno);
	}
	
	//5. 게시글 전체 목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return boardDAO.listAll();
	}
	
	//6. 게시글 조회수 증가
	@Override
	public void increaseViewcnt(int bno, HttpSession session) throws Exception {
		long update_time = 0;
		//세션에 저장된 조회시간 검색
		//최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
		if(session.getAttribute("update_time_" + bno) != null) {
			//세션에서 읽어오기
			update_time = (long)session.getAttribute("update_time_" + bno);
		}
		//시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		//일정시간이 경과 후 조회수 증가 처리 24 * 60 * 60 * 1000(24시간)
		//시스템 현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if(current_time - update_time > 5 * 1000) {
			boardDAO.increaseViewcnt(bno);
			//세션에 시간을 저장: "update_time_" + bno는 다른변수와 중복되지 않게 명명.
			session.setAttribute("update_time_" + bno, current_time);
		}
	}

}
