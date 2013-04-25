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
        <%
            String name = (String) session.getAttribute("encabezado");
            String url = "http://www.icesi.edu.co/" + name + "/";
            String fileE = url + "encabezado_" + name + ".jsp";
            String fileP = url + "pie_" + name + ".jsp";
        %>
        <script language="JavaScript">
            function confirmacion() {
            <%if (request.getAttribute("confirmacion") != null) {%>
                alert('<%=request.getAttribute("confirmacion")%>');
            <%}%>
            }
        </script>
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
    </head>

    <body onLoad="confirmacion();">
        <table width="800" bgcolor="#FFFFFF" align="center">
            <tr>
                <td>
                    <html:img src="imgs/cabezote_sec.jpg"/>
                </td>
            </tr>
            <tr>
                <td><table width="100%" height="10" align="center"><tr><td>&nbsp;</td></tr></table></td>
            </tr>

            <tr>
                <td><table width="100%" align="center"><tr><td>
                                <table border="0" cellpadding="0" cellspacing="0" width="600" align="center">    
                                    <tr>
                                        <td>
                                            <html:form action="/registro">
                                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                    <tr align="right" class="cerrarSesion"><td>
                                                            <p align="right" class="cerrarSesion"><a href="<%=request.getContextPath()%>/cerrarSession.jsp" class="links" > Cerrar Sesión </a></p></td>
                                                    </tr>
                                                    <tr><td>&nbsp;</td></tr>      	
                                                    <tr>
                                                        <td class="zonaErrores">
                                                            <logic:notEmpty name="usuario" property="correoLiveedu">
                                                                <p class="notaCenterNoCapital">Tu correo LiveEdu actual es <bean:write name="usuario" property="correoLiveedu"/></p>
                                                            </logic:notEmpty>
                                                            <logic:empty name="usuario" property="correoLiveedu">
                                                                <p class="notaCenterNoCapital">Usted aún no tiene una cuenta de correo LiveEdu</p>
                                                            </logic:empty>
                                                        </td>
                                                    </tr>


                                                    <tr><td>&nbsp;</td></tr>
                                                    <tr>        	
                                                        <td>
                                                            <p class="texto">A continuaci&oacute;n encontrar&aacute; una lista con los correos electr&oacute;nicos registrados en la Universidad. Usted deberá escoger su correo preferido para cada uno de los sistemas. Si desea cambiar alguno de los correos personales debe hacerlo por la Oficina de Admisiones u Oficina de Personal seg&uacute;n el caso. </p>
                                                        </td>
                                                    </tr>
                                                    <tr><td>&nbsp;</td></tr>
                                                    <tr><td>&nbsp;</td></tr>
                                                </table>
                                                <table width="60%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                    <logic:notEmpty name="usuario" property="correosEstudiantePre">
                                                        <tr><td class="tituloCelda">Correo preferido en sistema de Pregrado</td></tr>
                                                        <tr>
                                                            <td class="celda">            
                                                                <logic:iterate id="correo" name="usuario" property="correosEstudiantePre" type="java.lang.String">
                                                                    <html:radio property="correoPreferidoPregrado" value='<%=correo%>'/><bean:write name="correo"/><br/>
                                                                </logic:iterate>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                    </logic:notEmpty>

                                                    <logic:notEmpty name="usuario" property="correosEstudiantePost">
                                                        <tr><td class="tituloCelda">Correo preferido en sistema de Postgrado</td></tr>
                                                        <tr>
                                                            <td class="celda">
                                                                <logic:iterate id="correo" name="usuario" property="correosEstudiantePost" type="java.lang.String">
                                                                    <html:radio property="correoPreferidoPostgrado" value='<%=correo%>'/><bean:write name="correo"/><br/>
                                                                </logic:iterate>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                    </logic:notEmpty>

                                                    <logic:notEmpty name="usuario" property="correosEgresado">
                                                        <tr><td class="tituloCelda">Correo preferido en sistema de Egresados</td></tr>
                                                        <tr>
                                                            <td class="celda">
                                                                <logic:iterate id="correo" name="usuario" property="correosEgresado" type="java.lang.String">
                                                                    <html:radio property="correoPreferidoEgresado" value="<%=correo%>"/><bean:write name="correo"/><br/>
                                                                </logic:iterate>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                    </logic:notEmpty>

                                                    <logic:notEmpty name="usuario" property="correosProfesor">
                                                        <tr><td class="tituloCelda">Correo preferido en sistema de Profesores</td></tr>
                                                        <tr>
                                                            <td class="celda">
                                                                <!-- 2012-03-12 by damanzano: The lines below were commented because with the PeopleNet System implementation professors must define their favorite email in https://talentoicesi.icesi.edu.co/ -->
                                                                <!--logic:iterate id="correo" name="usuario" property="correosProfesor" type="java.lang.String"-->
                                                                    <!--html:radio property="correoPreferidoProfesor" value="correo"/><bean:write name="correo"/><br/>-->
                                                                <!--/logic:iterate --> 
                                                                <p style="text-align: justify;">Para definir su correo preferido en el sistema de profesores por favor ingrese a <a href="https://talentoicesi.icesi.edu.co/" target="_blank">Talento Icesi</a></p>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                    </logic:notEmpty>
                                                    <tr><td align="center">
                                                            <html:submit value="Guardar" property="guardar"/>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                            <html:reset value="Reset" property="reset"/>
                                                        </td></tr>
                                                </table>
                                            </html:form>
                                        </td>
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
