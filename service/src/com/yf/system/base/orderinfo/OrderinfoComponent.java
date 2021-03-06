/**
 * 版权所有, 允风文化
 * Author: 允风文化 项目开发组
 * copyright: 2012
 */
 
package com.yf.system.base.orderinfo;

import java.sql.SQLException;
import java.util.*;


import com.yf.system.base.util.PageInfo;

public class OrderinfoComponent   implements IOrderinfoComponent{ 
	
	
	private IOrderinfoManager orderinfoManager;
   
   
 	public IOrderinfoManager getOrderinfoManager() {
		return orderinfoManager;
	}

	public void setOrderinfoManager(IOrderinfoManager orderinfoManager) {
		this.orderinfoManager = orderinfoManager;
	}
  
 	/**
	 * 创建 订单信息表
	 * @param id
	 * @return deleted count 
	 */
	public Orderinfo createOrderinfo(Orderinfo orderinfo) throws SQLException{
	
		return orderinfoManager.createOrderinfo(orderinfo);
	}
	/**
	 * 删除 订单信息表
	 * @param id
	 * @return deleted count 
	 */
	public int deleteOrderinfo(long id){
	
		return orderinfoManager.deleteOrderinfo(id);
	}
	
	
	/**
	 * 修改 订单信息表
	 * @param id
	 * @return updated count 
	 */
	public int updateOrderinfo(Orderinfo orderinfo){
		return orderinfoManager.updateOrderinfo(orderinfo);
	
	}

		
	/**
	 * 修改 订单信息表但忽略空值 
	 * @param id
	 * @return 
	 */
	public int updateOrderinfoIgnoreNull(Orderinfo orderinfo){
			return orderinfoManager.updateOrderinfoIgnoreNull(orderinfo);
	
	}
	
	/**
	 * 查找 订单信息表
	 * @param where
	 * @param orderby
	 * @param limit
	 * @param offset
	 * @return
	 */
	public List findAllOrderinfo(String where, String orderby,int limit,int offset){
		return orderinfoManager.findAllOrderinfo(where, orderby,limit,offset);
	}
		
	
	/**
	 * 查找 订单信息表
	 * @param id
	 * @return
	 */
	public Orderinfo findOrderinfo(long id){
		return orderinfoManager.findOrderinfo(id);
	}
	
	/** 
	 * 查找 订单信息表
	 * @param where
	 * @param orderby
	 * @param pageinfo
	 * @return
	 */
	public List findAllOrderinfo(String where, String orderby,PageInfo pageinfo){
		return orderinfoManager.findAllOrderinfo(where, orderby,pageinfo);
	}
		
	/** 
	 * 根据Sql查找订单信息表
	 * @param sql
	 * @param limit
	 * @param offset
	 * @return
	 */
	public List findAllOrderinfo(String sql,int limit,int offset){
		return orderinfoManager.findAllOrderinfo(sql,limit,offset);
	}
	
	
	/**
	 * 执行Sql 订单信息表
	 * @param sql 
	 * @return updated count 
	 */
	public int excuteOrderinfoBySql(String sql){
		return orderinfoManager.excuteOrderinfoBySql(sql);
	}
	
	/**
	 * 执行Sql 
	 * @param sql 
	 * @return  count 
	 */
	public int countOrderinfoBySql(String sql){
		return orderinfoManager.countOrderinfoBySql(sql);
	}
}

