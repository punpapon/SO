<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function search() {
		document.forms[0].action = '<s:url value="/jsp/shopping/searchAdminSale.action"/>';
		document.forms[0].submit();
	}
	function clear() {
		document.forms[0].action = '<s:url value="/jsp/shopping/initAdminSale.action"/>';
		document.forms[0].submit();
	}
	function gotoView() {
		document.forms[0].action = '<s:url value="/jsp/shopping/gotoViewAdminSale.action"/>';
		document.forms[0].submit();
	}
</script>
<title>Insert title here</title>
</head>
<body>
<s:form>
	<div id="divSerachForm" class="RESULT_BOX BORDER_COLOR">
	
				<table class="FORM">
							<tr style="display: none;">
								<td class="BORDER"></td>
								<td class="LABEL"></td>
								<td class="VALUE"></td>
								<td class="LABEL"></td>
								<td class="VALUE"></td>
								<td class="BORDER"></td>
							</tr>
							<tr>
								<td class="BORDER"></td>
								<td class="LABEL"><s:text name="เลขที่ใบสั่งซื้อ"/></td>
								<td class="VALUE"><s:textfield name="criteria.orderId" /></td>
								<td class="LABEL"><s:text name="สถานะสินค้า"/></td>
								<td class="VALUE"><s:select name="criteria.statusProduct"
									list="#{'Y':'จัดส่งแล้ว','N':'ยังไม่ได้จัดส่ง'}" 
									headerKey=""
									headerValue="ทั้งหมด" 									
									cssClass = "combox"
									/></td>
								<td class="BORDER"></td>
							</tr>
							<tr>
								<td class="BORDER"></td>
								<td class="LABEL"><s:text name="จำนวนข้อมูลต่อหน้า"/></td>
								<td class="VALUE"><s:select id="criteria_linePerPage" cssClass="lpp-style clearform" name="criteria.linePerPage"  list="LPP" /></td>
								<td class="LABEL"></td>
								<td class="VALUE"></td>
								<td class="BORDER"></td>
							</tr>
							<tr>
								<td class="BORDER"></td>
								<td class="LABEL"></td>
								<td class="VALUE"></td>
								<td class="LABEL"><s:submit value="Search" onclick="search()"/></td>
								<td class="VALUE"><s:submit value="Clear" onclick="clear()"/></td>
								<td class="BORDER"></td>
							</tr>
										
				</table>
					</div>
					<s:if test="%{lstResult != null and lstResult.size() > 0}"> 
					<div style="width: 100%;">
						<table>
							<thead>
								<tr>
									<th style="width: 75px;"><s:text name="order.no"/></th>						
									<th style="width: 200px;"><s:text name="order.orderId"/></th>
									<th style="width: 200px;"><s:text name="order.date"/></th>
									<th style="width: 200px;"><s:text name="order.fullName"/></th>
									<th style="width: 200px;"><s:text name="order.total"/></th>
									<th style="width: 200px;"><s:text name="order.status"/></th>
									<th style="width: 100px;"><s:text name="order.show"/></th>
									<th style="width: 100px;"><s:text name="order.ship"/></th>
									<th style="width: 100px;"><s:text name="order.cancel"/></th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="lstResult" var="result" status="listResultStatus" >
									<tr>
										<td align="center"><s:property value="#listResultStatus.index + 1"/></td>
										<td align="center"><s:property value="#result.orderId" /></td>
										<td align="center"><s:property value="#result.orderName" /></td>
										<td align="center"><s:property value="#result.fullName" /></td>
										<td align="center"><s:property value="#result.totalValue" /></td>
										<td align="center"><s:property value="#result.statusShip" /></td>
										<td align="center"><img src="<s:url value='/images/icon/i_search.png' />" width="30px" height="30px" onclick="gotoView()"/></td>
										<td align="center"></td>
										<td align="center"></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
				 </s:if> 
				 <s:hidden name="adminSale.id" />
				</s:form>
</body>
  <%-- <body>
	<s:form id="searchForm" name="searchForm" method="post" namespace="/jsp/shopping" action="initAction" cssClass="margin-zero" onsubmit="return false;">
	
	<!--------------------------------------- divSearchCriteria --------------------------------------->
	<div id="divSerachForm" class="CRITERIA">
	
		<div id="divCriteria" class="RESULT_BOX BORDER_COLOR">
			<div class="RESULT_BOX_TITAL ">
				<table class="TOTAL_RECORD">
					<tr>
						<td class="LEFT" style="width: 10%;">
							<s:text name="criteria"/>
						</td>
					</tr>
				</table>
			</div>
			
			<table class="FORM">
				<tr style="display: none;">
					<td class="BORDER"></td>
					<td class="LABEL"></td>
					<td class="VALUE"></td>
					<td class="LABEL"></td>
					<td class="VALUE"></td>
					<td class="BORDER"></td>
				</tr>
				<tr>
					<td class="BORDER"></td>
					<td class="LABEL"><s:text name="เลขที่ใบสั่งซื้อ"/></td>
					<td class="VALUE"><s:textfield name="criteria.orderId" /></td>
					<td class="LABEL"><s:text name="สถานะสินค้า"/></td>
					<td class="VALUE"><s:textfield name="criteria.orderStatus" /></td>
					<td class="BORDER"></td>
				</tr>
				<tr>
					<td class="BORDER"></td>
					<td class="LABEL"><s:text name="จำนวนข้อมูลต่อหน้า"/></td>
					<td class="VALUE"><s:select id="criteria_linePerPage" cssClass="lpp-style clearform" name="criteria.linePerPage"  list="LPP" /></td>
					<td class="LABEL"></td>
					<td class="VALUE"></td>
					<td class="BORDER"></td>
				</tr>
			
			
			</table>
			
				 <s:include value="/jsp/template/button.jsp">
					<s:param name="buttonType" value="%{'search,enable'}" />
				</s:include> 
					
		</div>
	</div>
		
	

	
	<!--------------------------------------- divResult --------------------------------------->
	<div class="RESULT">	
		<!-- code for display table -->
		<div id="div_datatable" class="ex_highlight_row" style="display: none;">  
            <table class="display" id="tableResult">
                <thead>
                    <tr>
                        <th><s:text name="emp.code"/></th>
                        <th><input id="criteria_selectedIds" type="checkbox" name="criteria.selectedIds" onClick="checkboxToggle('criteria.selectedIds',this.checked)" /></th>                                        
                        <th><s:text name="emp.nameEmp"/></th>
                        <th><s:text name="emp.sex"/></th>
                        <th><s:text name="emp.groupEmp"/></th>
                        <th><s:text name="emp.department"/></th>
                                         
                        <th><s:text name="emp.startWorkDate"/></th>
                        <th><s:text name="emp.endWorkDate"/></th>
                        <th><s:text name="emp.statusWork" /></th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="16" class="dataTables_empty">Loading data from server</td>
                    </tr>
                </tbody>  
            </table>            
       	</div>
   	</div>
       	
		
   	<!--------------------------------------- include --------------------------------------->
   	 <s:hidden><s:include value="/jsp/template/hiddenSearchForDatatable.jsp" /></s:hidden>
   	
   	<s:hidden name="shopping.id" />
   	<s:token />
   	<!--------------------------------------- include --------------------------------------->
	
	</s:form> --%>

</html>