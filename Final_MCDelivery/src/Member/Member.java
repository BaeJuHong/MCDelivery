package Member;

public class Member {
	private int member_no;			//ȸ�� ��ȣ
	private String member_email;	//ȸ�� �̸���(ID)
	private String member_password;	//ȸ�� �н�����
	private String member_name;		//ȸ�� �̸�
	private int member_gender;		//ȸ�� ����
	private String member_phone;	//ȸ�� ����ó
	private int member_point;		//ȸ�� ���ϸ���
	private int member_grade;		//ȸ�� ���(Bronze-1, Silver-2, Gold-3, Platinum-4, Admin-9)
	
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public int getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(int member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	public int getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(int member_grade) {
		this.member_grade = member_grade;
	}
}
