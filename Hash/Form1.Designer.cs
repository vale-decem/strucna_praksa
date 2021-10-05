
namespace HashPartitioning
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnCreateProdavnica = new System.Windows.Forms.Button();
            this.groupBoxProdavnica = new System.Windows.Forms.GroupBox();
            this.btnDeleteProdavnica = new System.Windows.Forms.Button();
            this.btnUpdateProdavnica = new System.Windows.Forms.Button();
            this.btnReadProdavnica = new System.Windows.Forms.Button();
            this.groupBoxProdavnica.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCreateProdavnica
            // 
            this.btnCreateProdavnica.Location = new System.Drawing.Point(15, 33);
            this.btnCreateProdavnica.Name = "btnCreateProdavnica";
            this.btnCreateProdavnica.Size = new System.Drawing.Size(126, 23);
            this.btnCreateProdavnica.TabIndex = 0;
            this.btnCreateProdavnica.Text = "Create Prodavnica";
            this.btnCreateProdavnica.UseVisualStyleBackColor = true;
            this.btnCreateProdavnica.Click += new System.EventHandler(this.btnCreateProdavnica_Click);
            // 
            // groupBoxProdavnica
            // 
            this.groupBoxProdavnica.Controls.Add(this.btnDeleteProdavnica);
            this.groupBoxProdavnica.Controls.Add(this.btnUpdateProdavnica);
            this.groupBoxProdavnica.Controls.Add(this.btnReadProdavnica);
            this.groupBoxProdavnica.Controls.Add(this.btnCreateProdavnica);
            this.groupBoxProdavnica.Location = new System.Drawing.Point(33, 25);
            this.groupBoxProdavnica.Name = "groupBoxProdavnica";
            this.groupBoxProdavnica.Size = new System.Drawing.Size(157, 199);
            this.groupBoxProdavnica.TabIndex = 1;
            this.groupBoxProdavnica.TabStop = false;
            this.groupBoxProdavnica.Text = "Prodavnica";
            // 
            // btnDeleteProdavnica
            // 
            this.btnDeleteProdavnica.Location = new System.Drawing.Point(15, 152);
            this.btnDeleteProdavnica.Name = "btnDeleteProdavnica";
            this.btnDeleteProdavnica.Size = new System.Drawing.Size(126, 23);
            this.btnDeleteProdavnica.TabIndex = 2;
            this.btnDeleteProdavnica.Text = "Delete Prodavnica";
            this.btnDeleteProdavnica.UseVisualStyleBackColor = true;
            this.btnDeleteProdavnica.Click += new System.EventHandler(this.btnDeleteProdavnica_Click);
            // 
            // btnUpdateProdavnica
            // 
            this.btnUpdateProdavnica.Location = new System.Drawing.Point(15, 113);
            this.btnUpdateProdavnica.Name = "btnUpdateProdavnica";
            this.btnUpdateProdavnica.Size = new System.Drawing.Size(126, 23);
            this.btnUpdateProdavnica.TabIndex = 2;
            this.btnUpdateProdavnica.Text = "Update Prodavnica";
            this.btnUpdateProdavnica.UseVisualStyleBackColor = true;
            this.btnUpdateProdavnica.Click += new System.EventHandler(this.btnUpdateProdavnica_Click);
            // 
            // btnReadProdavnica
            // 
            this.btnReadProdavnica.Location = new System.Drawing.Point(15, 74);
            this.btnReadProdavnica.Name = "btnReadProdavnica";
            this.btnReadProdavnica.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.btnReadProdavnica.Size = new System.Drawing.Size(126, 23);
            this.btnReadProdavnica.TabIndex = 2;
            this.btnReadProdavnica.Text = "Read Prodavnica";
            this.btnReadProdavnica.UseVisualStyleBackColor = true;
            this.btnReadProdavnica.Click += new System.EventHandler(this.btnReadProdavnica_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.groupBoxProdavnica);
            this.Name = "Form1";
            this.Text = "Form1";
            this.groupBoxProdavnica.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnCreateProdavnica;
        private System.Windows.Forms.GroupBox groupBoxProdavnica;
        private System.Windows.Forms.Button btnReadProdavnica;
        private System.Windows.Forms.Button btnUpdateProdavnica;
        private System.Windows.Forms.Button btnDeleteProdavnica;
    }
}

