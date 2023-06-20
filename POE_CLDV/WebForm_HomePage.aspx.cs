using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POE_CLDV
{
    public partial class WebForm_HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnJobCards_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_JobCard.aspx");
        }

        protected void btnDailyRate_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_DailyRate.aspx");
        }

        protected void btnInvoice_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_Invoice.aspx");
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm_Employee.aspx");
        }
    }
}