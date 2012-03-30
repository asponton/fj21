<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<title>Lista de Tarefas de ${usuarioLogado.login}</title>
</head>
<body>
<script type="text/javascript">
	function finalizaAgora(id) {
		$.post("finalizaTarefa", {'id' : id}, 
				function(retorno) {
					$("#tarefa_" + id).html("Finalizado!");
					$("#data_" + id).html(retorno);
		}); 
	}
	
	function removeTarefaAjax(id) {
		$.post("removeTarefaAjax", {'id' : id}, 
				function() {
					$("#tarefa_" + id).closest("tr").hide();
		}); 
	}
	
</script>

	<a href="novaTarefa">Criar nova Tarefa</a>
	<br/><br/>
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado</th>
			<th>Data de Finalização</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
		<tr>
			<td>${tarefa.id}</td>
			<td>${tarefa.descricao}</td>
			<c:if test="${tarefa.finalizado eq false}">
			<td id="tarefa_${tarefa.id}"><a href="#" onclick="finalizaAgora(${tarefa.id})">Finaliza agora?</a></td>
			</c:if>
			<c:if test="${tarefa.finalizado eq true}">
			<td>Sim</td>
			</c:if>
			<td id="data_${tarefa.id}">
				<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
			</td>
			<td width="200"></td>
			<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
			<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
			<td width="50"></td>
			<td id="tarefa_${tarefa.id}"><a href="#" onclick="removeTarefaAjax(${tarefa.id})"><img src="resources/img/excluir.jpeg"></a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>