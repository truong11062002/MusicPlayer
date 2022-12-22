
namespace MusicPlayer.CustomControl
{
    partial class choosePlayList
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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.iconButton_add = new FontAwesome.Sharp.IconButton();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label_name_playlist
            // 
            this.label_name_playlist.AutoSize = true;
            this.label_name_playlist.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_name_playlist.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.label_name_playlist.Location = new System.Drawing.Point(201, 55);
            this.label_name_playlist.Name = "label_name_playlist";
            this.label_name_playlist.Size = new System.Drawing.Size(166, 29);
            this.label_name_playlist.TabIndex = 5;
            this.label_name_playlist.Text = "playlist name";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(16, 11);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(168, 128);
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // iconButton_add
            // 
            this.iconButton_add.BackColor = System.Drawing.Color.ForestGreen;
            this.iconButton_add.IconChar = FontAwesome.Sharp.IconChar.Plus;
            this.iconButton_add.IconColor = System.Drawing.Color.Black;
            this.iconButton_add.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconButton_add.Location = new System.Drawing.Point(598, 46);
            this.iconButton_add.Name = "iconButton_add";
            this.iconButton_add.Size = new System.Drawing.Size(56, 55);
            this.iconButton_add.TabIndex = 3;
            this.iconButton_add.UseVisualStyleBackColor = false;
            this.iconButton_add.Click += new System.EventHandler(this.iconButton1_Click);
            // 
            // choosePlayList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.label_name_playlist);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.iconButton_add);
            this.Name = "choosePlayList";
            this.Size = new System.Drawing.Size(689, 148);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label_name_playlist;
        private System.Windows.Forms.PictureBox pictureBox1;
        private FontAwesome.Sharp.IconButton iconButton_add;
    }
}
