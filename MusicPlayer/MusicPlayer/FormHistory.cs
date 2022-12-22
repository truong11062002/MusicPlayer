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
    public partial class FormHistory : Form
    {
        public FormHistory()
        {
            InitializeComponent();
            Load_MyHistoryList();
            Load_MyHistoryListFreq();
        }

        private void Load_MyHistoryList()
        {
            string query = "SELECT [music_id], [history_music_id], [music_name], [singer_name], [history_music_time] FROM HISTORY_MUSIC_LIST inner join MUSIC on history_music_id = music_id order by history_music_time desc";

            DataProvider provider = new DataProvider();
            DataTable dtShowMyList = provider.ExecuteQuery(query);

            ResourceManager rm;
            if (dtShowMyList.Rows.Count > 0)
            {
                foreach (DataRow row in dtShowMyList.Rows)
                {
                    rm = image.ResourceManager;
                    Bitmap myImage = (Bitmap)rm.GetObject(row["history_music_id"].ToString());

                    CustomControl.history item = new CustomControl.history(
                        myImage,
                        row
                    );
                    flowLayoutPanel_history.Controls.Add(item);
                }
            }
            else
            {
                //rm = CreateResources.Variables.rm_logo;
                //FlowLayoutPanel_OrderProduct.BackgroundImage = (Bitmap)rm.GetObject("No_product");
            }
        }

        private void Load_MyHistoryListFreq()
        {
            string query = "SELECT [music_id] , [music_name], [music_freq], [singer_name] FROM MUSIC Order by music_freq desc";

            DataProvider provider = new DataProvider();
            DataTable dtShowMyList = provider.ExecuteQuery(query);

            ResourceManager rm;
            int i = 1;
            if (dtShowMyList.Rows.Count > 0)
            {
                foreach (DataRow row in dtShowMyList.Rows)
                {
                    rm = image.ResourceManager;
                    Bitmap myImage = (Bitmap)rm.GetObject(row["music_id"].ToString());

                    CustomControl.history_freq item = new CustomControl.history_freq(
                        myImage,
                        row,
                        i++
                    );
                    flowLayoutPanel_history_freq.Controls.Add(item);
                }
            }
            else
            {
                //rm = CreateResources.Variables.rm_logo;
                //FlowLayoutPanel_OrderProduct.BackgroundImage = (Bitmap)rm.GetObject("No_product");
            }
        }
    }
}
