package com.ict.adminlist_super.model.vo;

public class Adminlist_Super_VO {

	private int admin_idx, admin_role;
	private String admin_id, admin_pwd, admin_salt, admin_nickname, admin_datetime;

	public int getAdmin_idx() {
		return admin_idx;
	}

	public void setAdmin_idx(int admin_idx) {
		this.admin_idx = admin_idx;
	}

	public int getAdmin_role() {
		return admin_role;
	}

	public void setAdmin_role(int admin_role) {
		this.admin_role = admin_role;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pwd() {
		return admin_pwd;
	}

	public void setAdmin_pwd(String admin_pwd) {
		this.admin_pwd = admin_pwd;
	}

	public String getAdmin_salt() {
		return admin_salt;
	}

	public void setAdmin_salt(String admin_salt) {
		this.admin_salt = admin_salt;
	}

	public String getAdmin_nickname() {
		return admin_nickname;
	}

	public void setAdmin_nickname(String admin_nickname) {
		this.admin_nickname = admin_nickname;
	}

	public String getAdmin_datetime() {
		return admin_datetime;
	}

	public void setAdmin_datetime(String admin_datetime) {
		this.admin_datetime = admin_datetime;
	}

}
