using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace register
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cc = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True");
                cc.Open();
                String s = "select UserName,Pass from log";
                SqlCommand cmd = new SqlCommand(s,cc);
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read()) {
                    if (r.GetValue(0).Equals(TextBox1.Text))
                    {
                        if (r.GetValue(1).Equals(TextBox2.Text))
                        {
                            Response.Redirect("pg.aspx");
                        }
                        else { Response.Write("Not valid"); }
                    }
                    else {
                        Response.Write("wrong credintials");
                    }
                }


                cmd.Dispose();

                cc.Close();
            }
            catch (Exception ee) { Response.Write(ee); }
        }
    }
}