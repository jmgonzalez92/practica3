using practica03.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practica03
{
    public partial class eliminarcurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                PersonManager proxy = new PersonManager();

                this.DropDownList2.DataSource = proxy.GetAll();
                this.DropDownList2.DataTextField = "LastName";
                this.DropDownList2.DataValueField = "id";
                this.DropDownList2.DataBind();

            }
        }
    }
}