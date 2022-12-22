using MusicPlayer.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MusicPlayer.CustomControl
{
    public partial class love : UserControl
    {
        string status;
        string id;
        private Form activeForm = null;
        public love()
        {
            InitializeComponent();
        }

        public love(Bitmap bm, DataRow dr) : this()
        {
            pictureBox1.BackgroundImage = bm;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;

            label_tennhac.Text = dr["music_name"].ToString();
            label_tencasi.Text = dr["singer_name"].ToString();
            label_namph.Text = dr["music_release"].ToString();

            id = dr["music_id"].ToString();
            status = dr["music_love_status"].ToString();
        }
        
        private void cButton1_Click(object sender, EventArgs e)
        {
            Bitmap myImage = (Bitmap)image.ResourceManager.GetObject(id);

            DataProvider provider = new DataProvider();
            string query = $"select * from MUSIC where music_id = '{id}'";
            DataTable dt = provider.ExecuteQuery(query);
            openChildForm(new DetailMusic(myImage, dt));
        }

        private void openChildForm(Form childForm)
        {
            if (activeForm != null)
                activeForm.Close();
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;

            Variables.ListFormPanel.ListFormsPanel[0].Controls.Add(childForm);
            Variables.ListFormPanel.ListFormsPanel[0].Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        private void cButton2_Click(object sender, EventArgs e)
        {
            DataProvider provider = new DataProvider();

            //string query = $"delete from FAVORITE_MOVIE_LIST where FAVORITE_MOVIE_ID = '{Label_MovieName.Name}'";
            int i;
            if (status == "1") i = 0;
            else i = 1;
            string query = $"update MUSIC set music_love_status = {i} where music_id = '{id}'";

            provider.ExecuteNonQuery(query);
            openChildForm(new ListLove());
        }
    }
}
