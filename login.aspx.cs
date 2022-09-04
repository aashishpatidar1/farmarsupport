using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


namespace farmarsupport
{
    public partial class login : System.Web.UI.Page
    {
    
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("index.aspx");
            }
            else
                con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\cropp.mdf;Integrated Security=True;Connect Timeout=30";
            con.Open();
        }
        protected void log_Click(object sender, EventArgs e)
        {
            string user = mob.Text.Trim();

            string pas = pass.Text.Trim();
            int i = 0;
            cmd.CommandText = "select* from usinfo where Mobile='" + mob.Text + "' and Password='" + pass.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "usinfo");
            if (ds.Tables[i].Rows.Count > 0)
            {
                if (pas == ds.Tables[i].Rows[i]["password"].ToString())
                {
                    Session["user"] = user;
                    Response.Redirect("index.aspx");
                }
                else { Label1.Text = "password not match"; }
            }
            else { Label1.Text = "enter data not matched"; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            form1.Visible = false;
            form2.Visible = true;
        }


        protected void sinup_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["cropdata"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string que = "insert into usinfo values('" + name.Text + "','" + mobile.Text + "','" + email.Text + "','" + DropDownList2.Text + "','" + DropDownList1.Text + "','" + cpass.Text + "')";
            SqlCommand cmd = new SqlCommand(que, con);
            con.Open();

            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                Label1.Text = "You are not Ragistered";
            }
            con.Close();
        }

        protected void logi_Click(object sender, EventArgs e)
        {
            if (form1.Visible == false)
            {
                form1.Visible = true;
                form2.Visible = false;
            }
        }
    }
}