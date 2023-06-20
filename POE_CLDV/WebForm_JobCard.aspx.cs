using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using System.Configuration;

namespace POE_CLDV
{
    public partial class WebForm_JobCard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadRecord();
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"SELECT * FROM Job_Poe WHERE Job_JobCardNo = (" + int.Parse(txtJobCardNo.Text) + ")", con);

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                txtCustomerID.Text = reader.GetValue(4).ToString();
                txtJobType.Text = reader.GetValue(0).ToString();
                txtJobCode.Text = reader.GetValue(3).ToString();
                txtNoOfDays.Text = reader.GetValue(1).ToString();
            }

            con.Close();
            con.Open();

            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView_Job.DataSource = dt;
                    GridView_Job.DataBind();
                }

                con.Close();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Job_Poe]
                ([Job_JobCardNo], 
				[Customer_ID],
				[Job_Code],
				[Job_JobType],
				[Job_NumberOfDays])
            VALUES 
           ('" + txtJobCardNo.Text + "', '" + txtCustomerID.Text + "','" + txtJobCode.Text + "','" + txtJobType.Text + "','" + txtNoOfDays.Text + "')", con);

            con.Open();
            cmd.ExecuteNonQuery();

            Response.Write("Data inserted succesfully");

            con.Close();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand(@"SELECT * FROM Job_Poe;", con);
            SqlDataAdapter data = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();

            data.Fill(dt);

            GridView_Job.DataSource = dt;
            GridView_Job.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand(@"DELETE FROM [dbo].[Job_Poe] WHERE Job_JobCardNo = (" + int.Parse(txtJobCardNo.Text) + ")", con);

            con.Open();
            comm.ExecuteNonQuery();

            Response.Write("Data Deleted succesfully");

            con.Close();
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_HomePage.aspx");
        }
    }
}