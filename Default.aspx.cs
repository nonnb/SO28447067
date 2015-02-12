using System;
using System.Web.UI;

namespace WebApplication12
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = new[]
                {
                    new Entity
                    {
                        ServiceId = 1,
                        Rate = 240.0m,
                        Quantity = 1
                    },
                    new Entity
                    {
                        ServiceId = 2,
                        Rate = 100.0m,
                        Quantity = 1
                    },
                    new Entity
                    {
                        ServiceId = 3,
                        Rate = 40.0m,
                        Quantity = 1
                    },
                    new Entity
                    {
                        ServiceId = 4,
                        Rate = 150.0m,
                        Quantity = 1
                    }
                };
                GridView1.DataBind();
            }
        }
    }
}