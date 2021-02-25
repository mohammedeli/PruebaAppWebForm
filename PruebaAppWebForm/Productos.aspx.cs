using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaAppWebForm
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ListOtion.SelectedItem.Value == "1")
            {
                ListFavoritos.Items.Add("Producto :" + ProductName.Text + "," + "Precio :" + PriceProduct.Text);
            }
            else
            {
                  int suma = int.Parse(QuantityPrduct.Text) * int.Parse(PriceProduct.Text);
                ListCarritos.Items.Add("Producto :" + ProductName.Text + "," + "Cantidad :" + int.Parse(QuantityPrduct.Text) + "," + "Precio :" + int.Parse(PriceProduct.Text) + "," +"Total :" + suma);

                for (int i = 0; i < SubTotal.Text.Length; i++)
                {
                    suma = suma + Convert.ToInt32(SubTotal.Text.Substring(i));
                }
                SubTotal.Text =Convert.ToString(suma);
                ProductName.Text = "";
                QuantityPrduct.Text = "";
                PriceProduct.Text = "";
            }
        }
    }
}