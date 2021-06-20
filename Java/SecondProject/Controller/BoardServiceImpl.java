package com.mega.project;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service // ���ο��� �ڹ� ���� ó��
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO boardDAO;
	
	//1. �Խñ� ����
	@Override
	public void create(BoardVO vo) throws Exception {
		String title = vo.getTitle();
		String content = vo.getContent();
		String writer = vo.getWriter();
		
		//*�±׹��� ó�� (< -> &lt; > -> &gt;)
		//replace(A, B) A�� B�� ����
		title = title.replace("<",  "&lt;");
		title = title.replace(">",  "&gt;");
		writer = writer.replace("<",  "&lt;");
		writer = writer.replace(">",  "&gt;");
		
		//*���鹮�� ó��
		title = title.replace(" ", "&nbsp;&nbsp;");
		writer = writer.replace(" ", "&nbsp;&nbsp;");
		
		//*�ٹٲ� ����ó��
		content = content.replace("\n",  "<br>");
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		boardDAO.create(vo);
	}
	
	//2. �Խñ� �󼼺���
	@Override
	public BoardVO read(int bno) throws Exception {
		return boardDAO.read(bno);
	}
	
	//3. �Խñ� ����
	@Override
	public void update(BoardVO vo) throws Exception {
		boardDAO.update(vo);
	}
	
	//4. �Խñ� ����
	@Override
	public void delete(int bno) throws Exception {
		boardDAO.delete(bno);
	}
	
	//5. �Խñ� ��ü ���
	@Override
	public List<BoardVO> listAll() throws Exception {
		return boardDAO.listAll();
	}
	
	//6. �Խñ� ��ȸ�� ����
	@Override
	public void increaseViewcnt(int bno, HttpSession session) throws Exception {
		long update_time = 0;
		//���ǿ� ����� ��ȸ�ð� �˻�
		//���ʷ� ��ȸ�� ��� ���ǿ� ����� ���� ���� ������ if���� ����X
		if(session.getAttribute("update_time_" + bno) != null) {
			//���ǿ��� �о����
			update_time = (long)session.getAttribute("update_time_" + bno);
		}
		//�ý����� ����ð��� current_time�� ����
		long current_time = System.currentTimeMillis();
		//�����ð��� ��� �� ��ȸ�� ���� ó�� 24 * 60 * 60 * 1000(24�ð�)
		//�ý��� ����ð� - �����ð� > �����ð�(��ȸ�� ������ �����ϵ��� ������ �ð�)
		if(current_time - update_time > 5 * 1000) {
			boardDAO.increaseViewcnt(bno);
			//���ǿ� �ð��� ����: "update_time_" + bno�� �ٸ������� �ߺ����� �ʰ� ���.
			session.setAttribute("update_time_" + bno, current_time);
		}
	}

}
