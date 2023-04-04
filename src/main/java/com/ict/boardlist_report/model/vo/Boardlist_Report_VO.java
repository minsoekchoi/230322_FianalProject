package com.ict.boardlist_report.model.vo;

public class Boardlist_Report_VO {
	private int report_idx, target_u_idx, room_idx, u_idx, report_type, report_delete;
	private String report_reason, report_datetime;

	public int getReport_idx() {
		return report_idx;
	}

	public void setReport_idx(int report_idx) {
		this.report_idx = report_idx;
	}

	public int getTarget_u_idx() {
		return target_u_idx;
	}

	public void setTarget_u_idx(int target_u_idx) {
		this.target_u_idx = target_u_idx;
	}

	public int getRoom_idx() {
		return room_idx;
	}

	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}

	public int getU_idx() {
		return u_idx;
	}

	public void setU_idx(int u_idx) {
		this.u_idx = u_idx;
	}

	public int getReport_type() {
		return report_type;
	}

	public void setReport_type(int report_type) {
		this.report_type = report_type;
	}

	public int getReport_delete() {
		return report_delete;
	}

	public void setReport_delete(int report_delete) {
		this.report_delete = report_delete;
	}

	public String getReport_reason() {
		return report_reason;
	}

	public void setReport_reason(String report_reason) {
		this.report_reason = report_reason;
	}

	public String getReport_datetime() {
		return report_datetime;
	}

	public void setReport_datetime(String report_datetime) {
		this.report_datetime = report_datetime;
	}

}
