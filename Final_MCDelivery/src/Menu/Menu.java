package Menu;

public class Menu {
	private int menu_no;			//메뉴번호
	private String menu_name;		//메뉴명
	private int menu_price;			//메뉴가격
	private int menu_kcal;			//메뉴열량
	private String menu_url;		//메뉴이미지URL
	private String menu_content;	//메뉴설명
	
	public int getMenu_no() {
		return menu_no;
	}
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public int getMenu_kcal() {
		return menu_kcal;
	}
	public void setMenu_kcal(int menu_kcal) {
		this.menu_kcal = menu_kcal;
	}
	public String getMenu_url() {
		return menu_url;
	}
	public void setMenu_url(String menu_url) {
		this.menu_url = menu_url;
	}
	public String getMenu_content() {
		return menu_content;
	}
	public void setMenu_content(String menu_content) {
		this.menu_content = menu_content;
	}
}
