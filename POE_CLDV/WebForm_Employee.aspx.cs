using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace POE_CLDV
{
    public partial class WebForm_Employee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadRecord();
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(@"SELECT * FROM Employee_Poe
                                                    WHERE Employee_ID = '" + txtEmpID.Text +  "'", con);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                txtEmpName.Text = reader.GetValue(1).ToString();
                txtJobCardNo.Text = reader.GetValue(2).ToString();
            }
            con.Close();

            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            GridView_Employee.DataSource = read;
            GridView_Employee.DataBind();
            con.Close();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand(@"SELECT [Employee_ID]
                                                    ,[Employee_Name]
                                                    ,[Job_JobCardNo]
                                                    FROM [dbo].[Employee_Poe] ", con);

            SqlDataAdapter data = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();

            data.Fill(dt);

            GridView_Employee.DataSource = dt;
            GridView_Employee.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
            SqlCommand comm = new SqlCommand(@"UPDATE [dbo].[Employee_Poe]
                                                     SET [Employee_ID] = '" + txtEmpID.Text + "'" +
                                                       ",[Employee_Name] = '" + txtEmpName.Text + "'" +
                                                       ",[Job_JobCardNo] = '" + txtJobCardNo.Text + "'" +
                                                            "WHERE [Employee_ID] = '" + txtEmpID.Text + "'", con);

            con.Open();
            comm.ExecuteNonQuery();

            Response.Write("Data Updated succesfully");

            con.Close();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
            SqlCommand comm = new SqlCommand(@"INSERT INTO [dbo].[Employee_Poe]
                                                        ([Employee_ID]
                                                        ,[Employee_Name]
                                                        ,[Job_JobCardNo])
                                                     VALUES ('" + txtEmpID.Text + "', '" + txtEmpName.Text + "'," + txtJobCardNo.Text + ")", con);

            con.Open();
            comm.ExecuteNonQuery();

            Response.Write("Data Created succesfully");

            con.Close();
        }

        protected void btnReturnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_HomePage.aspx");
        }
    }
}