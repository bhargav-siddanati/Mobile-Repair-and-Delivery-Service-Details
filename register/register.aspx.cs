using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace register
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                SqlConnection co = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True");
                co.Open();
                String s = "insert into register(nameid,name,mobile,date,mobilename,issues,estimatedcost,requireddays)values(@nameid,@name,@mobile,@date,@mobilename,@issues,@estimatedcost,@requireddays)";

                String u = id.Text;
                /*Session["uname"] = name.Text;
                Session["umobile"] = mobile.Text;
                Session["udate"] = date.Text;
                Session["umname"] = mobilename.Text;
                Session["uissue"] = issuess.Text;*/

                String ss = "insert into deliver(idnamed,named,mobiled,dated,mobilenamed,issued)values(@idnamed,@named,@mobiled,@dated,@mobilenamed,@issued)";

                

                SqlCommand cd = new SqlCommand(s,co);
               
                

                cd.Parameters.AddWithValue("@nameid",id.Text);
                cd.Parameters.AddWithValue("@name", name.Text);
                cd.Parameters.AddWithValue("@mobile", mobile.Text);
                cd.Parameters.AddWithValue("@date", date.Text);
                cd.Parameters.AddWithValue("@mobilename", mobilename.Text);
                cd.Parameters.AddWithValue("@issues",issuess.Text);
                cd.Parameters.AddWithValue("@estimatedcost", estimataion.Text);
                cd.Parameters.AddWithValue("@requireddays", required.Text);

                
                cd.ExecuteNonQuery();
                
                Response.Write("Added the data done");
                
                
                cd.Dispose();

                SqlCommand c = new SqlCommand(ss, co);
                c.Parameters.AddWithValue("@idnamed", u);
                c.Parameters.AddWithValue("@named", name.Text);
                c.Parameters.AddWithValue("@mobiled", mobile.Text);
                c.Parameters.AddWithValue("@dated", date.Text);
                c.Parameters.AddWithValue("@mobilenamed", mobilename.Text);
                c.Parameters.AddWithValue("@issued", issuess.Text);

                c.ExecuteNonQuery();
                c.Dispose();

                co.Close();
            }
            catch (Exception ee)
            {
                Response.Write(ee);

            }
        }
    }
}