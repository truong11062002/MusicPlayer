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
    public partial class item : UserControl
    {
        private Form activeForm = null;
        public item()
        {
            InitializeComponent();
            
        }

        

        public item(string id, string s1, string s2) : this()
        {
            Bitmap bm1 = (Bitmap)image.ResourceManager.GetObject(id);


            pictureBox1.BackgroundImage = bm1;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;

            pictureBox1.Name = id;
            label1.Text = s1;
            label2.Text = s2;

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            //ResourceManager getRM = Assets.Variables.ResourcesManager.rm_movies;
            Bitmap myImage = (Bitmap)image.ResourceManager.GetObject(pictureBox1.Name);
            string query = $"select * from MUSIC where music_id like '{pictureBox1.Name}'";
            DataProvider provider = new DataProvider();
            DataTable dtShowMovieDetail = provider.ExecuteQuery(query);
            openChildForm(new DetailMusic(myImage, dtShowMovieDetail));
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

        private void EventClick_MovieDetail()
        {
            //ResourceManager getRM = Assets.Variables.ResourcesManager.rm_movies;
            Bitmap bm1 = (Bitmap)image.ResourceManager.GetObject(pictureBox1.Name);
            string query = $"select * from MUSIC where music_id like '{pictureBox1.Name}'";
            DataProvider provider = new DataProvider();
            DataTable dtShowMovieDetail = provider.ExecuteQuery(query);
            openChildForm(new DetailMusic(bm1, dtShowMovieDetail));
        }

        private void item_MouseEnter(object sender, EventArgs e)
        {
            this.BackColor = Color.MediumPurple;
        }

        private void item_MouseLeave(object sender, EventArgs e)
        {
            this.BackColor = Color.Aquamarine;
        }
    }
}
