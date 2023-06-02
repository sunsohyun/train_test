package com.test.korail.service;

import java.util.ArrayList;

import com.test.korail.vo.OrderVo;

public interface OrderService {
	
	ArrayList<OrderVo> getSelect();

	OrderVo getSelected(String reservnum);
	
	public String getCancelResult(String reservnum);
	
	ArrayList<OrderVo> getOrderSelect();
}
