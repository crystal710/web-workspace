package kr.ac.mlec.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.mlec.member.vo.MemberVO;
import kr.ac.mlec.util.ConnectionFactory;
import kr.ac.mlec.util.JDBCClose;

/**
 * Database t_member와 관련된 회원 등록, 수정, 삭제, 조회 기능클래스
 * @author DA
 *
 */
public class MemberDAO {
		private String url 		= "jdbc:oracle:thin:@localhost:1521:xe";
		private String user 	= "hr";
		private String password = "hr";
		
		/**
		 * 회원 id에 해당 회원 조회 서비스
		 * @param no 조회할 번호
		 * @return 해당게시물
		 */
		public MemberVO selectById(String id) {
			
			Connection 			conn = null;
			PreparedStatement 	pstmt = null;
			MemberVO 			member = null;
			
			try {
				conn = new ConnectionFactory().getConnection();
				StringBuilder sql = new StringBuilder();
				sql.append("select id, name , password, (email_id || eamin_domain) as email, post ");
				sql.append("       , to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
				sql.append("  from t_member ");
				sql.append(" where id = ? ");
				
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					String memberId = rs.getString("id");
					String name = rs.getString("name");
					String password = rs.getString("password");
					String email = rs.getString("email");
					String post = rs.getString("post");
					String regDate = rs.getString("reg_date");
					
					member = new MemberVO(memberId, name, password, email, post, regDate);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
			return member;
		}
		
		/**
		 * 전체 회원 조회
		 * @return List<BoardVO> 회원
		 */
		public List<MemberVO> selectAllMember() {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			List<MemberVO> list = new ArrayList<>();
			
			try {
				conn = new ConnectionFactory().getConnection();

				StringBuilder sql = new StringBuilder();
				sql.append("select id, name , to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
				sql.append("  from t_member ");
				sql.append(" order by no ");

				pstmt = conn.prepareStatement(sql.toString());
				ResultSet rs = pstmt.executeQuery();

				while (rs.next()) {
					String id = rs.getString("id");
					String name = rs.getString("name");
					String regDate = rs.getString("reg_date");

					MemberVO member = new MemberVO(id, name, regDate);
					list.add(member);
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
			
			return list;
		}
		
		/**
		 * 새로운 회원 등록서비스
		 */
		public void insertMember(MemberVO member) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = new ConnectionFactory().getConnection();
				StringBuilder sql = new StringBuilder();
				sql.append("insert into t_board(id, name, password, post) ");
				sql.append(" values(?, ?, ?, ?) ");
				
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getName());
				pstmt.setString(3, member.getPassword());
				pstmt.setString(4, member.getPost());
				
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
		}
		
		/**
		 * 회원 삭제 서비스
		 * @param no 삭제할 게시물 번호
		 */
		public void deleteMember(String id) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = new ConnectionFactory().getConnection();
				
				StringBuilder sql = new StringBuilder();
				sql.append("delete t_member ");
				sql.append(" where id = ? ");
				
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, id);
				
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
		}
		
}
