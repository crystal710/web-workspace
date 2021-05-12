package kr.ac.mlec.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import kr.ac.mlec.board.vo.BoardVO;
import kr.ac.mlec.util.ConnectionFactory;
import kr.ac.mlec.util.JDBCClose;

/**
 	t_board 테이블에 게시물 삽입, 수정, 삭제, 조회하는 기능을 구현한 클래스
 * 
 * @author 15N530
 *
 */
public class BoardDAO2 {
	
	/**
	 * 새로운 게시글을 삽입하는 기능
	 */
	public void insertBoard(String title, String writer, String content) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new ConnectionFactory().getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append(" insert into t_board(no, title, writer, content) ");
			sql.append(" values(seq_t_board_no.nextval, ?, ?, ?) ");
			 
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, title);
			pstmt.setString(2, writer);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		
		
	}
	
	public void insertBoard(BoardVO board) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new ConnectionFactory().getConnection();
			
			StringBuilder sql = new StringBuilder();
			sql.append(" insert into t_board(no, title, writer, content) ");
			sql.append(" values(seq_t_board_no.nextval, ?, ?, ?) ");
			 
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		
		
	}
	

}
