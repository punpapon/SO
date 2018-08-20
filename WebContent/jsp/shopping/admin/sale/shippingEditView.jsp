<%@ page contentType="text/html; charset=UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function closeView(){
		alert("SSS");
		document.forms[0].action = '<s:url value="/jsp/shopping/searchAdminSale.action"/>';
		document.forms[0].submit();
	}
</script>
<title>Insert title here</title>
</head>
<body>
<div class="RESULT_BOX BORDER_COLOR" >
<table class="FORM" >
<br>
<br>
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
								<td class="LABEL" ><s:text name="view.orderId"/></td>
								<td class="VALUE" style="color: blue;"><s:text name="adminSale.orderId" /></td>
								<td class="LABEL"><s:text name="view.fullName"/></td>
								<td class="VALUE" style="color: blue;"><s:text name="adminSale.fullName" /></td>
								<td class="BORDER"></td>
							</tr>
							<tr>
								<td class="BORDER"></td>
								<td class="LABEL"><s:text name="view.statusProduct"/></td>
								<td class="VALUE"><s:textfield name="adminSale.statusProduct" disabled="true"/></td>
								<td class="LABEL"><s:text name="view.shipDate"/><em>*</em></td>
								<td class="VALUE"><s:textfield name="adminSale.date" disabled="true" /></td>
								<td class="BORDER"></td>
							</tr>
							<tr>
								<td class="BORDER"></td>
								<td class="LABEL"><s:text name="view.shipNo"/><em>*</em></td>
								<td class="VALUE"><s:textfield name="adminSale.shipNo" disabled="true"/></td>
								<td class="LABEL"></td>
								<td class="VALUE"></td>
								<td class="BORDER"></td>
							</tr>							
							<tr>
								<td class="BORDER"></td>
								<td class="LABEL"><s:text name="view.remark"/></td>
								<td class="VALUE"><s:textarea name="adminSale.remark" disabled="true"/></td>
								<td class="LABEL"></td>
								<td class="VALUE"></td>
								<td class="BORDER"></td>							
							</tr>
							<tr>
								<td class="BORDER"></td>
								<td class="LABEL"></td>
								<td class="VALUE"></td>
								<td class="LABEL"></td>
								<td class="VALUE"><s:submit align="center" value="Close" onclick="closeView()"></s:submit></td>
								<td class="BORDER"></td>							
							</tr>
					</table>	
							
					</div> 
					
					
					
							
				 					
</body>
</html>