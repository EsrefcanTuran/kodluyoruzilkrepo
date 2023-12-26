using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EsrefcanTuranMidterm2
{
    public partial class frmRental : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRent_Click(object sender, EventArgs e)
        {
            sqlRental.Insert();
        }
    }
}