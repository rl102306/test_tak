using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Test_Tak.models
{
    public class sconex
    {
        public SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Jcdb"].ConnectionString);
    }
}