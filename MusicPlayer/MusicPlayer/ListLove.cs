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
    public partial class ListLove : Form
    {
        private Form activeForm = null;
        public ListLove()
        {
            InitializeComponent();
            Load_MyFavoriteList();
        }

        private void Load_MyFavoriteList()
        {
            string query = "select * from MUSIC where music_love_status = 1";

            DataProvider provider = new DataProvider();
            DataTable dtShowMyList = provider.ExecuteQuery(query);

            label_soluongyeuthich.Text = dtShowMyList.Rows.Count.ToString();

            ResourceManager rm;
            if (dtShowMyList.Rows.Count > 0)
            {
                foreach (DataRow row in dtShowMyList.Rows)
                {
                    rm = image.ResourceManager;
                    Bitmap myImage = (Bitmap)rm.GetObject(row["music_id"].ToString());

                    CustomControl.love item = new CustomControl.love(
                        myImage,
                        row
                    );
                    flowLayoutPanel1.Controls.Add(item);
                }
            }
            else
            {
                //rm = CreateResources.Variables.rm_logo;
                //FlowLayoutPanel_OrderProduct.BackgroundImage = (Bitmap)rm.GetObject("No_product");
            }
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

        private void iconButton1_Click(object sender, EventArgs e)
        {
            DataProvider provider = new DataProvider();
            string query = $"update MUSIC set music_love_status = 0 where music_love_status = 1";
            provider.ExecuteNonQuery(query);
            openChildForm(new ListLove());
        }
    }
}
