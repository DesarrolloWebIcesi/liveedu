<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%@ taglib uri="/WEB-INF/contenidoHTML.tld" prefix="siadcon"%>
<html><!-- InstanceBegin template="/Templates/principal.dwt.jsp" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Universidad Icesi - Habilidades b&aacute;sicas en computaci&oacute;n</title>
<!-- InstanceEndEditable --> 

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<script language="JavaScript">
	function confirmacion(){
		<%if(request.getAttribute("confirmacion")!=null){%>
			alert(<%=request.getAttribute("confirmacion")%>);
		<%}%>
	}
</script>
<link href="<%=request.getContextPath()%>/css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="720" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
<td>
<html:img src="imgs/cabezote_sec.jpg"/>
</td>
</tr>
  <tr>
    <td>&nbsp;	
	</td>
  </tr>
   <tr>
    <td align="center">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">
	<!-- InstanceBeginEditable name="contenido" -->	
	<%session.invalidate();%>
	<br/><br/><br/><br/>
	<SPAN class="titulo">Su sesi&oacute;n de trabajo ha finalizado. Por favor ingrese nuevamente a la aplicación.</SPAN>
	<br/><br/><br/><br/>
	<a class="links" href="http://www.icesi.edu.co/">http://www.icesi.edu.co/</a>
	<br/><br/><br/><br/>
	<!-- InstanceEndEditable -->
	</td>
  </tr>
</table>	
    </td>
  </tr>
   <tr>
    <td>&nbsp;	
	</td>
  </tr>
  <tr>
    <td bgcolor="#005ba1"><div align="center"><span class="pie">Universidad            Icesi - Cali - Colombia | Calle 18 # 122-135 Pance | Tel&eacute;fono            (57-2) 555 23 34 | Fax (57-2) 555 14 41<br />
    Derechos reservados &copy; <a href="http://www.icesi.edu.co">Universidad            Icesi</a> </span></div></td>
  </tr>
</table>

<map name="Map">
  <area shape="rect" coords="38,18,293,64" href="http://www.icesi.edu.co/portal-profesores/">
  <area shape="rect" coords="483,7,666,67" href="http://www.icesi.edu.co/">
</map>
</body>
<!-- InstanceEnd --></html>
