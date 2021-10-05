using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_Tak.views
{
    public partial class Empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}


protected void savecantidad_Click(object sender, EventArgs e)
{
    try
    {

    }
    catch
    {
        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", alerat, false);
    }
}