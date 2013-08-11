package Board;

public class Board {
	private int board_id;				//글 번호
	private String board_title;			//글 제목
	private String board_content;		//글 내용
	private int board_password;			//글 비밀번호
	private String board_date;			//글 작성일자
	private String board_writer;		//글 작성자
	private String board_header;		//글 말머리
	private int board_readCount;		//글 조회수
	private int board_groupId;			//그룹 번호
	private String board_sequenceNo;	//시퀀스 번호
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getBoard_password() {
		return board_password;
	}
	public void setBoard_password(int board_password) {
		this.board_password = board_password;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_header() {
		return board_header;
	}
	public void setBoard_header(String board_header) {
		this.board_header = board_header;
	}
	public int getBoard_readCount() {
		return board_readCount;
	}
	public void setBoard_readCount(int board_readCount) {
		this.board_readCount = board_readCount;
	}
	public int getBoard_groupId() {
		return board_groupId;
	}
	public void setBoard_groupId(int board_groupId) {
		this.board_groupId = board_groupId;
	}
	public String getBoard_sequenceNo() {
		return board_sequenceNo;
	}
	public void setBoard_sequenceNo(String board_sequenceNo) {
		this.board_sequenceNo = board_sequenceNo;
	}
}
