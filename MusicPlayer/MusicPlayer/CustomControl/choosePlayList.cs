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
    public partial class choosePlayList : UserControl
    {
        string _playlistID = null;
        string _musicID = null;
        public choosePlayList()
        {
            
            

        }

        public choosePlayList(Bitmap bm, DataRow dr, string id) : this()
        {
            InitializeComponent();
            _playlistID = dr["playlist_id"].ToString();
            _musicID = id;

            pictureBox1.BackgroundImage = bm;
            pictureBox1.BackgroundImageLayout = ImageLayout.Stretch;

            label_name_playlist.Text = dr["playlist_name"].ToString();
            pictureBox1.Name = dr["playlist_id"].ToString();

            bool check_exist_movie_in_playlist = CheckExist_MusicInPlaylist(_playlistID, _musicID);
            iconButton_add.BackColor = Color.ForestGreen;
            if (check_exist_movie_in_playlist)
            {
                BackColor = Color.Green;
                iconButton_add.Visible = false;
            }
            else
            {
                BackColor = Color.White;
                iconButton_add.Visible = true;
            }
            
        }

        private void iconButton1_Click(object sender, EventArgs e)
        {
            
            string query = $"insert into PLAYLIST_DETAIL values('{_playlistID}', '{_musicID}', '{DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss tt")}')";

            DataProvider provider = new DataProvider();
            provider.ExecuteNonQuery(query);
            BackColor = Color.Green;
            iconButton_add.Visible = false;
        }

        private bool CheckExist_MusicInPlaylist(string playlist_id, string music_id)
        {
            string query = $"select [playlist_id], PLAYLIST_DETAIL.music_id from PLAYLIST_DETAIL inner join MUSIC on PLAYLIST_DETAIL.music_id = MUSIC.music_id " +
                $"where playlist_id = '{playlist_id}' and PLAYLIST_DETAIL.music_id = '{music_id}'";
            DataProvider provider = new DataProvider();

            DataTable dt = provider.ExecuteQuery(query);
            if (dt.Rows.Count != 0)
                return true;
            else
                return false;
        }
    }
}
