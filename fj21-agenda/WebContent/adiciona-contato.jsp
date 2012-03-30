<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="http://jquery-ui.googlecode.com/svn/trunk/ui/i18n/jquery.ui.datepicker-pt-BR.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/jquery.css" rel="stylesheet">
<title>Adiciona Contatos</title>
</head>
<c:import url="cabecalho.jsp" />
<form action="adicionaContatos">
	Nome: <input type="text" name="nome" /><br/>
	E-mail: <input type="text" name="email" /><br/>
	Endereço: <input type="text" name="endereco" /><br/>
	Data Nascimento: <caelum:campoData id="dataNascimento" /><br/>
	<input type="submit" value="Gravar">
</form>

<c:import url="rodape.jsp" />