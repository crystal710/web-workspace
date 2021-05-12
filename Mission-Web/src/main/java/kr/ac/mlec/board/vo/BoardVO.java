package kr.ac.mlec.board.vo;
/*
 	alt+shift+s 누른후 c 선택 :기본생성자
 			 		o선택 : 매개변수 가지는 생성자
 			 		r선택 : getter, setter 메소드 생성
 			 		v선택 : 메소드 오버라이드
 			 		s선택 : toString() 메소드 오버라이드
 */
public class BoardVO {
	private int no;
	private String title;
	private String writer;
	private String content;
	private int viewCnt;
	private String regDate;

	public BoardVO() {

	}

	public BoardVO(int no, String title, String writer, String content, int viewCnt, String regDate) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.viewCnt = viewCnt;
		this.regDate = regDate;
	}
	

	public BoardVO(int no, String title, String writer, String regDate) {
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.regDate = regDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content + ", viewCnt="
				+ viewCnt + ", regDate=" + regDate + "]";
	}
	
	
}
