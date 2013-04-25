package co.edu.icesi.liveedu.action;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.*;
import javax.sql.DataSource;

import org.apache.struts.action.*;

import co.edu.icesi.liveedu.Usuario;
import co.edu.icesi.liveedu.form.RegistroForm;

public class PreRegistroAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		try{
			if(request.getSession(false)==null || request.getSession(false).getAttribute("usuario")==null){
				return mapping.findForward("errorSession");
			}
			DataSource source = getDataSource(request,"db");
			Connection conexion = source.getConnection();
			HttpSession session = request.getSession();
			Usuario usuario = (Usuario)session.getAttribute("usuario");
			usuario.cargarCorreosEstudiantePre(conexion);
			usuario.cargarCorreosEstudiantePost(conexion);
			usuario.cargarCorreosProfesorHC(conexion);
			if(usuario.getCorreosProfesor()==null || usuario.getCorreosProfesor().size()==0){
				usuario.cargarCorreosProfesorTC(conexion);
			}
			if(usuario.getCorreosProfesor()==null || usuario.getCorreosProfesor().size()==0){
				usuario.cargarCorreosProfesorTP(conexion);
			}
			usuario.cargarCorreosEgresado(conexion);			
			if(!usuario.autorizar()){
				request.setAttribute("noIngreso", "noIngreso");
				return mapping.findForward("noIngreso");
			}
			usuario.cargarCorreoLiveedu(conexion);
			RegistroForm registroForm = (RegistroForm) form;
			org.apache.commons.beanutils.BeanUtils.copyProperties(registroForm, usuario);
			conexion.close();
			return mapping.findForward("exito");
		}catch(SQLException exc){
			exc.printStackTrace();
			return mapping.findForward("exito");
		}catch(InvocationTargetException exc){
			exc.printStackTrace();
			return mapping.findForward("exito");
		}catch(IllegalAccessException exc){
			exc.printStackTrace();
			return mapping.findForward("exito");
		}
	}
}