
namespace MusicPlayer.CustomControl
{
    partial class music
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(music));
            this.label2 = new System.Windows.Forms.Label();
            this.label_tencasi = new System.Windows.Forms.Label();
            this.label_tennhac = new System.Windows.Forms.Label();
            this.label_num = new System.Windows.Forms.Label();
            this.label_ngaythemvao = new System.Windows.Forms.Label();
            this.cButton1 = new MusicPlayer.CustomControl.CButton();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label2.Location = new System.Drawing.Point(170, 101);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(125, 18);
            this.label2.TabIndex = 11;
            this.label2.Text = "Ngày thêm vào:";
            this.label2.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_tencasi
            // 
            this.label_tencasi.AutoSize = true;
            this.label_tencasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tencasi.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_tencasi.Location = new System.Drawing.Point(171, 59);
            this.label_tencasi.Name = "label_tencasi";
            this.label_tencasi.Size = new System.Drawing.Size(77, 18);
            this.label_tencasi.TabIndex = 10;
            this.label_tencasi.Text = "Tên ca sĩ";
            this.label_tencasi.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_tennhac
            // 
            this.label_tennhac.AutoSize = true;
            this.label_tennhac.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tennhac.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label_tennhac.Location = new System.Drawing.Point(168, 14);
            this.label_tennhac.Name = "label_tennhac";
            this.label_tennhac.Size = new System.Drawing.Size(99, 24);
            this.label_tennhac.TabIndex = 9;
            this.label_tennhac.Text = "Tên nhạc";
            this.label_tennhac.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_num
            // 
            this.label_num.Font = new System.Drawing.Font("Cooper Black", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_num.Location = new System.Drawing.Point(-5, 52);
            this.label_num.Name = "label_num";
            this.label_num.Size = new System.Drawing.Size(51, 44);
            this.label_num.TabIndex = 7;
            this.label_num.Text = "01";
            this.label_num.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_ngaythemvao
            // 
            this.label_ngaythemvao.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_ngaythemvao.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_ngaythemvao.Location = new System.Drawing.Point(300, 101);
            this.label_ngaythemvao.MinimumSize = new System.Drawing.Size(120, 0);
            this.label_ngaythemvao.Name = "label_ngaythemvao";
            this.label_ngaythemvao.Size = new System.Drawing.Size(120, 49);
            this.label_ngaythemvao.TabIndex = 12;
            this.label_ngaythemvao.Text = "Ngày thêm vào";
            this.label_ngaythemvao.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // cButton1
            // 
            this.cButton1.BackColor = System.Drawing.Color.Transparent;
            this.cButton1.BackgroundColor = System.Drawing.Color.Transparent;
            this.cButton1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("cButton1.BackgroundImage")));
            this.cButton1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.cButton1.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.cButton1.BorderRadius = 20;
            this.cButton1.BorderSize = 0;
            this.cButton1.FlatAppearance.BorderSize = 0;
            this.cButton1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cButton1.ForeColor = System.Drawing.Color.White;
            this.cButton1.Location = new System.Drawing.Point(369, 14);
            this.cButton1.Name = "cButton1";
            this.cButton1.Size = new System.Drawing.Size(51, 44);
            this.cButton1.TabIndex = 13;
            this.cButton1.TextColor = System.Drawing.Color.White;
            this.cButton1.UseVisualStyleBackColor = false;
            this.cButton1.Click += new System.EventHandler(this.cButton1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(43, 11);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(122, 128);
            this.pictureBox1.TabIndex = 8;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // music
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cButton1);
            this.Controls.Add(this.label_ngaythemvao);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label_tencasi);
            this.Controls.Add(this.label_tennhac);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label_num);
            this.Name = "music";
            this.Size = new System.Drawing.Size(436, 150);
            this.Click += new System.EventHandler(this.pictureBox1_Click);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label_tencasi;
        private System.Windows.Forms.Label label_tennhac;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label_num;
        private System.Windows.Forms.Label label_ngaythemvao;
        private CButton cButton1;
    }
}
