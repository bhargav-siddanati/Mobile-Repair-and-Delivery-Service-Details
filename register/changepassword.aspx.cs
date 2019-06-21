using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace register
{
    public partial class changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                SqlConnection c = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True");
              
                SqlDataAdapter d = new SqlDataAdapter("select Pass from log where Pass='"+oldpassword.Text+"'",c);
                DataTable dt = new DataTable();
                 d.Fill(dt);
                if (dt.Rows.Count.ToString().Equals("1"))
                {
                    c.Open();
                    SqlCommand cm = new SqlCommand("update log set Pass='"+reenter.Text+"'where Pass='"+oldpassword.Text+"'",c);
                    cm.ExecuteNonQuery();
                    Label1.Text = "Sucessfully updated";
                    cm.Dispose();
                    c.Close();
                }
                else
                {
                    Label1.Text = "re enter";
                }
                
               
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }
        }
    }
}