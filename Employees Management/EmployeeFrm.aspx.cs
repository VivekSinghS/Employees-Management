using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employees_Management
{
    public partial class EmployeeFrm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = LAPTOP-LV098BPO\\SQLEXPRESS; initial catalog = CompanyInfo ; integrated security = true");


        protected void Page_Load(object sender, EventArgs e)
        {

           DisPlay();
           
        }

        public void DisPlay()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Employees", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            dataView.DataSource = dt;   // dataView an ID of GridView in asp.net code
            dataView.DataBind();
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Employees (Name,Salary,City, Age)values('"+txtName.Text+"','"+txtSalary.Text+"','"+txtCity.Text+"','"+txtAge.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            DisPlay();
        }

        protected void dataView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Employees where id = '"+e.CommandArgument+"'",con);
            cmd.ExecuteNonQuery();
            DataBind();
            con.Close();
        }

    }
}