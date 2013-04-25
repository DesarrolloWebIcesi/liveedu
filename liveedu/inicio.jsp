<%@taglib uri="/WEB-INF/tags.tld" prefix="icesi"%>
<%@ taglib uri="/WEB-INF/contenidoHTML.tld" prefix="siadcon"%>
<html>
<head>
<title>Universidad Icesi - Live@Edu</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<meta name="keywords" content="icesi, profesores, profesor, universidad,
educacion, educación en cali, universidades, universidad icesi, programas
academicos, pregrado, postgrado, carreras, maestrias, especializaciones,
administracion de empresas">

<meta name="description" content="Profesores de la Universidad Icesi ">
<%
String name=(String)session.getAttribute("encabezado");
String url ="http://www.icesi.edu.co/"+name+"/";
String fileE=url+"encabezado_"+name+".jsp";
String fileP=url+"pie_"+name+".jsp";
%>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="800" bgcolor="#FFFFFF" align="center">
<tr>
<td><table width="100%" align="center"><tr><td>
<siadcon:menu ruta="<%=fileE%>" />
</td></tr></table></td>
</tr>
<tr>
<td><table width="100%" height="10" align="center"><tr><td>&nbsp;</td></tr></table></td>
</tr>
<tr>
<td><table width="100%" align="center"><tr><td>



<table border="0" cellpadding="0" cellspacing="0" width="600" align="center">    
    <tr>
      <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><p class="titulo">Live@Edu</p>
  <p class="texto">Los estudiantes de pregrado  y postgrado, egresados, profesores, investigadores y personal administrativo  temporal podr&aacute;n contar con un correo electr&oacute;nico con una  plataforma confiable, una interface de usuario intuitiva, servicios y atributos  como administraci&oacute;n de contactos y de calendario, incluyendo la caracter&iacute;stica  de calendarios compartidos, por medio de los cuales podr&aacute;n enviar solicitudes  de reuniones a sus compa&ntilde;eros para revisar trabajos y estudiar en grupo.</p>
  	<p class="texto">
                Este servicio incluye:
                <ul class="texto">
	                <li>Correo electr&oacute;nico</li>
	                <li>Agendas personales y  compartidas</li>
	                <li>Tareas</li>
	                <li>Notas</li>
	                <li>Alertas</li>
	                <li>Contactos </li>
	                <li>Mensajer&iacute;a instant&aacute;nea  para mantener conversaciones en texto, incluso en audio y video</li>
					<li>Espacio para blog</li>
	                <li>Entre otros </li>
	             </ul>
              <p class="subtitulo">Qu&eacute; Beneficios te ofrece?</p>
              <ul class="texto">
                <li>5 GB de almacenamiento.</li>
                <li>Fortalece tu identidad con la Universidad Icesi.</li>
                <li>Medio electr&oacute;nico oficial de la Universidad Icesi.</li>
                <li>&Uacute;nico medio de comunicaci&oacute;n integrado a los Sistemas Institucionales (Base de datos  de Registro acad&eacute;mico, SIMBIOSIS, etc)</li>
                <li>Apoya el proceso de ense&ntilde;anza y aprendizaje</li>
                <li>Contar con una plataforma amigable, intuitiva y personalizable</li>
                <li>La galer&iacute;a fotogr&aacute;fica de Windows Live te permite importar, administrar y  compartir fotos f&aacute;cilmente en Windows Live Spaces y en otros servicios</li>
                <li>Si tienes un tel&eacute;fono m&oacute;vil, podr&aacute;s tener acceso a tu correo electr&oacute;nico  desde cualquier lugar donde tengas acceso a Internet y publicar fotos  directamente desde tu tel&eacute;fono m&oacute;vil</li>
                <li>Si tienes varias cuentas de correo electr&oacute;nico, con el  nuevo Windows Live Mail puedes ver tu correo electr&oacute;nico de varias cuentas,  incluidas las cuentas de Windows Live Hotmail, POP e IMAP, desde un &uacute;nico  lugar. Se debe verificar como  se hace y realizar el manual </li>
                <li>Si deseas tener acceso a tu cuenta de Hotmail desde  Outlook, podr&aacute;s consultar y sincronizar tu cuenta y tus contactos de Windows  Live Hotmail directamente en Outlook mediante Microsoft Office Outlook  Connector. Se debe verificar como  se hace y realizar el manual </li>
                <li>Si te vas de vacaciones, podr&aacute;s hacer que las personas sepan que estar&aacute;s  fuera con la caracter&iacute;stica de respuesta autom&aacute;tica de ausencia por vacaciones  de Windows Live Hotmail</li>
                <li>Control de los correos electr&oacute;nicos no deseados y ofertas  falsas </li>
                <li>El servicio de correo electr&oacute;nico cuenta con un filtro  avanzado para el correo basura (spam), as&iacute; como herramientas de protecci&oacute;n  antivirus, para proteger la informaci&oacute;n de los usuarios</li>
                <li>Entre otros</li>
                </ul>
                <p align="center">
                <a href="<%=request.getContextPath()%>/preRegistro.do">Registrar correos</a>
                </p>
             </td>
          </tr>
      </table></td>
    </tr>
  </table>
</td></tr></table></td>
</tr>
<tr>
<td><table width="100%" height="10" align="center"><tr><td>&nbsp;</td></tr></table></td>
</tr>
<tr>
    <td bgcolor="#005ba1"><div align="center"><span class="pie">Universidad            Icesi - Cali - Colombia | Calle 18 # 122-135 Pance | Tel&eacute;fono            (57-2) 555 23 34 | Fax (57-2) 555 14 41<br />
    Derechos reservados &copy; <a href="http://www.icesi.edu.co">Universidad            Icesi</a> </span></div></td>
  </tr>
</table>
</body>
</html>
