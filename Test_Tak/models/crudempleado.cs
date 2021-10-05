using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_Tak.models
{
    public class crudempleado
    {


        String error = @"<script type='text/javascript'>
                             alert('Ocurrio un error al actualizar los datos, por favor verifique.');
                        </script>";

        String msj = @"<script type='text/javascript'>
                             alert('Registro Existoso');
                        </script>";

        public Object Cproducto(Page CMM, String nombre, String direccion, DateTime date_nac, String escivil, String g_aca)
        {

            sconex sqlconexion = new sconex();

            try

            {
                if (sqlconexion.sqlcon.State == ConnectionState.Closed)
                    sqlconexion.sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand("Cempleado", sqlconexion.sqlcon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@nombre", nombre);
                sqlcmd.Parameters.AddWithValue("@direccion", direccion);
                sqlcmd.Parameters.AddWithValue("@fecha_nacimiento", date_nac);
                sqlcmd.Parameters.AddWithValue("@estado_civil", escivil);
                sqlcmd.Parameters.AddWithValue("@grado_academico", g_aca);
                sqlcmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(CMM, typeof(Page), "alerta", error, false);
            }
            finally
            {
                sqlconexion.sqlcon.Close();
                ScriptManager.RegisterStartupScript(CMM, typeof(Page), "alerta", msj, false);
            }
            return "exitoso";
        }
    }
}