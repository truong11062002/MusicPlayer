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
    public partial class history_freq : UserControl
    {
        private Form activeForm = null;
        public history_freq()
        {
            InitializeComponent();
        }

        public history_freq(Bitmap bm, DataRow dr, int num): this()
        {
            pictureBox1.BackgroundImage = bm;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;

            label_tennhac.Text = dr["music_name"].ToString();
            label_tencasi.Text = dr["singer_name"].ToString();
            label_luotxem.Text = dr["music_freq"].ToString();
            pictureBox1.Name = dr["music_id"].ToString();
            if (num < 10)
                label_num.Text = "0" + num.ToString();
            else
                label_num.Text = num.ToString();
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
