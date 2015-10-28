using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bling
{
    public partial class bling : System.Web.UI.Page
    {
        static int like = 0;
        static int dislike = 0;
        static int nadj, nnoun, npos, ntime;

        protected void Page_Load(object sender, EventArgs e)
        {
            string path = HttpContext.Current.Server.MapPath(@"\dict\");
            string[] adj = System.IO.File.ReadAllLines(path + "adj.txt");
            string[] noun = System.IO.File.ReadAllLines(path + "noun.txt");
            string[] pos = System.IO.File.ReadAllLines(path + "pos.txt");
            string[] time = System.IO.File.ReadAllLines(path + "time.txt");

            Random ran = new Random();
            ntime = ran.Next(time.Length - 1);
            nnoun = ran.Next(noun.Length - 1);
            nadj = ran.Next(adj.Length - 1);
            npos = ran.Next(pos.Length - 1);
            Label1.Text = time[ntime] + "," + pos[npos];
            Label2.Text = adj[nadj] + "的" + noun[nnoun];
            Label3.Text = like.ToString();
            Label4.Text = dislike.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            like++;
            Label3.Text = like.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dislike++;
            Label4.Text = dislike.ToString();
        }
    }
}