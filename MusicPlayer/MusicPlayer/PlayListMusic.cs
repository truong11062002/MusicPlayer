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

namespace MusicPlayer
{
    public partial class PlayListMusic : Form
    {
        private Form activeForm = null;
        public PlayListMusic()
        {
            InitializeComponent();
            Variables.ListFormPanel.ListFormsPanel.Add(flowLayoutPanel_music);
            Variables.ListFormPanel.ListFormsPanel.Add(flowLayoutPanel_playlist);
            Load_MyPlayList();
        }

        private void Load_MyPlayList()
        {

            Variables.ListFormPanel.ListFormsPanel[2].Controls.Clear();
            Variables.ListFormPanel.ListFormsPanel[1].Controls.Clear();

            string query = "SELECT * FROM PLAYLIST";

            DataProvider provider = new DataProvider();
            DataTable dtShowMyList = provider.ExecuteQuery(query);
            this.label_soluongLP.Text = dtShowMyList.Rows.Count.ToString();
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
                    flowLayoutPanel_playlist.Controls.Add(item);
                }
            }
            else
            {
                //rm = CreateResources.Variables.rm_logo;
                //FlowLayoutPanel_OrderProduct.BackgroundImage = (Bitmap)rm.GetObject("No_product");
            }
        }

        private void iconButton1_Click(object sender, EventArgs e)
        {
            this.panel_taomoi.Visible = true;
        }

        private void iconButton4_Click(object sender, EventArgs e)
        {
            this.panel_taomoi.Visible = false;
            this.textBox_name_playlist.Clear();
        }

        private void PlayListMusic_FormClosing(object sender, FormClosingEventArgs e)
        {
            Variables.ListFormPanel.ListFormsPanel.RemoveRange(Variables.ListFormPanel.ListFormsPanel.Count - 2, Variables.ListFormPanel.ListFormsPanel.Count - 1);
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
        private void iconButton3_Click(object sender, EventArgs e)
        {
            string query;
            DataProvider provider = new DataProvider();
            query = "select * from PLAYLIST";
            DataTable dt = provider.ExecuteQuery(query);

            int number_of_playlist = Convert.ToInt16(dt.AsEnumerable().Last()["playlist_id"].ToString().Substring(2));

            query = $"select * from PLAYLIST where playlist_name = N'{textBox_name_playlist.Text}'";
            dt = provider.ExecuteQuery(query);
            if (dt.Rows.Count != 0)
                MessageBox.Show("Playlist đã tồn tại!");
            else
            {
                string a;
                number_of_playlist++;
                if (number_of_playlist < 10)
                    a = "0" + number_of_playlist.ToString();
                else
                    a = number_of_playlist.ToString();

                string image_new;
                switch (comboBox_Image.Text)
                {
                    case "Image 01":
                        image_new = "lg06";
                        break;
                    case "Image 02":
                        image_new = "lg07";
                        break;
                    case "Image 03":
                        image_new = "lg08";
                        break;
                    case "Image 04":
                        image_new = "lg09";
                        break;
                    case "Image 05":
                        image_new = "lg10";
                        break;
                    default:
                        image_new = "lg06";
                        break;
                }
                query = $"insert into PLAYLIST values('pl{a}', N'{textBox_name_playlist.Text}', '{DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss tt")}', '{image_new}')";
                provider.ExecuteNonQuery(query);
                if (Application.OpenForms.OfType<PlayListMusic>().Count() == 1)
                    Application.OpenForms.OfType<PlayListMusic>().First().Close();
                MessageBox.Show("Tạo playlist thành công!");
                openChildForm(new PlayListMusic());
            }
        }

        private void comboBox_Image_SelectedIndexChanged(object sender, EventArgs e)
        {
            string image_new;
            switch (comboBox_Image.Text)
            {
                case "Image 01":
                    image_new = "lg06";
                    break;
                case "Image 02":
                    image_new = "lg07";
                    break;
                case "Image 03":
                    image_new = "lg08";
                    break;
                case "Image 04":
                    image_new = "lg09";
                    break;
                case "Image 05":
                    image_new = "lg10";
                    break;
                default:
                    image_new = "lg06";
                    break;
            }
            Bitmap myImage = (Bitmap)image.ResourceManager.GetObject(image_new);
            pictureBox1.BackgroundImage = myImage;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;
        }

        private void iconButton2_Click(object sender, EventArgs e)
        {
            if (Variables.globalVariable.Select_playlist == "")
                MessageBox.Show("Chọn playlist");
            else
            {
                DataProvider provider = new DataProvider();
                string query = $"delete from PLAYLIST where playlist_id = '{Variables.globalVariable.Select_playlist}'";
                provider.ExecuteNonQuery(query);
                query = $"delete from PLAYLIST_DETAIL where playlist_id = '{Variables.globalVariable.Select_playlist}'";
                provider.ExecuteNonQuery(query);
                Load_MyPlayList();
            }
        }
    }
}
