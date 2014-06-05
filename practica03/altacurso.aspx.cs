using practica03.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practica03
{
    public partial class altacurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                CourseManager proxy = new CourseManager();


                this.GridView1.DataSource = proxy.GetAll();
                this.GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            CourseManager proxy = new CourseManager();
            GridView1.PageIndex = e.NewPageIndex;
            this.GridView1.DataSource = proxy.GetAll();
            this.GridView1.DataBind();

        }
    }
}