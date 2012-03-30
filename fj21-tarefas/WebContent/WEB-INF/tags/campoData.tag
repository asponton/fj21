<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true"%>
<%@ attribute name="value" type="java.util.Date" %>

<input type="text" id="${id}" name="${id}" value="<fmt:formatDate value="${value}" pattern="dd/MM/yyyy"/>" />
<script type="text/javascript">
	$("#${id}").datepicker({dateformat: 'dd/mm/yy'});
</script>