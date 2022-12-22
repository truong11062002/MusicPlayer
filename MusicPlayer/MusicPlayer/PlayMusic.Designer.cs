
namespace MusicPlayer
{
    partial class PlayMusic
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(PlayMusic));
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.axWindowsMediaPlayer = new AxWMPLib.AxWindowsMediaPlayer();
            this.label_tencasi = new System.Windows.Forms.Label();
            this.label_tennhac = new System.Windows.Forms.Label();
            this.richTextBox_loibaihat = new System.Windows.Forms.RichTextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.axWindowsMediaPlayer)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.axWindowsMediaPlayer);
            this.panel1.Location = new System.Drawing.Point(11, 15);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(865, 544);
            this.panel1.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.label_tencasi);
            this.panel2.Controls.Add(this.label_tennhac);
            this.panel2.Location = new System.Drawing.Point(15, 565);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(860, 97);
            this.panel2.TabIndex = 1;
            // 
            // panel3
            // 
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Controls.Add(this.richTextBox_loibaihat);
            this.panel3.Controls.Add(this.label4);
            this.panel3.Location = new System.Drawing.Point(895, 15);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(317, 647);
            this.panel3.TabIndex = 2;
            // 
            // axWindowsMediaPlayer
            // 
            this.axWindowsMediaPlayer.Dock = System.Windows.Forms.DockStyle.Top;
            this.axWindowsMediaPlayer.Enabled = true;
            this.axWindowsMediaPlayer.Location = new System.Drawing.Point(0, 0);
            this.axWindowsMediaPlayer.Name = "axWindowsMediaPlayer";
            this.axWindowsMediaPlayer.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("axWindowsMediaPlayer.OcxState")));
            this.axWindowsMediaPlayer.Size = new System.Drawing.Size(865, 541);
            this.axWindowsMediaPlayer.TabIndex = 0;
            // 
            // label_tencasi
            // 
            this.label_tencasi.AutoSize = true;
            this.label_tencasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tencasi.Location = new System.Drawing.Point(13, 58);
            this.label_tencasi.Name = "label_tencasi";
            this.label_tencasi.Size = new System.Drawing.Size(84, 25);
            this.label_tencasi.TabIndex = 4;
            this.label_tencasi.Text = "tên ca sĩ";
            // 
            // label_tennhac
            // 
            this.label_tennhac.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tennhac.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.label_tennhac.Location = new System.Drawing.Point(11, 14);
            this.label_tennhac.Name = "label_tennhac";
            this.label_tennhac.Size = new System.Drawing.Size(663, 36);
            this.label_tennhac.TabIndex = 3;
            this.label_tennhac.Text = "tên nhạc";
            // 
            // richTextBox_loibaihat
            // 
            this.richTextBox_loibaihat.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.richTextBox_loibaihat.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.richTextBox_loibaihat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.1F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBox_loibaihat.Location = new System.Drawing.Point(8, 41);
            this.richTextBox_loibaihat.Name = "richTextBox_loibaihat";
            this.richTextBox_loibaihat.ReadOnly = true;
            this.richTextBox_loibaihat.Size = new System.Drawing.Size(304, 592);
            this.richTextBox_loibaihat.TabIndex = 6;
            this.richTextBox_loibaihat.Text = "Loi bai hat";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 25);
            this.label4.TabIndex = 5;
            this.label4.Text = "Lyric:";
            // 
            // PlayMusic
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1224, 681);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "PlayMusic";
            this.Text = "PlayMusic";
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.axWindowsMediaPlayer)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private AxWMPLib.AxWindowsMediaPlayer axWindowsMediaPlayer;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label_tencasi;
        private System.Windows.Forms.Label label_tennhac;
        private System.Windows.Forms.RichTextBox richTextBox_loibaihat;
        private System.Windows.Forms.Label label4;
    }
}