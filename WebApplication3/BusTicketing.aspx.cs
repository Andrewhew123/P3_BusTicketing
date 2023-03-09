using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        const double dblDBAdult = 34.00;
        const double dblDBChild = 25.50;
        const double dblPSAdult = 6.00;
        const double dblPSChild = 4.50;

        protected void Page_Load(object sender, EventArgs e)
        {
            //First time page is loaded = ispostback (false)
            if (IsPostBack == false) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();

            }

        }
        
        /*----- Calendar -----*/
        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        /*----- Depart To -----*/
        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int noAdult = 0;
            int noChild = 0;
            noAdult = int.Parse(txtAdult.Text);
            noChild = int.Parse(txtChild.Text);
            double finalPrice = 0.0;

            
            if (ddlFrom.Text == "Hentian Duta" && ddlTo.Text == "Butterworth")
            {
                finalPrice = (noAdult * dblDBAdult) + (noChild * dblDBChild);
                lblError.Text = string.Empty;
                txtPrice.Enabled = true;
                txtPrice.Text = finalPrice.ToString("C");
            }
            else if (ddlFrom.Text == "Hentian Putra" && ddlTo.Text == "Seremban")
            {
                finalPrice = (noAdult * dblPSAdult) + (noChild * dblPSChild);
                lblError.Text = string.Empty;
                txtPrice.Enabled = true;
                txtPrice.Text = finalPrice.ToString("C");
            }
            else
            {
                lblError.Text = "Sorry. We do not provide trip from " + ddlFrom.Text + " to " + ddlTo.Text;
                txtPrice.Enabled = false;
                txtPrice.Text = string.Empty;
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtDepartDt.Text = string.Empty;
            txtAdult.Text = string.Empty;
            txtChild.Text = string.Empty;
            txtPrice.Text = string.Empty;
            ddlTo.ClearSelection();
            ddlFrom.ClearSelection();
            calDepartDt.SelectedDates.Clear();
        }
    }
}