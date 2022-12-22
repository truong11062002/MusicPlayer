using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MusicPlayer
{
    public partial class PlayMusic : Form
    {
        
        public PlayMusic()
        {
            InitializeComponent();
        }



        public PlayMusic(DataTable dt) : this()
        {
            DataRow dr = dt.Rows[0];

            if (File.Exists("MusicData/" + dr["music_id"].ToString() + ".mp4"))
            {
                axWindowsMediaPlayer.URL = "MusicData/" + dr["music_id"].ToString() + ".mp4";
            }
            else
                axWindowsMediaPlayer.URL = "MusicData/" + dr["music_id"].ToString() + ".mp3";

            axWindowsMediaPlayer.Ctlcontrols.play();

            label_tennhac.Text = dr["music_name"].ToString();
            label_tencasi.Text = dr["singer_name"].ToString();
            richTextBox_loibaihat.Text = dr["music_lyric"].ToString();
        }
    }
}
