using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registry :  System.Web.UI.Page
{
    public String st;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack)
        {
            string user = Request.Form["user"];
            string pass = Request.Form["pass"];
            string mail = Request.Form["mail"];
            string gender = Request.Form["gender"];

            string sql = "Select * from tUsers where email = N'" + mail + "'";
            System.Data.DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count > 0)
                //Exist
                st = "Exist";
            else
            {
                //New
                string sql1 = "insert into tUsers values (" +
                    "N'" + user + "'," +
                    "N'" + pass + "'," +
                    "N'" + mail + "'," +
                    "N'" + gender + "')";
                MyAdoHelper.DoQuery("MyDB.mdf", sql1);
                Response.Redirect("HomePage.aspx");
            }
        }

    }
}