<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="webwork" prefix="ww"%>
<%
	 /**
	 * 版权所有, 允风文化
	 * Author: 允风文化 项目开发组
	 * copyright: 2012
	 */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>销售报表列表</title>
<link href="style/base.css" rel="stylesheet" />
<link href="style/text.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="js/resources/css/ext-all.css" />
<script type="text/javascript" src="js/adapter/ext/ext-base.js"></script>
<script type="text/javascript" src="js/ext-all.js"></script>

</head>
<body>
<div id="member">
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	align="center" class="box">
	<tr>
		<td width="100%" height="29" class="box-bottom bg"><b
			class="anse"><span class="font-blue-cu">&nbsp;&nbsp;&nbsp;销售报表列表</span></b></td>
	</tr>
	<tr>
		<td valign="top">
		<form name="form1" method="post" action="sellreport.action">

		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td valign="top">
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td valign="top">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td><!--    
           <table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="120" height="20" align="right">名称：</td>    <td><span style="HEIGHT: 71px">
                  <input id="startnum2"   style="WIDTH: 181px" name="startnum2" />
                </span></td>
                
                <td width="30%" rowspan="3"><div align="left">
                  <input type="button" class="button" value="查询"/>
                </div></td>
              </tr>
              
             </table>
        --></td>
							</tr>
							<tr>
								<td>
								<table width="99%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="47" align="center">
										<div align="right"><a href="#" onclick="todaoru()"><input
											type="button" value="导入报表" class="button_h font-red"></a><!--
                &nbsp;&nbsp;&nbsp;<a href="#" onclick="updateItem()"><input type="button" value="修改" class="button_h font-red"></a>
                &nbsp;&nbsp;&nbsp;<a href="#" onclick="deleteItem()"><input type="button" value="删除" class="button_h font-red"></a>
                &nbsp;&nbsp;&nbsp;<a href="#" onclick="checkItem()"><input type="button" value="审核" class="button_h font-red"></a>
                --></div>
										</td>
									</tr>
								</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td height="306" valign="top">
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td width="100%">
								<table id="menutable" width="99%" border="1" align="center"
									class="table_color">
									<tbody>
										<tr class="tbody_color">

											<th class="table_color" width="54" height="25"><input
												type="checkbox" name="all1" value="1" onclick="selectall1()" />全选</th>

											
											<th class="table_color">出票时间</th><!--
											<th class="table_color">订单号</th>
											--><th class="table_color">出票效率</th>
											<th class="table_color">出票人</th>
											<th class="table_color">PNR</th>
											<th class="table_color">人数</th>
											<!--<th class="table_color">订单保证金</th>
											--><th class="table_color">票面总计</th>
											<th class="table_color">净价总计</th>
											<th class="table_color">机建燃油总计</th>
											<th class="table_color">总手续费</th><!--
											<th class="table_color">实收总计</th>
											--><!--<th class="table_color">支付方式</th>
											<th class="table_color">订单类型</th>
											<th class="table_color">机票类型</th>
											<th class="table_color">行程类型</th>
											<th class="table_color">出票方式</th>
											-->
											<!--<th class="table_color">OFFICE</th>
											--><th class="table_color">乘机人</th>
											<!--<th class="table_color">乘机人类型</th>
											<th class="table_color">出发地</th>
											<th class="table_color">目的地</th>
											--><th class="table_color">航程</th>
											<th class="table_color">航空公司</th>
											<th class="table_color">航班</th>
											<th class="table_color">航班日期</th>
											<th class="table_color">舱位</th>
											<th class="table_color">政策</th>
											<th class="table_color">票面价</th>
											<th class="table_color">单张净价</th>
											<th class="table_color">机建</th>
											<th class="table_color">燃油</th>
											<th class="table_color">单张结算价</th>
											<!--
											<th class="table_color">支付航空公司</th>
											<th class="table_color">支付类型</th>
											<th class="table_color">票证来源</th>
											<th class="table_color">后返利润</th>
											<th class="table_color">实际利润</th>
											<th class="table_color">加收服务费</th>
											<th class="table_color">备注</th>
											-->
											<th class="table_color">票号</th>


										</tr>

										<ww:iterator value="listSellreport">
											<tr id="<ww:property value="id"/>" align="center"
												onmouseover="currentcolor=this.style.backgroundColor;this.className='colortrin',this.style.fontWeight='';"
												onmouseout="this.className='colortrout',this.style.fontWeight='';">

												<td class="table_color"><input type="checkbox"
													name="selectid" value="<ww:property value="id"/>" /></td>


											
												<td class="table_color"><ww:property
													value="formatDate(rttime)" /></td><!--
												<td class="table_color"><ww:property value="ordercode" /></td>
												--><td class="table_color"><ww:property value="xiaolv" /></td>
												<td class="table_color"><ww:property value="username" /></td>
												<td class="table_color"><ww:property value="pnr" /></td>
												<td class="table_color"><ww:property value="number" /></td>
												<!--<td class="table_color"><ww:property
													value="recognizance" /></td>
												--><td class="table_color"><ww:property value="subprice" /></td>
												<td class="table_color"><ww:property value="jingjia" /></td>
												<td class="table_color"><ww:property
													value="jijianranyou" /></td>
												<td class="table_color"><ww:property value="poundage" /></td>
												<!--<td class="table_color"><ww:property value="pactprice" /></td>
												--><!--
												<td class="table_color"><ww:property value="paytype" /></td>
												<td class="table_color"><ww:property value="ordertype" /></td>
												<td class="table_color"><ww:property value="tickettype" /></td>
												<td class="table_color"><ww:property
													value="journeytype" /></td>
												<td class="table_color"><ww:property
													value="chupiaotype" /></td>
												-->
												<!--<td class="table_color"><ww:property value="office" /></td>
												--><td class="table_color"><ww:property value="passenger" /></td>
												<!--<td class="table_color"><ww:property value="usertype" /></td>
												<td class="table_color"><ww:property value="startcity" /></td>
												<td class="table_color"><ww:property value="endcity" /></td>
												--><td class="table_color"><ww:property value="sail" /></td>
												<td class="table_color"><ww:property value="aircompany" /></td>
												<td class="table_color"><ww:property
													value="flightnumber" /></td>
												<td class="table_color"><ww:property
													value="formatTimestamp(flighttime)" /></td>
												<td class="table_color"><ww:property value="cabin" /></td>
												<td class="table_color"><ww:property value="policy" /></td>
												<td class="table_color"><ww:property value="price" /></td>
												<td class="table_color"><ww:property
													value="leafletsnet" /></td>
												<td class="table_color"><ww:property value="jijian" /></td>
												<td class="table_color"><ww:property value="ranyou" /></td>
												<td class="table_color"><ww:property
													value="jiesuanprice" /></td>
													<!--
												<td class="table_color"><ww:property
													value="payaircompany" /></td>
												<td class="table_color"><ww:property
													value="zhifuleixing" /></td>
												<td class="table_color"><ww:property value="laiyuan" /></td>
												<td class="table_color"><ww:property value="houfan" /></td>
												<td class="table_color"><ww:property value="shijilirun" /></td>
												<td class="table_color"><ww:property value="fuwufei" /></td>
												<td class="table_color"><ww:property value="remark" /></td>
												-->
												<td class="table_color"><ww:property value="piaohao" /></td>


											</tr>
										</ww:iterator>

									</tbody>
								</table>
								</td>
							</tr>
							<tr>
								<td height="43" align="center"><ww:property
									value="pagination" /></td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</form>
		</td>
	</tr>
</table>
</div>
</body>
</html>


<script language="JavaScript">
	function toadd(){
		window.location="sellreport!toadd.action?<ww:property value="url"/>";
	}
	function todaoru(){
		window.location="sellreport!todaoru.action?<ww:property value="url"/>";
	}
	function deleteItem(){
			var length=document.form1.selectid.length;
			
			//唯一项
			if(length== undefined){
			
				if(document.form1.selectid.checked ==true)
				{
						var temp = confirm('确认删除吗？');
						if(temp==true){
						
							document.form1.action="sellreport!delete.action?id="+document.form1.selectid.value;
							document.form1.submit();
						}
						return;
				}
			}
			
			  	 if ( length == null || length==0 ){
					  	 
					  	  	 alert("你未选择任何内容");
					          return;
				  }else{
					   	 var len=0;
					   	 var uvalue=0;
					     for (var i = 0; i < length; i++)
					      {
					         
					         if( document.form1.selectid[i].checked ==true){
								uvalue=document.form1.selectid[i].value;
								len++;					         
					         }
						      
					      }
					      
					     
					      if(len==1){
					      	var temp = confirm('确认删除吗？');
							if(temp==true){
								document.form1.action="sellreport!delete.action?id="+uvalue;
								document.form1.submit();
							}
							return;
					      }else if (len>1){
					      	var temp = confirm('确认删除吗？');
					      	if(temp==true){
					      		document.form1.action="sellreport!batch.action?opt=1";
								document.form1.submit();
							}
							return;
					      
					      }
					      
				 }	
				
			alert("无效操作,你未选择任何内容!");
			return;
  }

 function updateItem(){
			var length=document.form1.selectid.length;
			
			//唯一项
			if(length== undefined){
			
				if(document.form1.selectid.checked ==true)
				{
						
						document.form1.action="sellreport!toedit.action?id="+document.form1.selectid.value;
						document.form1.submit();
						
						return;
				}
			}
			
			  	 if ( length == null || length==0 ){
					  	 
					  	  	 alert("你未选择任何内容");
					          return;
				  }else{
					   	 var len=0;
					   	 var uvalue=0;
					     for (var i = 0; i < length; i++)
					      {
					         
					         if( document.form1.selectid[i].checked ==true){
								uvalue=document.form1.selectid[i].value;
								len++;					         
					         }
						      
					      }
					      
					     
					      if(len==1){
					      		document.form1.action="sellreport!toedit.action?id="+uvalue;
								document.form1.submit();
								return;
					      }else if (len>1){
					      	var temp = confirm('只能选择一项进行操作？');
							return;
					      
					      }
					      
				 }	
				
			alert("无效操作,你未选择任何内容!");
			return;
  }
	
 function checkItem(){
			var length=document.form1.selectid.length;
			
			//唯一项
			if(length== undefined){
			
				if(document.form1.selectid.checked ==true)
				{
						
						document.form1.action="sellreport!tocheck.action?id="+document.form1.selectid.value;
						document.form1.submit();
						
						return;
				}
			}
			
			  	 if ( length == null || length==0 ){
					  	 
					  	  	 alert("你未选择任何内容");
					          return;
				  }else{
					   	 var len=0;
					   	 var uvalue=0;
					     for (var i = 0; i < length; i++)
					      {
					         
					         if( document.form1.selectid[i].checked ==true){
								uvalue=document.form1.selectid[i].value;
								len++;					         
					         }
						      
					      }
					      
					     
					      if(len==1){
					      		document.form1.action="sellreport!tocheck.action?id="+uvalue;
								document.form1.submit();
								return;
					      }else if (len>1){
					      	var temp = confirm('只能选择一项进行操作？');
							return;
					      
					      }
					      
				 }	
				
			alert("无效操作,你未选择任何内容!");
			return;
  }
 
			
function unselectall()
{
    if(document.form1.all.checked){
	document.form1.all.checked = document.form1.all.checked&0;
    }
}

function selectall1()
{
    var length=document.form1.selectid.length;
    document.form1.all1.checked = document.form1.all1.checked|0;
  

   if ( length ==undefined &&  document.form1.selectid!=null ){
    	  document.form1.selectid.checked=document.form1.all1.checked ;
          return;
    }


    if (length>1)
    {
      for (var i = 0; i < length; i++)
       {
          document.form1.selectid[i].checked = document.form1.all1.checked;
	      document.form1.getElementsByTagName("*").checked=document.form1.all1.checked;
       }
    }
}


</script>





