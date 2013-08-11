package Branch;

public class Branch {
	private int branch_no;					//지점번호
	private String branch_name;				//지점명
	private String branch_basicAddress;		//지점기본주소
	private String branch_detailAddress;	//지점상세주소
	private int branch_checkDelivery;		//지점배달가능여부 체크
	private String branch_owner;			//지점대표자명
	private String branch_telephone1;		//연락처1
	private String branch_telephone2;		//연락처2	
	
	public int getBranch_no() {
		return branch_no;
	}
	public void setBranch_no(int branch_no) {
		this.branch_no = branch_no;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getBranch_basicAddress() {
		return branch_basicAddress;
	}
	public void setBranch_basicAddress(String branch_basicAddress) {
		this.branch_basicAddress = branch_basicAddress;
	}
	public String getBranch_detailAddress() {
		return branch_detailAddress;
	}
	public void setBranch_detailAddress(String branch_detailAddress) {
		this.branch_detailAddress = branch_detailAddress;
	}
	public int getBranch_checkDelivery() {
		return branch_checkDelivery;
	}
	public void setBranch_checkDelivery(int branch_checkDelivery) {
		this.branch_checkDelivery = branch_checkDelivery;
	}
	public String getBranch_owner() {
		return branch_owner;
	}
	public void setBranch_owner(String branch_owner) {
		this.branch_owner = branch_owner;
	}
	public String getBranch_telephone1() {
		return branch_telephone1;
	}
	public void setBranch_telephone1(String branch_telephone1) {
		this.branch_telephone1 = branch_telephone1;
	}
	public String getBranch_telephone2() {
		return branch_telephone2;
	}
	public void setBranch_telephone2(String branch_telephone2) {
		this.branch_telephone2 = branch_telephone2;
	}
}
