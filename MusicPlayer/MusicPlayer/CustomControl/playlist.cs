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
    public partial class playlist : UserControl
    {
        private DataTable dtShowMyList = null;
        private bool isClicked = false;
        public playlist()
        {
            
        }
        public playlist(Bitmap bm, DataRow dr): this()
        {
            InitializeComponent();
            pictureBox1.BackgroundImage = bm;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;

            label_name_playlist.Text = dr["playlist_name"].ToString();
            pictureBox1.Name = dr["playlist_id"].ToString();
            dtShowMyList = Datatable_MusicInPlaylist(pictureBox1.Name);
            label_soluongphim.Text = dtShowMyList.Rows.Count.ToString();

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            isClicked = !isClicked;
            if (isClicked)
            {
                BackColor = Color.AliceBlue;
            }
            else
            {
                BackColor = Color.Gray;
            }
            Load_MusicInPlaylist();
            Variables.globalVariable.Select_playlist = pictureBox1.Name;
            
        }


        private void Load_MusicInPlaylist()
        {
            Variables.ListFormPanel.ListFormsPanel[1].Controls.Clear();
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

        private DataTable Datatable_MusicInPlaylist(string id)
        {
            string query = $"select [music_name] , [singer_name], [playlist_id], PLAYLIST_DETAIL.music_id, PLAYLIST_DETAIL.music_playlist_time, [music_name] from PLAYLIST_DETAIL inner join MUSIC on PLAYLIST_DETAIL.music_id = MUSIC.music_id where playlist_id = '{id}'";

            DataProvider provider = new DataProvider();
            DataTable dt = provider.ExecuteQuery(query);
            return dt;
        }

        private void playlist_Load(object sender, EventArgs e)
        {

        }
    }
}
