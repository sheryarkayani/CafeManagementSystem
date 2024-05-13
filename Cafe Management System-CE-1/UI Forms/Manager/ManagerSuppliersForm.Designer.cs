﻿namespace Cafe_Management_System_CE_1.UI_Forms.Manager
{
    partial class ManagerSuppliersForm
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.logoutButton = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.supplierButton = new System.Windows.Forms.Button();
            this.employeeButton = new System.Windows.Forms.Button();
            this.customersButton = new System.Windows.Forms.Button();
            this.feedbackButton = new System.Windows.Forms.Button();
            this.promotionsButton = new System.Windows.Forms.Button();
            this.orderSummary = new System.Windows.Forms.Button();
            this.productsButton = new System.Windows.Forms.Button();
            this.refreshButton = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.addSuppliersButton = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.logoutButton);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Controls.Add(this.supplierButton);
            this.panel1.Controls.Add(this.employeeButton);
            this.panel1.Controls.Add(this.customersButton);
            this.panel1.Controls.Add(this.feedbackButton);
            this.panel1.Controls.Add(this.promotionsButton);
            this.panel1.Controls.Add(this.orderSummary);
            this.panel1.Controls.Add(this.productsButton);
            this.panel1.Location = new System.Drawing.Point(-3, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(304, 943);
            this.panel1.TabIndex = 0;
            // 
            // logoutButton
            // 
            this.logoutButton.BackColor = System.Drawing.Color.DarkRed;
            this.logoutButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.logoutButton.ForeColor = System.Drawing.Color.Beige;
            this.logoutButton.Location = new System.Drawing.Point(0, 638);
            this.logoutButton.Name = "logoutButton";
            this.logoutButton.Size = new System.Drawing.Size(308, 50);
            this.logoutButton.TabIndex = 9;
            this.logoutButton.Text = "Log Out";
            this.logoutButton.UseVisualStyleBackColor = false;
            this.logoutButton.Click += new System.EventHandler(this.logoutButton_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Cafe_Management_System_CE_1.Properties.Resources.cafeLogo;
            this.pictureBox1.Location = new System.Drawing.Point(42, 3);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(253, 216);
            this.pictureBox1.TabIndex = 8;
            this.pictureBox1.TabStop = false;
            // 
            // supplierButton
            // 
            this.supplierButton.BackColor = System.Drawing.Color.DarkSalmon;
            this.supplierButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.supplierButton.ForeColor = System.Drawing.Color.Beige;
            this.supplierButton.Location = new System.Drawing.Point(0, 577);
            this.supplierButton.Name = "supplierButton";
            this.supplierButton.Size = new System.Drawing.Size(308, 50);
            this.supplierButton.TabIndex = 7;
            this.supplierButton.Text = "Suppliers";
            this.supplierButton.UseVisualStyleBackColor = false;
            // 
            // employeeButton
            // 
            this.employeeButton.BackColor = System.Drawing.Color.DarkRed;
            this.employeeButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.employeeButton.ForeColor = System.Drawing.Color.Beige;
            this.employeeButton.Location = new System.Drawing.Point(0, 516);
            this.employeeButton.Name = "employeeButton";
            this.employeeButton.Size = new System.Drawing.Size(308, 50);
            this.employeeButton.TabIndex = 6;
            this.employeeButton.Text = "Employees";
            this.employeeButton.UseVisualStyleBackColor = false;
            this.employeeButton.Click += new System.EventHandler(this.employeeButton_Click);
            // 
            // customersButton
            // 
            this.customersButton.BackColor = System.Drawing.Color.DarkRed;
            this.customersButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.customersButton.ForeColor = System.Drawing.Color.Beige;
            this.customersButton.Location = new System.Drawing.Point(0, 457);
            this.customersButton.Name = "customersButton";
            this.customersButton.Size = new System.Drawing.Size(308, 50);
            this.customersButton.TabIndex = 5;
            this.customersButton.Text = "Customers";
            this.customersButton.UseVisualStyleBackColor = false;
            this.customersButton.Click += new System.EventHandler(this.customersButton_Click);
            // 
            // feedbackButton
            // 
            this.feedbackButton.BackColor = System.Drawing.Color.DarkRed;
            this.feedbackButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.feedbackButton.ForeColor = System.Drawing.Color.Beige;
            this.feedbackButton.Location = new System.Drawing.Point(0, 398);
            this.feedbackButton.Name = "feedbackButton";
            this.feedbackButton.Size = new System.Drawing.Size(308, 50);
            this.feedbackButton.TabIndex = 3;
            this.feedbackButton.Text = "Feedbacks";
            this.feedbackButton.UseVisualStyleBackColor = false;
            this.feedbackButton.Click += new System.EventHandler(this.feedbackButton_Click);
            // 
            // promotionsButton
            // 
            this.promotionsButton.BackColor = System.Drawing.Color.DarkRed;
            this.promotionsButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.promotionsButton.ForeColor = System.Drawing.Color.Beige;
            this.promotionsButton.Location = new System.Drawing.Point(-12, 339);
            this.promotionsButton.Name = "promotionsButton";
            this.promotionsButton.Size = new System.Drawing.Size(320, 50);
            this.promotionsButton.TabIndex = 2;
            this.promotionsButton.Text = "Promotions";
            this.promotionsButton.UseVisualStyleBackColor = false;
            this.promotionsButton.Click += new System.EventHandler(this.promotionsButton_Click);
            // 
            // orderSummary
            // 
            this.orderSummary.BackColor = System.Drawing.Color.DarkRed;
            this.orderSummary.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.orderSummary.ForeColor = System.Drawing.Color.Beige;
            this.orderSummary.Location = new System.Drawing.Point(0, 280);
            this.orderSummary.Name = "orderSummary";
            this.orderSummary.Size = new System.Drawing.Size(308, 50);
            this.orderSummary.TabIndex = 1;
            this.orderSummary.Text = "Pending Orders";
            this.orderSummary.UseVisualStyleBackColor = false;
            this.orderSummary.Click += new System.EventHandler(this.orderSummary_Click);
            // 
            // productsButton
            // 
            this.productsButton.BackColor = System.Drawing.Color.DarkRed;
            this.productsButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.productsButton.ForeColor = System.Drawing.Color.Beige;
            this.productsButton.Location = new System.Drawing.Point(0, 223);
            this.productsButton.Name = "productsButton";
            this.productsButton.Size = new System.Drawing.Size(308, 50);
            this.productsButton.TabIndex = 0;
            this.productsButton.Text = "Products";
            this.productsButton.UseVisualStyleBackColor = false;
            this.productsButton.Click += new System.EventHandler(this.productsButton_Click);
            // 
            // refreshButton
            // 
            this.refreshButton.BackColor = System.Drawing.Color.DarkRed;
            this.refreshButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.refreshButton.ForeColor = System.Drawing.Color.Beige;
            this.refreshButton.Location = new System.Drawing.Point(871, 63);
            this.refreshButton.Name = "refreshButton";
            this.refreshButton.Size = new System.Drawing.Size(136, 54);
            this.refreshButton.TabIndex = 21;
            this.refreshButton.Text = "Refresh";
            this.refreshButton.UseVisualStyleBackColor = false;
            this.refreshButton.Click += new System.EventHandler(this.refreshButton_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(355, 123);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(652, 342);
            this.dataGridView1.TabIndex = 20;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.DarkRed;
            this.label1.Location = new System.Drawing.Point(550, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(255, 46);
            this.label1.TabIndex = 19;
            this.label1.Text = "All Suppliers";
            // 
            // addSuppliersButton
            // 
            this.addSuppliersButton.BackColor = System.Drawing.Color.DarkRed;
            this.addSuppliersButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.addSuppliersButton.ForeColor = System.Drawing.Color.Beige;
            this.addSuppliersButton.Location = new System.Drawing.Point(355, 63);
            this.addSuppliersButton.Name = "addSuppliersButton";
            this.addSuppliersButton.Size = new System.Drawing.Size(136, 54);
            this.addSuppliersButton.TabIndex = 24;
            this.addSuppliersButton.Text = "+ Add";
            this.addSuppliersButton.UseVisualStyleBackColor = false;
            this.addSuppliersButton.Click += new System.EventHandler(this.addSuppliersButton_Click);
            // 
            // ManagerSuppliersForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Beige;
            this.ClientSize = new System.Drawing.Size(1078, 944);
            this.Controls.Add(this.addSuppliersButton);
            this.Controls.Add(this.refreshButton);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panel1);
            this.Name = "ManagerSuppliersForm";
            this.Text = "ManagerSuppliersForm";
            this.Load += new System.EventHandler(this.ManagerSuppliersForm_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button feedbackButton;
        private System.Windows.Forms.Button promotionsButton;
        private System.Windows.Forms.Button orderSummary;
        private System.Windows.Forms.Button productsButton;
        private System.Windows.Forms.Button employeeButton;
        private System.Windows.Forms.Button customersButton;
        private System.Windows.Forms.Button supplierButton;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button logoutButton;
        private System.Windows.Forms.Button refreshButton;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button addSuppliersButton;
    }
}