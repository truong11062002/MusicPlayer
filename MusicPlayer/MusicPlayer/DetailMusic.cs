using FontAwesome.Sharp;
using MusicPlayer.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Resources;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MusicPlayer
{
    public partial class DetailMusic : Form
    {
        DataTable dt_global;
        string status = "0";
        private Form activeForm = null;
        string id_global;
        int countNumOfView;
        public DetailMusic()
        {
        }

        public DetailMusic(Bitmap bm, DataTable dt) : this()
        {
            InitializeComponent();
            dt_global = dt;
            DataRow dr = dt.Rows[0];

            music_pictureBox.BackgroundImage = bm;
            music_pictureBox.BackgroundImageLayout = ImageLayout.Stretch;

            label_tennhac.Text = dr["music_name"].ToString();
            label_tacgia.Text = dr["music_author"].ToString();
            label_tencasi.Text = dr["singer_name"].ToString();
            label_theloai.Text = dr["music_category"].ToString();
            label_thoiluong.Text = dr["music_time"].ToString();
            label_namsx.Text = dr["music_release"].ToString();
            label_luotnghe.Text = dr["music_freq"].ToString();
            label_quocgia.Text = dr["music_country"].ToString();
            richTextBox_loibaihat.Text = dr["music_lyric"].ToString();
            id_global = dr["music_id"].ToString();
            UpdateStatusLove(dr["music_id"].ToString());
            Load_MyPlayList();
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
            DataRow dr = dt_global.Rows[0];
            openChildForm(new PlayMusic(dt_global));
            countNumOfView = Convert.ToInt32(dr["music_freq"]);
            CountView(id_global, ++countNumOfView);
            label_danhgia.Text = countNumOfView.ToString();
            // Update history

            string query = $"insert into HISTORY_MUSIC_LIST values('{id_global}', '{DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss")}')";
            DataProvider provider = new DataProvider();
            provider.ExecuteNonQuery(query);
        }

        private void CountView(string id, int count)
        {
            DataProvider provider = new DataProvider();
            string query = $"update MUSIC set music_freq = {count} where music_id = '{id}'";
            provider.ExecuteNonQuery(query);
        }
        private void cButton2_Click(object sender, EventArgs e)
        {
            DataRow dr = dt_global.Rows[0];
            OpenFileDialog folderBrowser = new OpenFileDialog();
            folderBrowser.ValidateNames = false;
            folderBrowser.CheckFileExists = false;
            folderBrowser.CheckPathExists = true;
            folderBrowser.FileName = "Folder Selection";

            if (folderBrowser.ShowDialog() == DialogResult.OK)
            {
                string folderPath = Path.GetDirectoryName(folderBrowser.FileName);
                using (var client = new WebClient())
                {
                    client.DownloadFile($"MusicData/{dr["music_id"]}.mp3", folderPath + $"/{dr["music_id"]}.mp3");
                }
                MessageBox.Show("Tải phim thành công!");
            }
            else
                MessageBox.Show("Tải phim thất bại!");
        }

        private void UpdateStatusLove(string id)
        {
            DataProvider provider = new DataProvider();
            string query = $"select * from MUSIC where music_id = '{id}'";
            DataTable dt = provider.ExecuteQuery(query);

            DataRow dr = dt.Rows[0];
            if (dr["music_love_status"].ToString() == "0")
            {
                status = "0";
                btn_love.Text = "Yêu thích";
                btn_love.BackColor = Color.Red;
            }
            else
            {
                status = "1";
                btn_love.Text = "Bỏ yêu thích";
                btn_love.BackColor = Color.Green;
            }
        }

        private void iconButton1_Click(object sender, EventArgs e)
        {
            DataRow dr = dt_global.Rows[0];
            DataProvider provider = new DataProvider();
            int i;
            if (status == "1") i = 0;
            else i = 1;
            string query = $"update MUSIC set music_love_status = {i} where music_id = '{dr["music_id"]}'";

            provider.ExecuteNonQuery(query);
            if (status == "1") status = "0";
            else status = "1";
            UpdateStatusLove(dr["music_id"].ToString());
        }

        private void b1_MouseEnter(object sender, EventArgs e)
        {
            IconButton btn = (IconButton)sender;
            string numberStar = btn.Name.Substring(1);

            foreach (IconButton item in flowLayoutPanel1.Controls)
            {
                if (Convert.ToInt16(item.Name.Substring(1)) <= Convert.ToInt16(numberStar))
                    item.IconColor = Color.Red;
                else
                    item.IconColor = Color.Black;
            }
        }

        private void b1_MouseLeave(object sender, EventArgs e)
        {
            IconButton btn = (IconButton)sender;
            LoadStars(id_global);
        }

        private void LoadStars(string id)
        {
            DataProvider provider = new DataProvider();
            string query = $"select [music_stars] from MUSIC where music_id = '{id}'";
            DataTable dt = provider.ExecuteQuery(query);

            DataRow dr = dt.Rows[0];

            string numberStar = dr["music_stars"].ToString();

            foreach (IconButton item in flowLayoutPanel1.Controls)
            {
                if (Convert.ToInt16(item.Name.Substring(1)) <= Convert.ToInt16(numberStar))
                    item.IconColor = Color.Red;
                else
                    item.IconColor = Color.Black;
            }

            label_danhgia.Text = dr["music_stars"].ToString() + "/5";
        }

        private void b1_Click(object sender, EventArgs e)
        {
            IconButton btn = (IconButton)sender;
            DataProvider provider = new DataProvider();
            string query = $"update MUSIC set music_stars = {btn.Name.Substring(1)} where music_id = '{id_global}'";
            provider.ExecuteNonQuery(query);
            MessageBox.Show("Đánh giá thành công!");
            LoadStars(id_global);
        }

        private void iconButton8_Click(object sender, EventArgs e)
        {
            this.panel_playlist.Visible = true;
            this.flowLayoutPanel_listPL.Visible = true;
        }

        private void Load_MyPlayList()
        {
            string query = "SELECT * FROM PLAYLIST";

            DataProvider provider = new DataProvider();
            DataTable dtShowMyList = provider.ExecuteQuery(query);

            ResourceManager rm;
            if (dtShowMyList.Rows.Count > 0)
            {
                foreach (DataRow row in dtShowMyList.Rows)
                {
                    rm = image.ResourceManager;
                    Bitmap myImage = (Bitmap)rm.GetObject(row["playlist_logo"].ToString());

                    CustomControl.choosePlayList item = new CustomControl.choosePlayList(
                        myImage,
                        row,
                        id_global
                    );
                    flowLayoutPanel_listPL.Controls.Add(item);
                }
            }
            else
            {
                //rm = CreateResources.Variables.rm_logo;
                //FlowLayoutPanel_OrderProduct.BackgroundImage = (Bitmap)rm.GetObject("No_product");
            }
        }

        private void iconButton4_Click(object sender, EventArgs e)
        {
            this.panel_playlist.Visible = false;
        }
    }
}
