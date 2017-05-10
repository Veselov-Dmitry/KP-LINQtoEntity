using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KP
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        #region Addition

        private void AboutShow(object sender, EventArgs e)
        {
            AboutBox1 ab = new AboutBox1();
            ab.ShowDialog();
        }
        private void Exit(object sender, EventArgs e)
        {
            this.Close();
        }
        private void mainDataGridView_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            var grid = sender as DataGridView;
            var rowIdx = (e.RowIndex + 1).ToString();

            var centerFormat = new StringFormat()
            {
                // right alignment might actually make more sense for numbers
                Alignment = StringAlignment.Center,
                LineAlignment = StringAlignment.Center
            };

            var headerBounds = new Rectangle(e.RowBounds.Left, e.RowBounds.Top, grid.RowHeadersWidth, e.RowBounds.Height);
            e.Graphics.DrawString(rowIdx, this.Font, SystemBrushes.ControlText, headerBounds, centerFormat);
        }

        #endregion

        /// <summary>
        /// main mrthd to start
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void WorkplacesView(object sender, EventArgs e)
        {
            loadMainGrid(GetWorkplacesView()); 
        }

        private void mainDataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dgv = new DataGridView();
            
            foreach(DataGridViewTextBoxColumn op in mainDataGridView.Columns)
                dgv.Columns.Add(op.Name,op.HeaderText);
            dgv.Rows.Add(mainDataGridView.SelectedRows[0]);
            
            //var a = new { Column =e.ColumnIndex.ToString(), Rov=e.RowIndex.ToString()};
            //var ar = new[] { grid };
            unitDataGreedView.DataSource = dgv;//ar.ToList();

        }

        private void EmployeesView(object sender, EventArgs e)
        {
            loadMainGrid(GetEmployeesView()); 
        }

        private void ComputerView(object sender, EventArgs e)
        {
            loadMainGrid(GetComputerView());
        }

        private void loadMainGrid(object v)
        {
            mainDataGridView.DataSource = v;
        }

    }
} 
