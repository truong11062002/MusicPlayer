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
    public partial class history : UserControl
    {
        private Form activeForm = null;
        string id_history_global;
        
        public history()
        {
            InitializeComponent();
        }

        public history(Bitmap bm, DataRow dr): this()
        {
            pictureBox1.BackgroundImage = bm;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;

            label_tennhac.Text = dr["music_name"].ToString();
            label_tencasi.Text = dr["singer_name"].ToString();
            label_thoigian.Text = dr["history_music_time"].ToString();
            id_history_global = dr["history_music_id"].ToString();
            pictureBox1.Name = dr["music_id"].ToString();
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
        private void cButton1_Click(object sender, EventArgs e)
        {
            DataProvider provider = new DataProvider();

            string query = $"delete from HISTORY_MUSIC_LIST where history_music_id = '{id_history_global}'";
            
            //string query = $"update MUSIC set music_love_status = {i} where music_id = '{id}'";

            provider.ExecuteNonQuery(query);
            openChildForm(new FormHistory());
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Bitmap myImage = (Bitmap)image.ResourceManager.GetObject(pictureBox1.Name);

            DataProvider provider = new DataProvider();
            string query = $"select * from MUSIC where music_id = '{pictureBox1.Name}'";
            DataTable dt = provider.ExecuteQuery(query);
            openChildForm(new DetailMusic(myImage, dt));
        }
    }
}
