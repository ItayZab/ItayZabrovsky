using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public String st;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string pass = Request.Form["pass"];
            string mail = Request.Form["mail"];

            if (mail == "manager" && pass == "123")
            {
                Session["Admin"] = "ok";
                Session["name"] = "Itay";
                Response.Redirect("Admin.aspx");
            }
            else
            {

                string sql = "Select * from tUsers where email = N'" + mail + "' and password = N'" + pass + "'";
                System.Data.DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                    st = "Not Exist";
                else
                {
                    Session["user"] = "ok";
                    Session["name"] = dt.Rows[0]["name"];
                    Response.Redirect("HomePage.aspx");
                }
            }

        }
    }
}