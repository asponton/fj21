<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
	<head><title>Página de contatos</title></head>
<c:import url="cabecalho.jsp"/>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDAO"></jsp:useBean>
		<table>
			<c:forEach var="contato" items="${dao.lista}">
				<tr>
					<td>${contato.nome}</td>
					<td>
					<c:choose>
						<c:when test="${empty contato.email}">
							E-MAIL NÃO CADASTRADO!
						</c:when>
						<c:otherwise>
							<a href="mailto:${contato.email}">${contato.email}</a> 
						</c:otherwise>
					</c:choose>
					</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy" value="${contato.dataNascimento.time}"/></td>
				</tr>
			</c:forEach>
		</table>
<c:import url="rodape.jsp"/>