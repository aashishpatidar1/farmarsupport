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
    public partial class Index : System.Web.UI.Page
    {

  /*      SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();*/
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            subinsert.Visible = false;
            TBEdit.Visible = false;
            editbu.Visible = false;
            /*  con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\cropp.mdf;Integrated Security=True;Connect Timeout=30";
              con.Open();*/
            if (Session["user"] != null )
            {
               
                USERA1.Visible = true;
                loginb.Visible = false;
                logoutb.Visible = true;
            }
            else
            {
               
                logoutb.Visible = false;

            }
        }

       
        protected void logoutb_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            USERA1.Visible = false;
            loginb.Visible = true;
            logoutb.Visible = false;
        }

        protected void subinsert_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["cropdata"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string que = "insert into crop values('" + DropDownList10.Text + "','" + TextBox1.Text + "','" + DropDownList9.Text + "','" + DropDownList8.Text + "')";
            SqlCommand cmd = new SqlCommand(que, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
            {
                Label10.Text = "sucsses";
            }
            else
            {
                Label10.Text = "Failed";
            }
            con.Close();
        }

        protected void editbu_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["cropdata"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string que = "UPDATE crop set Price='"+TBEdit.Text+"' where Crops='"+DropDownList10.Text+ "' AND Mandi='" + DropDownList9.Text + "'AND Date='" + DropDownList8.Text + "'";
            SqlCommand cmd = new SqlCommand(que, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
            {
                Label10.Text = "sucsses Update";
            }
            else
            {
                Label10.Text = "Failed Update";
            }
            con.Close();
        }

        protected void insertbut_Click(object sender, EventArgs e)
        {
            TBEdit.Visible = true;
            editbu.Visible = true;
            TextBox1.Visible = false;
            subinsert.Visible = false;
        }

        protected void updatebut_Click(object sender, EventArgs e)
        {
            TBEdit.Visible = false;
            editbu.Visible = false;
            TextBox1.Visible = true;
            subinsert.Visible = true;
        }
    }
}