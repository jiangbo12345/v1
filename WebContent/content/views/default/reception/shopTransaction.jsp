<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品交易管理</title>
<link href="../content/static/css/reception/css.css" rel="stylesheet"
	type="text/css" />
<link href="../content/static/css/reception/qt.css" rel="stylesheet"
	type="text/css" />
<link href="../content/static/css/reception/persc.css" rel="stylesheet"
	type="text/css" />
<link href="../content/static/css/reception/jiaoyi.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="../content/static/js/reception/png.js"></script>
<script type="text/javascript"
	src="../content/static/js/reception/sdmenu.js"></script>
<script type="text/javascript"
	src="../content/static/js/reception/jquery-1.4.2.min.js"></script>
<script type="text/javascript"
	src="../content/static/js/reception/js.js"></script>
<SCRIPT src="../content/static/js/reception/ScrollPic.js"
	type=text/javascript></SCRIPT>
	<link href="../content/static/css/bootstrap/bootstrap.css" rel="stylesheet"/>
<link href="../content/static/css/datetime/jquery-clockpicker.min.css"
	rel="stylesheet"/>
<link href="../content/static/css/datetime/jquery.datetimepicker.css"
	rel="stylesheet"/>
<script type="text/javascript" src="../content/static/js/lib/jquery.min.js"></script>
<script type="text/javascript" src="../content/static/js/lib/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../content/static/js/datetime/jquery.datetimepicker.js"></script>
<script type="text/javascript"
	src="../content/static/js/datetime/bootstrap-clockpicker.min.js"></script>
</head>

<body>
	<jsp:include page="../common/prosceniumNav.jsp"></jsp:include>
	<div class="con">

		<!---------------   left   ----------------------->
		<jsp:include page="left.jsp"></jsp:include>
		<div class="Jiaoyi">
			<div class="biao">我是卖家&gt;交易管理&gt;全部卖出交易</div>
			<div class="nei">
				<div class="nei01">
					<table width="760" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="30"><div align="left">
									商品名称： <input type="text" name="textfield" id="textfield" />
								</div></td>
							<td colspan="2"><div align="left">
									成交时间：从 <input type="text" name="textfield9" id="textfield9" style="width: 75px;" placeholder="年-月-日"
										/>&nbsp;&nbsp;<input type="text" name="textfield10" id="textfield10" onclick="timessss('textfield10');" style="width: 45px;"
										placeholder="时：分"/> 到 <input type="text" placeholder="年-月-日" 
										name="textfield11" id="textfield11" style="width: 75px;"/>
										<input type="text" placeholder="时：分" name="textfield12" id="textfield12"  onclick="timessss('textfield12');" style="width: 45px;"
										/> 
								</div>
								<div align="left"></div></td>
						</tr>
						<tr>
							<td height="30"><div align="left">
									卖家昵称： <input type="text" name="textfield2" id="textfield2" />
								</div></td>
							<td><div align="left">
									订单状态：
									<select name="textfield5" id="textfield5"
								placeholder="状态">
								<option value="">-----状态-----
								<option value="waitAcceptance">等待验收
								<option value="waitPayment">等待支付
								<option value="inForwarding">在转发
								<option value="waitDelivery">等待发货
								<option value="transitGoods">在途货物
								<option value="consigneeSigning">收货人签单
								<option value="refundOrderForm">退款订单
								<option value="completionTransaction">完成交易
								<option value="closeTransaction">关闭交易
								<option value="autoCloseTransaction">自动关闭交易
							</select>
								</div></td>
							<td><div align="left">
									评价状态： 
									<select name="textfield6" id="textfield6"
								placeholder="状态">
								<option value="">-----状态-----
								<option value="needsComments">需要我评价
								<option value="iAlreadyComments">我已经评价
								<option value="orthSideComments">对方已评价
								<option value="bothSideComments">双方已平价
							</select>
								</div></td>
						</tr>
						<tr>
							<td height="30"><div align="left">
									订单编号： <input type="text" name="textfield3" id="textfield3" />
								</div></td>
							<td><div align="left">
									物流服务：
									<select name="textfield7" id="textfield7"
								placeholder="状态">
								<option value="">-----状态-----
								<option value="cashOnDelivery">货到付款
								</select>
								</div></td>
							<td><div align="left">
									售后服务： 
									<select name="textfield8" id="textfield8"
								placeholder="状态">
								<option value="">-----状态-----
								<option value="buyComplaint">买家投诉
								<option value="myComplaint">我已投诉
								<option value="refunding">退款中
								</select>
								</div></td>
						</tr>
<!-- 						<tr> -->
<!-- 							<td height="30"><div align="left"> -->
<!-- 									交易类型： <select name="select3" id="select3" style="width: 150px"> -->
<!-- 										<option>所有类型</option> -->
<!-- 									</select> -->
<!-- 								</div></td> -->
<!-- 							<td><div align="left"></div></td> -->
<!-- 							<td><div align="left"></div></td> -->
<!-- 						</tr> -->
						<tr>
							<td height="30"><div align="left">
									<input type="submit" name="button" id="button" value="搜索"
										style="width: 50px; color: #36C" /> 
<!-- 									<input type="submit" name="button" id="button" value="批量导出" -->
<!-- 										style="width: 100px; color: #36C" /> -->
								</div></td>
							<td><div align="left"></div></td>
							<td><div align="left"></div></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
				<script type="text/javascript">
 						$('#textfield9').datetimepicker({
								lang:'ch',
								timepicker:false,
								format:'Y-m-d',
								formatDate:'Y-m-d',
						});
						$('#textfield11').datetimepicker({
								lang:'ch',
								timepicker:false,
								format:'Y-m-d',
								formatDate:'Y-m-d',
						});
						function timessss(obj){
							var hour=<%=(new  Date()).getHours() %>
							var minute=<%=(new  Date()).getMinutes() %>
							var a = obj;
							var id = a.substring(a.length-2,a.length);
								if($('#textfield'+(id-1)).val() !=""){
									$('#'+a).clockpicker({
										placement: 'bottom',
										align: 'left',
										autoclose: true,
										'default': hour+':'+minute
									});
								}
						}
				</script>
		<div class="quanbu_dan autoh">
			<div class="tab-title" style="width: 780px;">
				<ul id="myTab1">
					<li class="active1" onmouseover="nTabs(this,0,&#39;最近三个月订单&#39;);"
						style="top: 0; left: 0;">最近三个月订单</li>
					<li class="normal1" onmouseover="nTabs(this,1,&#39;等待买家付款&#39;);"
						style="top: 0; left: 76px;">等待买家付款</li>
					<li class="normal1" onmouseover="nTabs(this,2,&#39;等待发货&#39;);"
						style="top: 0; left: 150px;">等待发货</li>
					<li class="normal1" onmouseover="nTabs(this,3,&#39;已发货&#39;);"
						style="top: 0; left: 150px;">已发货</li>
<!-- 					<li class="normal1" onmouseover="nTabs(this,4,&#39;退款中&#39;);" -->
<!-- 						style="top: 0; left: 150px;">退款中</li> -->
					<li class="normal1" onmouseover="nTabs(this,4,&#39;需要评价&#39;);"
						style="top: 0; left: 150px;">需要评价</li>
					<li class="normal1" onmouseover="nTabs(this,5,&#39;成功的订单&#39;);"
						style="top: 0; left: 150px;">成功的订单</li>
					<li class="normal1" onmouseover="nTabs(this,6,&#39;关闭的订单&#39;);"
						style="top: 0; left: 150px;">关闭的订单</li>
					<li class="normal1" onmouseover="nTabs(this,7,&#39;三个月前订单&#39;);"
						style="top: 0; left: 150px;">三个月前订单</li>

				</ul>
			</div>
			<div style="clear: both"></div>
			<table width="470" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td width="73%" height="160" valign="top"><div align="center">
								<div class="TabContent" id="myTab1_0"
									style="width: 780px; display:">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">25</div></td>
												<td><div align="center">20</div></td>
												<td><div align="center">ffff</div></td>
												<td><div align="center">ffff</div></td>
												<td><div align="center">ff</div></td>
												<td><div align="center">ff</div></td>
												<td><div align="center">ff</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>
								<div class="TabContent" id="myTab1_1"
									style="display: none; width: 780px;">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">50</div></td>
												<td><div align="center">22</div></td>
												<td><div align="center">111</div></td>
												<td><div align="center">111</div></td>
												<td><div align="center">111</div></td>
												<td><div align="center">11</div></td>
												<td><div align="center">11</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>
								<div class="TabContent" id="myTab1_2"
									style="display: none; width: 780px;">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">700</div></td>
												<td><div align="center">70</div></td>
												<td><div align="center">888</div></td>
												<td><div align="center">22</div></td>
												<td><div align="center">50</div></td>
												<td><div align="center">33</div></td>
												<td><div align="center">555</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>
								<div class="TabContent" id="myTab1_3"
									style="display: none; width: 780px;">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">900</div></td>
												<td><div align="center">100</div></td>
												<td><div align="center">bbb</div></td>
												<td><div align="center">bbb</div></td>
												<td><div align="center">fff</div></td>
												<td><div align="center">ddd</div></td>
												<td><div align="center">bbb</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>

								<div class="TabContent" id="myTab1_4"
									style="display: none; width: 780px;">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">350</div></td>
												<td><div align="center">540</div></td>
												<td><div align="center">kkk</div></td>
												<td><div align="center">2kkk</div></td>
												<td><div align="center">kkk</div></td>
												<td><div align="center">2kkk</div></td>
												<td><div align="center">kkkk</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>

								<div class="TabContent" id="myTab1_5"
									style="display: none; width: 780px;">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">114</div></td>
												<td><div align="center">250</div></td>
												<td><div align="center">220</div></td>
												<td><div align="center">4572</div></td>
												<td><div align="center">55</div></td>
												<td><div align="center">44</div></td>
												<td><div align="center">2222</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>

								<div class="TabContent" id="myTab1_6"
									style="display: none; width: 780px;">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">225</div></td>
												<td><div align="center">230</div></td>
												<td><div align="center">20</div></td>
												<td><div align="center">22</div></td>
												<td><div align="center">05</div></td>
												<td><div align="center">2222</div></td>
												<td><div align="center">2222</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>

								<div class="TabContent" id="myTab1_7"
									style="display: none; width: 780px;">
									<div class="pro">
										<table width="770" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="190" height="30" bgcolor="#EEEEEE"><div
														align="center">商品</div></td>
												<td width="73" bgcolor="#EEEEEE"><div align="center">单价（元）</div></td>
												<td width="54" bgcolor="#EEEEEE"><div align="center">数量</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">售后</div></td>
												<td width="178" bgcolor="#EEEEEE"><div align="center">买家</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">交易状态</div></td>
												<td width="87" bgcolor="#EEEEEE"><div align="center">实收款（元）</div></td>
												<td width="57" bgcolor="#EEEEEE"><div align="center">评价</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center">商品名称是什么</div></td>
												<td><div align="center">584</div></td>
												<td><div align="center">556</div></td>
												<td><div align="center">220</div></td>
												<td><div align="center">2222</div></td>
												<td><div align="center">000</div></td>
												<td><div align="center">2222</div></td>
												<td><div align="center">2222</div></td>
											</tr>
											<tr>
												<td height="30"><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
												<td><div align="center"></div></td>
											</tr>
										</table>
										<table width="760" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="81" height="30" bgcolor="#EEEEEE"><div
														align="center">
														<input type="checkbox" name="CheckboxGroup1" value="复选框"
															id="CheckboxGroup1_0" />全选
													</div></td>
												<td width="66" bgcolor="#EEEEEE"><div align="center">批量发货</div></td>
												<td width="74" bgcolor="#EEEEEE"><div align="center">批量标记</div></td>
												<td width="112" bgcolor="#EEEEEE"><div align="center">批量免运费</div></td>
												<td width="427" bgcolor="#EEEEEE"><div align="left">
														<input type="checkbox" name="CheckboxGroup1_" value="复选框"
															id="CheckboxGroup1_" /> 不显示已关闭的订单
													</div></td>
											</tr>
											<tr>
												<td height="30" colspan="5">没有符合条件的商品，请尝试其他搜索条件。</td>
											</tr>
										</table>
									</div>
								</div>

							</div></td>
					</tr>
				</tbody>
			</table>
			<script language="JavaScript" type="text/javascript">
				//tab变换
				function nTabs(thisObj, Num, Value) {
					if (thisObj.className == "active1")
						return;

					//得到LI的父ID 后面会重组ID用到
					var tabObj = thisObj.parentNode.id;

					var tabList = document.getElementById(tabObj)
							.getElementsByTagName("li");
					for (i = 0; i < tabList.length; i++) {

						//重组ID项 li 父ID + "_"+数组的键值
						var tabOptions = tabObj + "_" + i;

						if (i == Num) {
							document.getElementById(tabOptions).style.display = 'block';
							thisObj.className = "active1";
						} else {
							document.getElementById(tabOptions).style.display = 'none';
							tabList[i].className = "normal1";
						}
					}
				}
			</script>
		</div>
	</div>
		<div class="clear"></div>
	<jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>