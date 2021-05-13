package kr.ac.mlec.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.ac.mlec.login.vo.LoginVO;
import kr.ac.mlec.util.ConnectionFactory;
import kr.ac.mlec.util.JDBCClose;

public class LoginDAO {
	
	/**
	 * 로그인을 위해 클라이언트가 입력한 id, password를 가지는 loginVO를 이용하여 t_member테이블의 해당 회원의 존재여부 판단
	 * id와 password가 일치하는 회원이 존재하면 해당회원의 정보(레코드)를 반환
	 * @param loginVO
	 * @return id에 해당하는 LoginVO회원객체
	 */
	
	public LoginVO login(LoginVO loginVO) {
		
		Connection 			conn = null;
		PreparedStatement 	pstmt = null;
		LoginVO userVO = null;
		
		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select id, name, type ");
			sql.append("  from t_member ");
			sql.append(" where id = ? and password = ? ");
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, loginVO.getId());
			pstmt.setString(2, loginVO.getPassword());
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String type = rs.getString("type");
				
				userVO = new LoginVO();
				userVO.setId(id);
				userVO.setName(name);
				userVO.setType(type);
			}
				
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(conn, pstmt);
		}
		
		return userVO;
	}

}
















