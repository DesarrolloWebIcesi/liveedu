package co.edu.icesi.liveedu.action;

import java.lang.reflect.InvocationTargetException;
import java.sql.*;
import javax.servlet.http.*;
import javax.sql.DataSource;
import co.edu.icesi.liveedu.form.RegistroForm;
import org.apache.struts.action.*;
import org.apache.commons.beanutils.BeanUtils;

import co.edu.icesi.liveedu.Usuario;

public class RegistroAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		try{
			if(request.getSession(false)==null || request.getSession(false).getAttribute("usuario")==null){
				return mapping.findForward("errorSession");
			}
			HttpSession session = request.getSession();
			Usuario usuario = (Usuario)session.getAttribute("usuario");
			DataSource source = getDataSource(request,"db");
			Connection conexion = source.getConnection();
			RegistroForm registroForm = (RegistroForm) form;
			org.apache.commons.beanutils.BeanUtils.copyProperties(usuario, form);
			if(usuario.guardarCorreos(conexion)){
				request.setAttribute("confirmacion","Los datos fueron guardados correctamente");
			}else{
				request.setAttribute("confirmacion","Ocurrió un error. Puede que los datos no hayan sido guardados correctamente");
			}
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
