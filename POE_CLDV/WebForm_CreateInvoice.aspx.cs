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
    public partial class WebForm_CreateInvoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=RAVJEE;Initial Catalog=DomingoRoofWorks_PrashilRavjee_20110251;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Customer]
                                                            ([Customer_FullName]
                                                            ,[Customer_Address]
                                                            ,[Customer_City]
                                                            ,[Customer_ZipCode]
                                                            ,[Customer_ID])
                       VALUES('" + txtName.Text + "', '" + txtAddress.Text + "', '" + txtCity.Text + "', " + int.Parse(txtZip.Text) + ", " + int.Parse(txtID.Text) + ");", con);

            SqlDataReader dr = cmd.ExecuteReader();
            con.Close();
            con.Open();

            SqlCommand cmd2 = new SqlCommand(@"INSERT INTO [dbo].[Employee]
                                                ([Employee_ID]
                                                ,[Employee_Name])
                                            VALUES(" + int.Parse(txtEmpID.Text) + ", '" + txtEmpName.Text + "');", con);

            SqlDataReader dr2 = cmd.ExecuteReader();
            con.Close();
            con.Open();

            SqlCommand cmd3 = new SqlCommand(@"INSERT INTO [dbo].[Materials_Deployed]
                                                            ([Material_ID]
                                                            ,[Job_JobCardNo]
                                                            ,[Material_Quantity]
                                                            ,[Material_MaterialType])
                                                VALUES('PP', "+ int.Parse(txtJobCardNum.Text) +", " + int.Parse(txtPP.Text) + ", 'Power Points') ;", con);

            SqlDataReader dr3 = cmd.ExecuteReader();
            con.Close();
        }
    }
}