
namespace MusicPlayer.CustomControl
{
    partial class history
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(history));
            this.label_tencasi = new System.Windows.Forms.Label();
            this.label_tennhac = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label_thoigian = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.cButton1 = new MusicPlayer.CustomControl.CButton();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label_tencasi
            // 
            this.label_tencasi.AutoSize = true;
            this.label_tencasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tencasi.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_tencasi.Location = new System.Drawing.Point(214, 61);
            this.label_tencasi.Name = "label_tencasi";
            this.label_tencasi.Size = new System.Drawing.Size(111, 29);
            this.label_tencasi.TabIndex = 4;
            this.label_tencasi.Text = "Tên ca sĩ";
            this.label_tencasi.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_tennhac
            // 
            this.label_tennhac.AutoSize = true;
            this.label_tennhac.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tennhac.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label_tennhac.Location = new System.Drawing.Point(213, 8);
            this.label_tennhac.Name = "label_tennhac";
            this.label_tennhac.Size = new System.Drawing.Size(141, 32);
            this.label_tennhac.TabIndex = 3;
            this.label_tennhac.Text = "Tên nhạc";
            this.label_tennhac.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label1.Location = new System.Drawing.Point(214, 115);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(126, 29);
            this.label1.TabIndex = 5;
            this.label1.Text = "Thời gian: ";
            this.label1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_thoigian
            // 
            this.label_thoigian.AutoSize = true;
            this.label_thoigian.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_thoigian.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_thoigian.Location = new System.Drawing.Point(346, 115);
            this.label_thoigian.Name = "label_thoigian";
            this.label_thoigian.Size = new System.Drawing.Size(103, 29);
            this.label_thoigian.TabIndex = 6;
            this.label_thoigian.Text = "00:00:00";
            this.label_thoigian.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(13, 8);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(179, 149);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
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
            this.cButton1.Location = new System.Drawing.Point(620, 78);
            this.cButton1.Name = "cButton1";
            this.cButton1.Size = new System.Drawing.Size(66, 66);
            this.cButton1.TabIndex = 7;
            this.cButton1.TextColor = System.Drawing.Color.White;
            this.cButton1.UseVisualStyleBackColor = false;
            this.cButton1.Click += new System.EventHandler(this.cButton1_Click);
            // 
            // history
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.MediumAquamarine;
            this.Controls.Add(this.cButton1);
            this.Controls.Add(this.label_thoigian);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label_tencasi);
            this.Controls.Add(this.label_tennhac);
            this.Controls.Add(this.pictureBox1);
            this.Name = "history";
            this.Size = new System.Drawing.Size(715, 167);
            this.Click += new System.EventHandler(this.pictureBox1_Click);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label_tencasi;
        private System.Windows.Forms.Label label_tennhac;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label_thoigian;
        private CButton cButton1;
    }
}
