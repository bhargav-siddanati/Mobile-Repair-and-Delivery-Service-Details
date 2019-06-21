using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace register
{
    public partial class deliver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True");
                con.Open();

                Session["a"] = didname.Text;

                String ch = "select * from deliver where idnamed='" + didname.Text.Trim() + "'";

                SqlCommand cmd = new SqlCommand(ch, con);

                SqlDataReader r = cmd.ExecuteReader();

                if (r.Read())
                {
                    ddname.Text = r["idnamed"].ToString();
                    ddusername.Text = r["named"].ToString();
                    ddmobile.Text = r["mobiled"].ToString();
                    ddmobilename.Text = r["mobilenamed"].ToString();
                    ddissue.Text = r["issued"].ToString();
                    
                    r.Close();
                    con.Close();
                }
                

            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }

        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                String q = "update deliver set delivered='"+ TextBox1.Text+"' ,cost='"+ TextBox2.Text+"' where idnamed='" + didname.Text.Trim() + "'";
                SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True");
                conn.Open();
                SqlCommand d = new SqlCommand(q, conn);

                d.ExecuteNonQuery();
                Response.Write("ok");
                d.Dispose();
               
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}