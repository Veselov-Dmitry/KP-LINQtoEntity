namespace KP
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.выходToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.типToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.рабочиеМестаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.работникиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.компьютерыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.отделыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.бюроToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.профессииToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.справкаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.оПрограммеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mainGroupBox = new System.Windows.Forms.GroupBox();
            this.mainDataGridView = new System.Windows.Forms.DataGridView();
            this.unitGroupBox = new System.Windows.Forms.GroupBox();
            this.unitDataGreedView = new System.Windows.Forms.DataGridView();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.menuStrip1.SuspendLayout();
            this.mainGroupBox.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.mainDataGridView)).BeginInit();
            this.unitGroupBox.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.unitDataGreedView)).BeginInit();
            this.toolStrip1.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem1,
            this.типToolStripMenuItem,
            this.справкаToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1045, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem3,
            this.toolStripSeparator1,
            this.выходToolStripMenuItem});
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(48, 20);
            this.toolStripMenuItem1.Text = "Файл";
            // 
            // toolStripMenuItem3
            // 
            this.toolStripMenuItem3.Name = "toolStripMenuItem3";
            this.toolStripMenuItem3.Size = new System.Drawing.Size(108, 22);
            this.toolStripMenuItem3.Text = "123";
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(105, 6);
            // 
            // выходToolStripMenuItem
            // 
            this.выходToolStripMenuItem.Name = "выходToolStripMenuItem";
            this.выходToolStripMenuItem.Size = new System.Drawing.Size(108, 22);
            this.выходToolStripMenuItem.Text = "Выход";
            this.выходToolStripMenuItem.Click += new System.EventHandler(this.Exit);
            // 
            // типToolStripMenuItem
            // 
            this.типToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.рабочиеМестаToolStripMenuItem,
            this.работникиToolStripMenuItem,
            this.компьютерыToolStripMenuItem,
            this.отделыToolStripMenuItem,
            this.бюроToolStripMenuItem,
            this.профессииToolStripMenuItem});
            this.типToolStripMenuItem.Name = "типToolStripMenuItem";
            this.типToolStripMenuItem.Size = new System.Drawing.Size(39, 20);
            this.типToolStripMenuItem.Text = "Вид";
            // 
            // рабочиеМестаToolStripMenuItem
            // 
            this.рабочиеМестаToolStripMenuItem.Name = "рабочиеМестаToolStripMenuItem";
            this.рабочиеМестаToolStripMenuItem.Size = new System.Drawing.Size(156, 22);
            this.рабочиеМестаToolStripMenuItem.Text = "Рабочие места";
            this.рабочиеМестаToolStripMenuItem.Click += new System.EventHandler(this.WorkplacesView);
            // 
            // работникиToolStripMenuItem
            // 
            this.работникиToolStripMenuItem.Name = "работникиToolStripMenuItem";
            this.работникиToolStripMenuItem.Size = new System.Drawing.Size(156, 22);
            this.работникиToolStripMenuItem.Text = "Работники";
            this.работникиToolStripMenuItem.Click += new System.EventHandler(this.EmployeesView);
            // 
            // компьютерыToolStripMenuItem
            // 
            this.компьютерыToolStripMenuItem.Name = "компьютерыToolStripMenuItem";
            this.компьютерыToolStripMenuItem.Size = new System.Drawing.Size(156, 22);
            this.компьютерыToolStripMenuItem.Text = "Компьютеры";
            this.компьютерыToolStripMenuItem.Click += new System.EventHandler(this.ComputerView);
            // 
            // отделыToolStripMenuItem
            // 
            this.отделыToolStripMenuItem.Name = "отделыToolStripMenuItem";
            this.отделыToolStripMenuItem.Size = new System.Drawing.Size(156, 22);
            this.отделыToolStripMenuItem.Text = "Отделы";
            this.отделыToolStripMenuItem.Click += new System.EventHandler(this.DepartmentView);
            // 
            // бюроToolStripMenuItem
            // 
            this.бюроToolStripMenuItem.Name = "бюроToolStripMenuItem";
            this.бюроToolStripMenuItem.Size = new System.Drawing.Size(156, 22);
            this.бюроToolStripMenuItem.Text = "Бюро";
            this.бюроToolStripMenuItem.Click += new System.EventHandler(this.OfficeView);
            // 
            // профессииToolStripMenuItem
            // 
            this.профессииToolStripMenuItem.Name = "профессииToolStripMenuItem";
            this.профессииToolStripMenuItem.Size = new System.Drawing.Size(156, 22);
            this.профессииToolStripMenuItem.Text = "Профессии";
            this.профессииToolStripMenuItem.Click += new System.EventHandler(this.ProfessionView);
            // 
            // справкаToolStripMenuItem
            // 
            this.справкаToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.оПрограммеToolStripMenuItem});
            this.справкаToolStripMenuItem.Name = "справкаToolStripMenuItem";
            this.справкаToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.справкаToolStripMenuItem.Text = "Справка";
            // 
            // оПрограммеToolStripMenuItem
            // 
            this.оПрограммеToolStripMenuItem.Name = "оПрограммеToolStripMenuItem";
            this.оПрограммеToolStripMenuItem.Size = new System.Drawing.Size(149, 22);
            this.оПрограммеToolStripMenuItem.Text = "О программе";
            this.оПрограммеToolStripMenuItem.Click += new System.EventHandler(this.AboutShow);
            // 
            // mainGroupBox
            // 
            this.mainGroupBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.mainGroupBox.Controls.Add(this.mainDataGridView);
            this.mainGroupBox.Location = new System.Drawing.Point(12, 52);
            this.mainGroupBox.Name = "mainGroupBox";
            this.mainGroupBox.Size = new System.Drawing.Size(788, 439);
            this.mainGroupBox.TabIndex = 1;
            this.mainGroupBox.TabStop = false;
            this.mainGroupBox.Text = "Рабочие места";
            // 
            // mainDataGridView
            // 
            this.mainDataGridView.AllowUserToResizeRows = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.LightYellow;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.mainDataGridView.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.mainDataGridView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.mainDataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.mainDataGridView.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.ActiveCaption;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.MidnightBlue;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.ControlLight;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.mainDataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.mainDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.LightYellow;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.mainDataGridView.DefaultCellStyle = dataGridViewCellStyle3;
            this.mainDataGridView.Location = new System.Drawing.Point(6, 19);
            this.mainDataGridView.MultiSelect = false;
            this.mainDataGridView.Name = "mainDataGridView";
            this.mainDataGridView.ReadOnly = true;
            this.mainDataGridView.RowHeadersWidth = 20;
            this.mainDataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.mainDataGridView.Size = new System.Drawing.Size(776, 414);
            this.mainDataGridView.TabIndex = 0;
            this.mainDataGridView.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.MainDataGridView_RowPostPaint);
            this.mainDataGridView.RowPostPaint += new System.Windows.Forms.DataGridViewRowPostPaintEventHandler(this.MainDataGridView_RowPostPaint);
            // 
            // unitGroupBox
            // 
            this.unitGroupBox.Controls.Add(this.unitDataGreedView);
            this.unitGroupBox.Location = new System.Drawing.Point(806, 52);
            this.unitGroupBox.Name = "unitGroupBox";
            this.unitGroupBox.Size = new System.Drawing.Size(227, 433);
            this.unitGroupBox.TabIndex = 4;
            this.unitGroupBox.TabStop = false;
            this.unitGroupBox.Text = "Элемент";
            // 
            // unitDataGreedView
            // 
            this.unitDataGreedView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.unitDataGreedView.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.unitDataGreedView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.unitDataGreedView.GridColor = System.Drawing.SystemColors.AppWorkspace;
            this.unitDataGreedView.Location = new System.Drawing.Point(6, 19);
            this.unitDataGreedView.Name = "unitDataGreedView";
            this.unitDataGreedView.ReadOnly = true;
            this.unitDataGreedView.RowHeadersVisible = false;
            this.unitDataGreedView.Size = new System.Drawing.Size(215, 366);
            this.unitDataGreedView.TabIndex = 4;
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButton1});
            this.toolStrip1.Location = new System.Drawing.Point(0, 24);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(1045, 25);
            this.toolStrip1.TabIndex = 5;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton1.Image")));
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(23, 22);
            this.toolStripButton1.Text = "toolStripButton1";
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1});
            this.statusStrip1.Location = new System.Drawing.Point(0, 494);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(1045, 22);
            this.statusStrip1.TabIndex = 6;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(116, 17);
            this.toolStripStatusLabel1.Text = "Состояние загрузки";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1045, 516);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.unitGroupBox);
            this.Controls.Add(this.mainGroupBox);
            this.Controls.Add(this.menuStrip1);
            this.KeyPreview = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.Text = "Form1";
            this.Shown += new System.EventHandler(this.WorkplacesView);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.Exit);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.mainGroupBox.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.mainDataGridView)).EndInit();
            this.unitGroupBox.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.unitDataGreedView)).EndInit();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem3;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem выходToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem типToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem справкаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem оПрограммеToolStripMenuItem;
        private System.Windows.Forms.GroupBox mainGroupBox;
        private System.Windows.Forms.DataGridView mainDataGridView;
        private System.Windows.Forms.GroupBox unitGroupBox;
        private System.Windows.Forms.DataGridView unitDataGreedView;
        private System.Windows.Forms.ToolStripMenuItem рабочиеМестаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem работникиToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem компьютерыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem отделыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem бюроToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem профессииToolStripMenuItem;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton toolStripButton1;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
    }
}

