package com.mega.project;

import java.util.ArrayList;
import java.util.List;


public interface BoardDAO {
	//1. �Խñ� �ۼ�
	public void create(BoardVO vo) throws Exception;
	//2. �Խñ� �󼼺���
	public BoardVO read(int bno) throws Exception;
	//3. �Խñ� ����
	public void update(BoardVO vo) throws Exception;
	//4. �Խñ� ����
	public void delete(int bno) throws Exception;
	//5. �Խñ� ��ü ���
	public List<BoardVO> listAll() throws Exception;
	//6. �Խñ� ��ȸ ����
	public void increaseViewcnt(int bno) throws Exception;
	//7. �Խñ� ��ü ������ �� ��������
	public int readall() throws Exception;
}
