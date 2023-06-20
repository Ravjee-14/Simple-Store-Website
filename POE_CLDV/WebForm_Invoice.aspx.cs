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
    public partial class WebForm_Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadRecord();
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand(@"SELECT * FROM Job WHERE Job_JobCardNo = " + int.Parse(txtInvoiceJobCardNo.Text) + "", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblJobCardNo.Text = dr["Job_JobCardNo"].ToString();

                }
                con.Close();
                con.Open();

                SqlCommand cmd2 = new SqlCommand(@"SELECT Customer.Customer_FullName, Customer.Customer_Address, Customer.Customer_City, Customer.Customer_ZipCode
                                                    FROM Customer
                                                    INNER JOIN Job ON Customer.Customer_ID=Job.Customer_ID
	                                                WHERE Job.Job_JobCardNo = " + int.Parse(txtInvoiceJobCardNo.Text) + "", con);

                SqlDataReader read = cmd2.ExecuteReader();
                GridView_CustomerDetails.DataSource = read;
                GridView_CustomerDetails.DataBind();
                //Response.Write(txtInvoiceJobCardNo.Text + " : Data Retrieved Successfully");

                con.Close();
                con.Open();

                SqlCommand cmd3 = new SqlCommand(@"SELECT Employee.Employee_ID, Employee.Employee_Name
	                                                    FROM Employee
	                                                    INNER JOIN Employee_AssignedJob ON Employee.Employee_ID=Employee_AssignedJob.Employee_ID
	                                                    WHERE Employee_AssignedJob.Job_JobCardNo = " + int.Parse(txtInvoiceJobCardNo.Text) + " ", con);

                SqlDataReader dr2 = cmd3.ExecuteReader();
                GridView_Employee.DataSource = dr2;
                GridView_Employee.DataBind();
                con.Close();

                con.Open();
                SqlCommand cmd4 = new SqlCommand(@"SELECT Material_Quantity, Material_MaterialType
	                                                FROM Materials_Deployed
	                                                WHERE Job_JobCardNo = " + int.Parse(txtInvoiceJobCardNo.Text) + " ", con);


                SqlDataReader dr3 = cmd4.ExecuteReader();
                GridView_Materials.DataSource = dr3;
                GridView_Materials.DataBind();

                con.Close();
                con.Open();

                SqlCommand cmd5 = new SqlCommand(@"SELECT job.Job_JobType, JobType.JobType_DailyRate, Job.Job_NumberOfDays,
		                                            FORMAT ((Job.Job_NumberOfDays * JobType.JobType_DailyRate), 'C', 'en-ZA') AS Subtotal,
		                                            FORMAT ((Job.Job_NumberOfDays * JobType.JobType_DailyRate * 0.14) , 'C', 'en-ZA') AS 'VAT at 14%',
		                                            FORMAT ((Job.Job_NumberOfDays * JobType.JobType_DailyRate * 1.14), 'C', 'en-ZA') AS 'Total Cost'
		                                                    FROM Job
		                                                    INNER JOIN JobType ON Job.Job_Code=JobType.Job_Code
		                                                    WHERE Job.Job_JobCardNo = " + int.Parse(txtInvoiceJobCardNo.Text) + " ", con);

                SqlDataReader dr5 = cmd5.ExecuteReader();
                GridView_Costs.DataSource = dr5;
                GridView_Costs.DataBind();

                con.Close();
            }
            catch
            {
                Response.Write("Please enter a Job Card Number");
            }

        }

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(@"Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
            SqlCommand comm = new SqlCommand(@"SELECT * FROM Job ORDER BY Customer_ID ASC;", con);
            con.Open();
            SqlDataAdapter data = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();

            data.Fill(dt);
            GridView_LoadRecord.DataSource = dt;
            GridView_LoadRecord.DataBind();
            con.Close();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_HomePage.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_CreateInvoice.aspx");
        }
    }
}