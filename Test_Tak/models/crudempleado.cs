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

        public Object Cempleado(Page CMM, String nombre, String direccion, DateTime date_nac, String escivil, String g_aca)
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

        public Object Rempleado(GridView empe)
        {
            models.sconex sqlconexion = new models.sconex();
            try

            {
                if (sqlconexion.sqlcon.State == ConnectionState.Closed)

                    sqlconexion.sqlcon.Open();

                SqlCommand sqlcmd = new SqlCommand("Rempleado", sqlconexion.sqlcon);

                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    sda.SelectCommand = sqlcmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        empe.DataSource = dt;
                        empe.DataBind();
                    }
                }
            }
            catch (Exception e)
            {
                return e;
            }
            finally
            {
                sqlconexion.sqlcon.Close();
            }
            return "Exitoso";
        }

        public Object Uempleado(Page CMM, int idemp , String nombre, String direccion, DateTime date_nac, String escivil, String g_aca)
        {

            sconex sqlconexion = new sconex();

            try

            {
                if (sqlconexion.sqlcon.State == ConnectionState.Closed)
                    sqlconexion.sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand("Uempleado", sqlconexion.sqlcon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@id", idemp);
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
    

    public Object Dempleado(Page CMM, int idemp)
    {

        sconex sqlconexion = new sconex();

        try

        {
            if (sqlconexion.sqlcon.State == ConnectionState.Closed)
                sqlconexion.sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("Dempleado", sqlconexion.sqlcon);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@id", idemp);
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