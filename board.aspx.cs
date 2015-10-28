using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace bling
{
    public partial class board : System.Web.UI.Page
    {
        public string msg;
        string path;
        static public string text;
        protected void Page_Load(object sender, EventArgs e)
        {
            path = HttpContext.Current.Server.MapPath("\\");
            text = File.ReadAllText(path + "comment.txt");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length==0)
            {
                msg="<div class=\"alert alert-danger\" role=\"alert\" >请输入昵称!</div>";
            }else if (TextBox2.Text.Length == 0)
            {
                msg = "<div class=\"alert alert-danger\" role=\"alert\" >请输入正文!</div>";
            }
            else
            {
                string date = DateTime.Now.ToString();
                string nickname = TextBox1.Text;
                string message = TextBox2.Text;
                string single = "<strong><h3>"+nickname+ "</strong><span style='float: right;'><small>" + date+"</small></span></h3>";
                single += "<h5>"+message + "</h5><hr/>";
                text = single + text;
                FileStream fs = new FileStream(path+"\\comment.txt", FileMode.Create);
                StreamWriter sw = new StreamWriter(fs, System.Text.Encoding.UTF8);
                sw.Write(text);
                sw.Close();
                fs.Close();
                msg = "<div class=\"alert alert-success\" role=\"alert\" >发表成功!</div>";
            }
        }
    }
    
}