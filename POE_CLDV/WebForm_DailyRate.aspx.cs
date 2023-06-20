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
    public partial class WebForm_DailyRate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadRecord();
        }

        

        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(@"Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
            SqlCommand comm = new SqlCommand(@"SELECT * FROM JobType;", con);
            con.Open();
            SqlDataAdapter data = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();

            data.Fill(dt);
            GridView_DailyRate.DataSource = dt;
            GridView_DailyRate.DataBind();
            con.Close();
        }

        protected void btnDailyUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
            SqlCommand comm = new SqlCommand(@"UPDATE [dbo].[JobType]
                                                     SET [Job_Code] = '" + txtDailyJobCode.Text + "'" +
                                                        ",[JobType_DailyRate] = '" + txtDailyRate.Text + "'" +
                                                        ",[JobType_JobType] = '" + txtJobType.Text + "'" +
                                                            "WHERE [Job_Code] = '" + txtDailyJobCode.Text + "'", con);

            con.Open();
            comm.ExecuteNonQuery();

            Response.Write("Data Updated succesfully");

            con.Close();
        }

        protected void BtnReturnFromDaily_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_HomePage.aspx");
        }
    }
}