using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from tUsers";
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        st = "<table border='2'>";
        //header <tr><th></th></tr>
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            st += "<tr>";
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                st += "<td>";
                st += dt.Rows[i][j];
                st += "</td>";
            }
            st += "</tr>";
        }
        st += "</table>";

    }
}