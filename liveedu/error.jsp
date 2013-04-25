<%@taglib uri="/WEB-INF/tags.tld" prefix="icesi"%>
<%@ taglib uri="/WEB-INF/contenidoHTML.tld" prefix="siadcon"%>
<%@page import="co.edu.icesi.liveedu.*, java.util.*" %>
<html>
<head>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<title>Universidad Icesi - Live@Edu</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<meta name="keywords" content="icesi, profesores, profesor, universidad,
educacion, educación en cali, universidades, universidad icesi, programas
academicos, pregrado, postgrado, carreras, maestrias, especializaciones,
administracion de empresas">

<meta name="description" content="Profesores de la Universidad Icesi ">

<script language="JavaScript">
	function confirmacion(){
		<%if(request.getAttribute("confirmacion")!=null){%>
			alert('<%=request.getAttribute("confirmacion")%>');
		<%}%>
	}
</script>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>

<body onload="confirmacion();">
<table width="800" bgcolor="#FFFFFF" align="center">
<tr>
<td>
<html:img src="imgs/header.gif"/>
</td>
</tr>
<tr>
<td><table width="100%" height="10" align="center"><tr><td>&nbsp;</td></tr></table></td>
</tr>
<tr>
<td><table width="100%" align="center"><tr><td align="center">
<%session.invalidate();%>
	<br/><br/><br/><br/>
	<SPAN class="titulo">Ocurrió un error. Por favor ingrese nuevamente a la aplicación.</SPAN>
	<br/><br/><br/><br/>
	<a class="links" href="http://www.icesi.edu.co/">http://www.icesi.edu.co/</a>
	<br/><br/><br/><br/>
</td></tr></table></td>
</tr>
<tr>
    <td bgcolor="#005ba1"><div align="center"><span class="pie">Universidad            Icesi - Cali - Colombia | Calle 18 # 122-135 Pance | Tel&eacute;fono            (57-2) 555 23 34 | Fax (57-2) 555 14 41<br />
    Derechos reservados &copy; <a href="http://www.icesi.edu.co">Universidad            Icesi</a> </span></div></td>
  </tr>
</table>
</body>
</html>
        