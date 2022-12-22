
namespace MusicPlayer.CustomControl
{
    partial class love
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
            this.label_tennhac = new System.Windows.Forms.Label();
            this.label_tencasi = new System.Windows.Forms.Label();
            this.label_namph = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.cButton2 = new MusicPlayer.CustomControl.CButton();
            this.cButton1 = new MusicPlayer.CustomControl.CButton();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label_tennhac
            // 
            this.label_tennhac.AutoSize = true;
            this.label_tennhac.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tennhac.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label_tennhac.Location = new System.Drawing.Point(162, 17);
            this.label_tennhac.Name = "label_tennhac";
            this.label_tennhac.Size = new System.Drawing.Size(141, 32);
            this.label_tennhac.TabIndex = 1;
            this.label_tennhac.Text = "Tên nhạc";
            // 
            // label_tencasi
            // 
            this.label_tencasi.AutoSize = true;
            this.label_tencasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tencasi.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_tencasi.Location = new System.Drawing.Point(163, 70);
            this.label_tencasi.Name = "label_tencasi";
            this.label_tencasi.Size = new System.Drawing.Size(111, 29);
            this.label_tencasi.TabIndex = 2;
            this.label_tencasi.Text = "Tên ca sĩ";
            // 
            // label_namph
            // 
            this.label_namph.AutoSize = true;
            this.label_namph.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_namph.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_namph.Location = new System.Drawing.Point(163, 120);
            this.label_namph.Name = "label_namph";
            this.label_namph.Size = new System.Drawing.Size(174, 29);
            this.label_namph.TabIndex = 3;
            this.label_namph.Text = "Năm phát hành";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(6, 11);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(143, 158);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // cButton2
            // 
            this.cButton2.BackColor = System.Drawing.Color.Red;
            this.cButton2.BackgroundColor = System.Drawing.Color.Red;
            this.cButton2.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.cButton2.BorderRadius = 20;
            this.cButton2.BorderSize = 0;
            this.cButton2.FlatAppearance.BorderSize = 0;
            this.cButton2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cButton2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cButton2.ForeColor = System.Drawing.Color.White;
            this.cButton2.Location = new System.Drawing.Point(513, 101);
            this.cButton2.Name = "cButton2";
            this.cButton2.Size = new System.Drawing.Size(122, 51);
            this.cButton2.TabIndex = 5;
            this.cButton2.Text = "Xóa";
            this.cButton2.TextColor = System.Drawing.Color.White;
            this.cButton2.UseVisualStyleBackColor = false;
            this.cButton2.Click += new System.EventHandler(this.cButton2_Click);
            // 
            // cButton1
            // 
            this.cButton1.BackColor = System.Drawing.Color.LightSeaGreen;
            this.cButton1.BackgroundColor = System.Drawing.Color.LightSeaGreen;
            this.cButton1.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.cButton1.BorderRadius = 20;
            this.cButton1.BorderSize = 0;
            this.cButton1.FlatAppearance.BorderSize = 0;
            this.cButton1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cButton1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cButton1.ForeColor = System.Drawing.Color.White;
            this.cButton1.Location = new System.Drawing.Point(513, 27);
            this.cButton1.Name = "cButton1";
            this.cButton1.Size = new System.Drawing.Size(122, 51);
            this.cButton1.TabIndex = 4;
            this.cButton1.Text = "Chi tiết";
            this.cButton1.TextColor = System.Drawing.Color.White;
            this.cButton1.UseVisualStyleBackColor = false;
            this.cButton1.Click += new System.EventHandler(this.cButton1_Click);
            // 
            // love
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cButton2);
            this.Controls.Add(this.cButton1);
            this.Controls.Add(this.label_namph);
            this.Controls.Add(this.label_tencasi);
            this.Controls.Add(this.label_tennhac);
            this.Controls.Add(this.pictureBox1);
            this.Name = "love";
            this.Size = new System.Drawing.Size(662, 181);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label_tennhac;
        private System.Windows.Forms.Label label_tencasi;
        private System.Windows.Forms.Label label_namph;
        private CButton cButton1;
        private CButton cButton2;
    }
}
