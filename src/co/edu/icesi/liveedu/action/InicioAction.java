package co.edu.icesi.liveedu.action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.StringTokenizer;

import javax.servlet.http.*;
import javax.sql.DataSource;
import co.edu.icesi.liveedu.Usuario;
import org.apache.struts.action.*;

public class InicioAction extends Action {

    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        try {
            String cedula = request.getRemoteUser();
            if (cedula == null || cedula.equals("")) {
                cedula = request.getParameter("ced");
            }
            if (cedula == null || cedula.equals("")) {
                return mapping.findForward("errorGlobal");
            }
            StringTokenizer tokens = new StringTokenizer(cedula, "/");
            tokens.nextToken();
            cedula = tokens.nextToken();
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(600);
            Usuario usuario = new Usuario();
            usuario.setId(cedula);
            session.setAttribute("usuario", usuario);
            session.setAttribute("encabezado", request.getParameter("name"));
            return mapping.findForward("exito");
        } catch (Exception exc) {
            exc.printStackTrace();
            return mapping.findForward("fracaso");
        }
    }
}
