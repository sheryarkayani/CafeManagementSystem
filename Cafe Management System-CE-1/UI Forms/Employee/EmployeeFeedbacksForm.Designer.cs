﻿namespace Cafe_Management_System_CE_1.UI_Forms.Employee
{
    partial class EmployeeFeedbacksForm
    {
        private System.ComponentModel.IContainer components = null;

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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(EmployeeFeedbacksForm));
            this.panel1 = new System.Windows.Forms.Panel();
            this.logoutButton = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.feedbackButton = new System.Windows.Forms.Button();
            this.customerButton = new System.Windows.Forms.Button();
            this.promotionsButton = new System.Windows.Forms.Button();
            this.ordersButton = new System.Windows.Forms.Button();
            this.checkInOutButton = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.refreshButton = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.logoutButton);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Controls.Add(this.feedbackButton);
            this.panel1.Controls.Add(this.customerButton);
            this.panel1.Controls.Add(this.promotionsButton);
            this.panel1.Controls.Add(this.ordersButton);
            this.panel1.Controls.Add(this.checkInOutButton);
            this.panel1.Location = new System.Drawing.Point(3, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(302, 729);
            this.panel1.TabIndex = 0;
            // 
            // logoutButton
            // 
            this.logoutButton.BackColor = System.Drawing.Color.DarkRed;
            this.logoutButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.logoutButton.ForeColor = System.Drawing.Color.Beige;
            this.logoutButton.Location = new System.Drawing.Point(0, 538);
            this.logoutButton.Name = "logoutButton";
            this.logoutButton.Size = new System.Drawing.Size(308, 50);
            this.logoutButton.TabIndex = 10;
            this.logoutButton.Text = "Log Out";
            this.logoutButton.UseVisualStyleBackColor = false;
            this.logoutButton.Click += new System.EventHandler(this.logoutButton_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(42, 3);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(253, 216);
            this.pictureBox1.TabIndex = 9;
            this.pictureBox1.TabStop = false;
            // 
            // feedbackButton
            // 
            this.feedbackButton.BackColor = System.Drawing.Color.DarkSalmon;
            this.feedbackButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.feedbackButton.ForeColor = System.Drawing.Color.Beige;
            this.feedbackButton.Location = new System.Drawing.Point(0, 476);
            this.feedbackButton.Name = "feedbackButton";
            this.feedbackButton.Size = new System.Drawing.Size(308, 50);
            this.feedbackButton.TabIndex = 5;
            this.feedbackButton.Text = "Feedbacks";
            this.feedbackButton.UseVisualStyleBackColor = false;
            // 
            // customerButton
            // 
            this.customerButton.BackColor = System.Drawing.Color.DarkRed;
            this.customerButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.customerButton.ForeColor = System.Drawing.Color.Beige;
            this.customerButton.Location = new System.Drawing.Point(0, 413);
            this.customerButton.Name = "customerButton";
            this.customerButton.Size = new System.Drawing.Size(308, 50);
            this.customerButton.TabIndex = 3;
            this.customerButton.Text = "Customers";
            this.customerButton.UseVisualStyleBackColor = false;
            this.customerButton.Click += new System.EventHandler(this.customerButton_Click);
            // 
            // promotionsButton
            // 
            this.promotionsButton.BackColor = System.Drawing.Color.DarkRed;
            this.promotionsButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.promotionsButton.ForeColor = System.Drawing.Color.Beige;
            this.promotionsButton.Location = new System.Drawing.Point(0, 349);
            this.promotionsButton.Name = "promotionsButton";
            this.promotionsButton.Size = new System.Drawing.Size(308, 50);
            this.promotionsButton.TabIndex = 2;
            this.promotionsButton.Text = "Promotions";
            this.promotionsButton.UseVisualStyleBackColor = false;
            this.promotionsButton.Click += new System.EventHandler(this.promotionsButton_Click);
            // 
            // ordersButton
            // 
            this.ordersButton.BackColor = System.Drawing.Color.DarkRed;
            this.ordersButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.ordersButton.ForeColor = System.Drawing.Color.Beige;
            this.ordersButton.Location = new System.Drawing.Point(0, 286);
            this.ordersButton.Name = "ordersButton";
            this.ordersButton.Size = new System.Drawing.Size(308, 50);
            this.ordersButton.TabIndex = 1;
            this.ordersButton.Text = "Orders";
            this.ordersButton.UseVisualStyleBackColor = false;
            this.ordersButton.Click += new System.EventHandler(this.ordersButton_Click);
            // 
            // checkInOutButton
            // 
            this.checkInOutButton.BackColor = System.Drawing.Color.DarkRed;
            this.checkInOutButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.checkInOutButton.ForeColor = System.Drawing.Color.Beige;
            this.checkInOutButton.Location = new System.Drawing.Point(0, 223);
            this.checkInOutButton.Name = "checkInOutButton";
            this.checkInOutButton.Size = new System.Drawing.Size(308, 50);
            this.checkInOutButton.TabIndex = 0;
            this.checkInOutButton.Text = "CheckInOut";
            this.checkInOutButton.UseVisualStyleBackColor = false;
            this.checkInOutButton.Click += new System.EventHandler(this.checkInOutButton_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(352, 135);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(650, 342);
            this.dataGridView1.TabIndex = 19;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.DarkRed;
            this.label1.Location = new System.Drawing.Point(547, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(291, 46);
            this.label1.TabIndex = 18;
            this.label1.Text = "My Feedbacks";
            // 
            // refreshButton
            // 
            this.refreshButton.BackColor = System.Drawing.Color.DarkRed;
            this.refreshButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.refreshButton.ForeColor = System.Drawing.Color.Beige;
            this.refreshButton.Location = new System.Drawing.Point(866, 75);
            this.refreshButton.Name = "refreshButton";
            this.refreshButton.Size = new System.Drawing.Size(136, 54);
            this.refreshButton.TabIndex = 20;
            this.refreshButton.Text = "Refresh";
            this.refreshButton.UseVisualStyleBackColor = false;
            this.refreshButton.Click += new System.EventHandler(this.refreshButton_Click);
            // 
            // EmployeeFeedbacksForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Beige;
            this.ClientSize = new System.Drawing.Size(1078, 944);
            this.Controls.Add(this.refreshButton);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panel1);
            this.Name = "EmployeeFeedbacksForm";
            this.Text = "EmployeeFeedbacksForm";
            this.Load += new System.EventHandler(this.EmployeeFeedbacksForm_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button customerButton;
        private System.Windows.Forms.Button promotionsButton;
        private System.Windows.Forms.Button ordersButton;
        private System.Windows.Forms.Button checkInOutButton;
        private System.Windows.Forms.Button feedbackButton;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button logoutButton;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button refreshButton;
    }
}