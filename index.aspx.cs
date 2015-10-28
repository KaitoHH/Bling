using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bling
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ip = HttpContext.Current.Request.UserHostAddress;
            string path = HttpContext.Current.Server.MapPath("");
            FileStream fs = new FileStream(path + "\\ip.txt", FileMode.Append);
            StreamWriter sw = new StreamWriter(fs, System.Text.Encoding.UTF8);
            sw.WriteLine("[{0}]:{1}", DateTime.Now.ToString(), ip);
            sw.Close();
        }
    }
}