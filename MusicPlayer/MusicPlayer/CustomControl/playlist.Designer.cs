
namespace MusicPlayer.CustomControl
{
    partial class playlist
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label_name_playlist = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label_soluongphim = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label_name_playlist
            // 
            this.label_name_playlist.AutoSize = true;
            this.label_name_playlist.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_name_playlist.ForeColor = System.Drawing.Color.DarkOrange;
            this.label_name_playlist.Location = new System.Drawing.Point(7, 191);
            this.label_name_playlist.Name = "label_name_playlist";
            this.label_name_playlist.Size = new System.Drawing.Size(141, 25);
            this.label_name_playlist.TabIndex = 1;
            this.label_name_playlist.Text = "Name playlist";
            this.label_name_playlist.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(9, 230);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(138, 24);
            this.label2.TabIndex = 3;
            this.label2.Text = "Số lượng phim:";
            this.label2.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_soluongphim
            // 
            this.label_soluongphim.AutoSize = true;
            this.label_soluongphim.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_soluongphim.Location = new System.Drawing.Point(149, 231);
            this.label_soluongphim.Name = "label_soluongphim";
            this.label_soluongphim.Size = new System.Drawing.Size(20, 24);
            this.label_soluongphim.TabIndex = 4;
            this.label_soluongphim.Text = "0";
            this.label_soluongphim.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(5, 8);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(338, 163);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // playlist
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Gray;
            this.Controls.Add(this.label_soluongphim);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label_name_playlist);
            this.Controls.Add(this.pictureBox1);
            this.Name = "playlist";
            this.Size = new System.Drawing.Size(349, 269);
            this.Load += new System.EventHandler(this.playlist_Load);
            this.Click += new System.EventHandler(this.pictureBox1_Click);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label_name_playlist;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label_soluongphim;
    }
}
