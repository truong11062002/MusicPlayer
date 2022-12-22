
namespace MusicPlayer.CustomControl
{
    partial class history_freq
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
            this.label_num = new System.Windows.Forms.Label();
            this.label_tennhac = new System.Windows.Forms.Label();
            this.label_tencasi = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label_luotxem = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label_num
            // 
            this.label_num.Font = new System.Drawing.Font("Cooper Black", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_num.Location = new System.Drawing.Point(-1, 57);
            this.label_num.Name = "label_num";
            this.label_num.Size = new System.Drawing.Size(51, 44);
            this.label_num.TabIndex = 0;
            this.label_num.Text = "01";
            this.label_num.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_tennhac
            // 
            this.label_tennhac.AutoSize = true;
            this.label_tennhac.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tennhac.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label_tennhac.Location = new System.Drawing.Point(181, 9);
            this.label_tennhac.Name = "label_tennhac";
            this.label_tennhac.Size = new System.Drawing.Size(99, 24);
            this.label_tennhac.TabIndex = 4;
            this.label_tennhac.Text = "Tên nhạc";
            this.label_tennhac.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_tencasi
            // 
            this.label_tencasi.AutoSize = true;
            this.label_tencasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tencasi.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_tencasi.Location = new System.Drawing.Point(181, 60);
            this.label_tencasi.Name = "label_tencasi";
            this.label_tencasi.Size = new System.Drawing.Size(96, 24);
            this.label_tencasi.TabIndex = 5;
            this.label_tencasi.Text = "Tên ca sĩ";
            this.label_tencasi.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label2.Location = new System.Drawing.Point(181, 112);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(102, 24);
            this.label2.TabIndex = 6;
            this.label2.Text = "Lượt xem:";
            this.label2.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label_luotxem
            // 
            this.label_luotxem.AutoSize = true;
            this.label_luotxem.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_luotxem.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label_luotxem.Location = new System.Drawing.Point(283, 112);
            this.label_luotxem.Name = "label_luotxem";
            this.label_luotxem.Size = new System.Drawing.Size(21, 24);
            this.label_luotxem.TabIndex = 7;
            this.label_luotxem.Text = "0";
            this.label_luotxem.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(53, 9);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(122, 128);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // history_freq
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label_luotxem);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label_tencasi);
            this.Controls.Add(this.label_tennhac);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label_num);
            this.Name = "history_freq";
            this.Size = new System.Drawing.Size(357, 150);
            this.Click += new System.EventHandler(this.pictureBox1_Click);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label_num;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label_tennhac;
        private System.Windows.Forms.Label label_tencasi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label_luotxem;
    }
}
