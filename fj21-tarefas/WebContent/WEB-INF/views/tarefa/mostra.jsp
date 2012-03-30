<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="http://jquery-ui.googlecode.com/svn/trunk/ui/i18n/jquery.ui.datepicker-pt-BR.js"></script>
<link type="text/css" href="resources/css/jquery.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Atualizar Tarefa</title>
</head>
<body>
	<h3>Alterar Tarefa - ${tarefa.id} - ${tarefa.descricao}</h3>
	<form action="atualizaTarefa" method="POST">
		<input type="hidden" name="id" value="${tarefa.id}">
		
		Descrição <br/>
		<textarea name="descricao" rows="5" cols="100">${tarefa.descricao}</textarea>
		<br/>
		
		Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado?'checked':''}/> <br/>
		
		Data de finalização: <br/>
		<caelum:campoData id="dataFinalizacao" value="${tarefa.dataFinalizacao.time}"/>
<!--		<input type="text" name="dataFinalizacao" value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>"/>-->
		
		<input type="submit" value="Atualizar"> 
	</form>
</body>
</html>