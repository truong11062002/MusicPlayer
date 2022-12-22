
namespace MusicPlayer
{
    partial class FormHistory
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.flowLayoutPanel_history = new System.Windows.Forms.FlowLayoutPanel();
            this.flowLayoutPanel_history_freq = new System.Windows.Forms.FlowLayoutPanel();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.label1.Location = new System.Drawing.Point(19, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(585, 38);
            this.label1.TabIndex = 1;
            this.label1.Text = "DANH SÁCH LỊCH SỬ NGHE NHẠC";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.label2.Location = new System.Drawing.Point(773, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(421, 38);
            this.label2.TabIndex = 2;
            this.label2.Text = "BÀI HÁT THƯỜNG NGHE";
            // 
            // flowLayoutPanel_history
            // 
            this.flowLayoutPanel_history.AutoScroll = true;
            this.flowLayoutPanel_history.Location = new System.Drawing.Point(26, 62);
            this.flowLayoutPanel_history.Name = "flowLayoutPanel_history";
            this.flowLayoutPanel_history.Size = new System.Drawing.Size(744, 560);
            this.flowLayoutPanel_history.TabIndex = 3;
            // 
            // flowLayoutPanel_history_freq
            // 
            this.flowLayoutPanel_history_freq.AutoScroll = true;
            this.flowLayoutPanel_history_freq.Location = new System.Drawing.Point(794, 62);
            this.flowLayoutPanel_history_freq.Name = "flowLayoutPanel_history_freq";
            this.flowLayoutPanel_history_freq.Size = new System.Drawing.Size(390, 560);
            this.flowLayoutPanel_history_freq.TabIndex = 4;
            // 
            // FormHistory
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1206, 634);
            this.Controls.Add(this.flowLayoutPanel_history_freq);
            this.Controls.Add(this.flowLayoutPanel_history);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FormHistory";
            this.Text = "FormHistory";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel_history;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel_history_freq;
    }
}