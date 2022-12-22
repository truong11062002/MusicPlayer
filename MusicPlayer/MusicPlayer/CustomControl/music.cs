using MusicPlayer.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Resources;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MusicPlayer.CustomControl
{
    public partial class music : UserControl
    {
        private Form activeForm = null;
        private string music_id;
        private DataTable dtShowMyList = null;
        public music()
        {
            InitializeComponent();
        }

        public music(Bitmap bm, DataRow dr, int num): this()
        {
            pictureBox1.BackgroundImage = bm;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;

            label_tennhac.Text = dr["music_name"].ToString();
            label_tencasi.Text = dr["singer_name"].ToString();
            label_ngaythemvao.Text = dr["music_playlist_time"].ToString();
            pictureBox1.Name = dr["playlist_id"].ToString();
            music_id = dr["music_id"].ToString();
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

        private void cButton1_Click(object sender, EventArgs e)
        {
            DataProvider provider = new DataProvider();

            string query = $"delete from PLAYLIST_DETAIL where playlist_id = '{pictureBox1.Name}' and PLAYLIST_DETAIL.music_id = '{music_id}'";

            //string query = $"update MUSIC set music_love_status = {i} where music_id = '{id}'";

            provider.ExecuteNonQuery(query);
            Load_MyPlayList();
            Load_MusicInPlaylist(pictureBox1.Name);
        }

        private void Load_MusicInPlaylist(string id)
        {
            Variables.ListFormPanel.ListFormsPanel[1].Controls.Clear();
            string query = $"select [music_name] , [singer_name], [playlist_id], PLAYLIST_DETAIL.music_id, PLAYLIST_DETAIL.music_playlist_time, [music_name] from PLAYLIST_DETAIL inner join MUSIC on PLAYLIST_DETAIL.music_id = MUSIC.music_id where playlist_id = '{id}'";

            DataProvider provider = new DataProvider();
            DataTable dtShowMyList = provider.ExecuteQuery(query);
            ResourceManager rm;
            if (dtShowMyList.Rows.Count > 0)
            {
                int i = 1;
                foreach (DataRow row in dtShowMyList.Rows)
                {
                    rm = image.ResourceManager;
                    Bitmap myImage = (Bitmap)rm.GetObject(row["music_id"].ToString());

                    CustomControl.music item = new CustomControl.music(
                        myImage,
                        row,
                        i++
                    );
                    Variables.ListFormPanel.ListFormsPanel[1].Controls.Add(item);
                }
            }
            else
            {
                //rm = CreateResources.Variables.rm_logo;
                //FlowLayoutPanel_OrderProduct.BackgroundImage = (Bitmap)rm.GetObject("No_product");
            }
        }

        private void Load_MyPlayList()
        {
            Variables.ListFormPanel.ListFormsPanel[2].Controls.Clear();
            string query = "select * from PLAYLIST";

            DataProvider provider = new DataProvider();
            DataTable dtShowMyList = provider.ExecuteQuery(query);


            ResourceManager rm;
            if (dtShowMyList.Rows.Count > 0)
            {
                foreach (DataRow row in dtShowMyList.Rows)
                {
                    rm = image.ResourceManager;
                    Bitmap myImage = (Bitmap)rm.GetObject(row["playlist_logo"].ToString());

                    CustomControl.playlist item = new CustomControl.playlist(
                        myImage,
                        row
                    );
                    Variables.ListFormPanel.ListFormsPanel[2].Controls.Add(item);
                }
            }
            else
            {
                //rm = CreateResources.Variables.rm_logo;
                //FlowLayoutPanel_OrderProduct.BackgroundImage = (Bitmap)rm.GetObject("No_product");
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Bitmap myImage = (Bitmap)image.ResourceManager.GetObject(music_id);

            DataProvider provider = new DataProvider();
            string query = $"select * from MUSIC where music_id = '{music_id}'";
            DataTable dt = provider.ExecuteQuery(query);
            openChildForm(new DetailMusic(myImage, dt));
        }
    }
}
