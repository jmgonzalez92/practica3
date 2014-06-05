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
                CourseManager proxy = new CourseManager();

                this.DropDownList2.DataSource = proxy.GetAll();
                this.DropDownList2.DataTextField = "Title";
                this.DropDownList2.DataValueField = "CourseID";
                this.DropDownList2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(this.DropDownList2.SelectedValue);

            CourseManager proxy = new CourseManager();

            proxy.Remove(id);

           

        }
    }
}