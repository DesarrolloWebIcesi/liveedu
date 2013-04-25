package co.edu.icesi.liveedu;

import java.sql.*;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class Usuario {
	private String id;
	private ArrayList correosProfesor;
	private ArrayList correosEstudiantePre;
	private ArrayList correosEstudiantePost;
	private ArrayList correosEgresado;
	private String correoPreferidoPregrado;
	private String correoPreferidoPostgrado;
	private String correoPreferidoProfesor;
	private String correoPreferidoEgresado;
	private String correoLiveedu;
	
	public Usuario(){
		super();
	}
	
	
	
	public ArrayList getCorreosEgresado() {
		return correosEgresado;
	}



	public void setCorreosEgresado(ArrayList correosEgresado) {
		this.correosEgresado = correosEgresado;
	}



	public ArrayList getCorreosEstudiantePost() {
		return correosEstudiantePost;
	}



	public void setCorreosEstudiantePost(ArrayList correosEstudiantePost) {
		this.correosEstudiantePost = correosEstudiantePost;
	}



	public ArrayList getCorreosEstudiantePre() {
		return correosEstudiantePre;
	}



	public void setCorreosEstudiantePre(ArrayList correosEstudiantePre) {
		this.correosEstudiantePre = correosEstudiantePre;
	}



	public ArrayList getCorreosProfesor() {
		return correosProfesor;
	}



	public void setCorreosProfesor(ArrayList correosProfesor) {
		this.correosProfesor = correosProfesor;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}
   

	public String getCorreoPreferidoEgresado() {
		return correoPreferidoEgresado;
	}



	public void setCorreoPreferidoEgresado(String correoPreferidoEgresado) {
		this.correoPreferidoEgresado = correoPreferidoEgresado;
	}



	public String getCorreoPreferidoPostgrado() {
		return correoPreferidoPostgrado;
	}



	public void setCorreoPreferidoPostgrado(String correoPreferidoPostgrado) {
		this.correoPreferidoPostgrado = correoPreferidoPostgrado;
	}



	public String getCorreoPreferidoPregrado() {
		return correoPreferidoPregrado;
	}



	public void setCorreoPreferidoPregrado(String correoPreferidoPregrado) {
		this.correoPreferidoPregrado = correoPreferidoPregrado;
	}



	public String getCorreoPreferidoProfesor() {
		return correoPreferidoProfesor;
	}

	public void setCorreoPreferidoProfesor(String correoPreferidoProfesor) {
		this.correoPreferidoProfesor = correoPreferidoProfesor;
	}

	public String getCorreoLiveedu() {
		return correoLiveedu;
	}



	public void setCorreoLiveedu(String correoLiveedu) {
		this.correoLiveedu = correoLiveedu;
	}



	public boolean cargarCorreosProfesorHC(Connection conexion){
		try{
			Statement stm = conexion.createStatement();
			String sql="select distinct p.correo_personal,p.correo_inst, p.correo_elect "+
				"from tbas_profesores p, tbas_cursos_profesor cp, VM_PERSONAS vmp "+ 
				"where p.modalidad = 'HC' "+ 
				"and p.cedula not in ('000000','0000001','0000002') "+ 
				"and p.cedula = cp.profesor_cedula "+ 
				"and cp.periodo_periodo_acad||'-'||cp.periodo_consecutivo = fprebus_constantes('002','0304','-') "+
				"and vmp.num_id = p.cedula and vmp.tipo = 'PRO' "+ 
				"and vmp.activo = 'S' and p.CEDULA='"+id+"'";
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				correosProfesor=new ArrayList();
				if(rs.getString(1)!=null && !rs.getString(1).equals("")){
					correosProfesor.add(rs.getString(1));
				}
				if(rs.getString(2)!=null && !rs.getString(2).equals("")){
					correosProfesor.add(rs.getString(2));
				}
				if(rs.getString(3)!=null && !rs.getString(3).equals("")){
					correoPreferidoProfesor=rs.getString(3);
					
				}
			}
			
			return true;
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean cargarCorreosProfesorTC(Connection conexion){
		try{
			Statement stm = conexion.createStatement();
			String sql="select distinct p.correo_personal,p.correo_inst, p.correo_elect "+
				"from tbas_profesores p, tbas_cursos_profesor cp, VM_PERSONAS vmp "+ 
				"where p.modalidad = 'HC' "+ 
				"and p.cedula not in ('000000','0000001','0000002') "+ 
				"and p.cedula = cp.profesor_cedula "+ 
				"and cp.periodo_periodo_acad||'-'||cp.periodo_consecutivo = fprebus_constantes('002','0304','-') "+
				"and vmp.num_id = p.cedula and vmp.tipo = 'PRO' "+ 
				"and vmp.activo = 'S' and p.CEDULA='"+id+"'";
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				correosProfesor=new ArrayList();
				if(rs.getString(1)!=null && !rs.getString(1).equals("")){
					correosProfesor.add(rs.getString(1));
				}
				if(rs.getString(2)!=null && !rs.getString(2).equals("")){
					correosProfesor.add(rs.getString(2));
				}
				if(rs.getString(3)!=null && !rs.getString(3).equals("")){
					correoPreferidoProfesor=rs.getString(3);
					
				}
			}
			
			return true;
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean cargarCorreosProfesorTP(Connection conexion){
		try{
			Statement stm = conexion.createStatement();
			String sql="select distinct p.correo_personal,p.correo_inst, p.correo_elect " +
					" from tbas_profesores p, empleado e " +
					" where p.modalidad <> 'HC' " +
					" and p.investigador_porc between 0 and 99 " +
					" and p.cedula not in ('000000', '0000001', '0000002')  " +
					" and p.retirado = 'N' " +
					" and e.cedula = p.cedula " +
					" and e.activo = 'S' " +
					"and	p.CEDULA='"+id+"'";
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				correosProfesor=new ArrayList();
				if(rs.getString(1)!=null && !rs.getString(1).equals("")){
					correosProfesor.add(rs.getString(1));
				}
				if(rs.getString(2)!=null && !rs.getString(2).equals("")){
					correosProfesor.add(rs.getString(2));
				}
				if(rs.getString(3)!=null && !rs.getString(3).equals("")){
					correoPreferidoProfesor=rs.getString(3);
				
				}
			}
			
			return true;
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean cargarCorreosEstudiantePre(Connection conexion){
		try{
			Statement stm = conexion.createStatement();
			
			String sql="select correo_personal, correo_inst, correo_electr from tbas_alumnos where numid='"+id+"' and estado in ('N','P','I')";
			
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				correosEstudiantePre=new ArrayList();
				if(rs.getString(1)!=null && !rs.getString(1).equals("")){
					correosEstudiantePre.add(rs.getString(1));
				}
				if(rs.getString(2)!=null && !rs.getString(2).equals("")){
					correosEstudiantePre.add(rs.getString(2));
				}
				if(rs.getString(3)!=null && !rs.getString(3).equals("")){
					correoPreferidoPregrado=rs.getString(3);
					
				}
			}
			
			return true;
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean cargarCorreosEstudiantePost(Connection conexion){
		try{
			Statement stm = conexion.createStatement();
			
			String sql="select est.correo_personal,est.correo_icesi, est.e_mail "+
				"from estudiante_pos est, programa tipo_prog "+ 
				"where est.documento_id='"+id+"' "+
				"and cod_programa=tipo_prog.codigo "+
				"and retirado= 'N' "+
				"and termino='N' "+
				"and tipo_prog.tipo in ('MAE','MAG','ESP')";				
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				correosEstudiantePost=new ArrayList();
				if(rs.getString(1)!=null && !rs.getString(1).equals("")){
					correosEstudiantePost.add(rs.getString(1));
				}
				if(rs.getString(2)!=null && !rs.getString(2).equals("")){
					correosEstudiantePost.add(rs.getString(2));
				}
				
				if(rs.getString(3)!=null && !rs.getString(3).equals("")){
					correoPreferidoPostgrado=rs.getString(3);
					
				}
			}
			
			return true;
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean cargarCorreosEgresado(Connection conexion){
		try{
			Statement stm = conexion.createStatement();
			
			String sql="select correo_personal,correo_liveedu, e_mail from t_datper where cedula='"+id+"'";
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				correosEgresado=new ArrayList();
				if(rs.getString(1)!=null && !rs.getString(1).equals("")){
					correosEgresado.add(rs.getString(1));
				}
				if(rs.getString(2)!=null && !rs.getString(2).equals("")){
					//StringTokenizer tokens = new StringTokenizer(rs.getString(2),",;");
					correosEgresado.add(rs.getString(2));
					
					/*while(tokens.hasMoreTokens()){
						correosEgresado.add(tokens.nextToken());
					}*/
				}
				if(rs.getString(3)!=null && !rs.getString(3).equals("")){
					this.correoPreferidoEgresado=rs.getString(3);
				
					
				}
			}
			
			return true;
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean cargarCorreoLiveedu(Connection conexion){
		try{
			Statement stm = conexion.createStatement();
			String sql="select correo_liveedu from vmbas_usuarios_actuales_min where identificacion = '"+id+"'";
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				correoLiveedu=rs.getString(1);
			}
			return true;
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean guardarCorreos(Connection conexion){
		try{
			if(conexion != null){
				if(correoPreferidoPregrado!=null && !correoPreferidoPregrado.equals("")){
					Statement stm = conexion.createStatement();
					String sql = "update tbas_alumnos set correo_electr='"+correoPreferidoPregrado+"' where numid='"+this.id+"'";
					stm.executeUpdate(sql);
					stm.close();
				}
				if(correoPreferidoEgresado!=null && !correoPreferidoEgresado.equals("")){
					Statement stm = conexion.createStatement();
					String sql = "update t_datper set e_mail='"+correoPreferidoEgresado+"' where cedula='"+this.id+"'";
					stm.executeUpdate(sql);
					stm.close();
				}
				if(correoPreferidoPostgrado!=null && !correoPreferidoPostgrado.equals("")){
					Statement stm = conexion.createStatement();
					String sql = "update estudiante_pos set e_mail='"+correoPreferidoPostgrado+"' where documento_id='"+this.id+"'";
					stm.executeUpdate(sql);
					stm.close();
				}
				if(correoPreferidoProfesor!=null && !correoPreferidoProfesor.equals("")){
					Statement stm = conexion.createStatement();
					String sql = "update tbas_profesores set correo_elect='"+correoPreferidoProfesor+"' where cedula='"+this.id+"'";
					stm.executeUpdate(sql);
					stm.close();
				}
				return true;
			}else{
				return false;
			}
		}catch(SQLException exc){
			exc.printStackTrace();
			return false;
		}
	}
	
	public boolean autorizar(){
		boolean resp=false;
		if(correosEstudiantePre!=null && correosEstudiantePre.size()>0){
			resp = true;
		}else if(correosEstudiantePost!=null && correosEstudiantePost.size()>0){
			resp = true;
		}else if(correosEgresado!=null && correosEgresado.size()>0){
			resp = true;
		}else if(correosProfesor!=null && correosProfesor.size()>0){
			resp = true;
		}
		return resp;
	}

}
