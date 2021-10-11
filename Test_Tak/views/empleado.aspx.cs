using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_Tak.views
{
    public partial class empleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                remplead();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre = name.Text;
            string addrees = addre.Text;
            string ecivil = estadocivil.Text;
            string gac = gradoacademico.Text;
            var date = datenac.SelectedDate;

            models.crudempleado cempleado = new models.crudempleado();

            cempleado.Cempleado(this,nombre,addrees,date,ecivil,gac);

            remplead();


        }

        private void remplead()
        {
            models.crudempleado re = new models.crudempleado();

            re.Rempleado(empe);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idemm = idemp.Text;
            int intidemm = Convert.ToInt32(idemm);
            string nombre = unombre.Text;
            string addrees = uad.Text;
            string ecivil = uec.Text;
            string gac = ugac.Text;
            var date = udatenac.SelectedDate;

            models.crudempleado uempleado = new models.crudempleado();

            uempleado.Uempleado(this, intidemm, nombre, addrees, date, ecivil, gac);

            remplead();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string idemm = dnombre.Text;
            int intidemm = Convert.ToInt32(idemm);
            models.crudempleado dempleado = new models.crudempleado();

            dempleado.Dempleado(this, intidemm);

            remplead();
        }
    }
}