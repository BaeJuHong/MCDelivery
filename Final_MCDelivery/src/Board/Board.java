package Board;

public class Board {
	private int board_id;				//�� ��ȣ
	private String board_title;			//�� ����
	private String board_content;		//�� ����
	private int board_password;			//�� ��й�ȣ
	private String board_date;			//�� �ۼ�����
	private String board_writer;		//�� �ۼ���
	private String board_header;		//�� ���Ӹ�
	private int board_readCount;		//�� ��ȸ��
	private int board_groupId;			//�׷� ��ȣ
	private String board_sequenceNo;	//������ ��ȣ
	
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
