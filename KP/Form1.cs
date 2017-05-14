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
using KP.Models;

namespace KP
{
    public partial class Form1 : Form
    {
        ContextView cv = new ContextView();
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
        private void Exit(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Escape) Exit(null, EventArgs.Empty);
        }
        private void MainDataGridView_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            var grid = sender as DataGridView;
            var rowIdx = (e.RowIndex + 1).ToString();

            var centerFormat = new StringFormat()
            {
                // right alignment might actually make more sense for numbers
                Alignment = StringAlignment.Center,
                LineAlignment = StringAlignment.Center
            };
        }
        #endregion

        /// <summary>
        /// main mrthd to start
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void WorkplacesView(object sender, EventArgs e)
        {
            LoadMainGrid(cv.GetWorkplacesView()); 
        }

        private void MainDataGridView_RowPostPaint(object sender, DataGridViewCellEventArgs e) {
            DataGridViewSelectedRowCollection dgv = mainDataGridView.SelectedRows;
            List<Presentation> tab = new List<Presentation> { mainDataGridView.SelectedRows[0].DataBoundItem as Presentation };
            Row row = new Row(tab as object);
            switch (row.ShowDialog())
            {
                case DialogResult.Yes:
                    {
                        break;
                    }
                default: { break; }
            }
        }

        private void EmployeesView(object sender, EventArgs e)
        {
            LoadMainGrid(cv.GetEmployeesView()); 
        }

        private void ComputerView(object sender, EventArgs e)
        {
            LoadMainGrid(cv.GetComputerView());
        }
        private void DepartmentView(object sender, EventArgs e)
        {
            LoadMainGrid(cv.GetDepartmentView());
        }

        private void OfficeView(object sender, EventArgs e)
        {
            LoadMainGrid(cv.GetOfficeView());
        }

        private void ProfessionView(object sender, EventArgs e)
        {
            LoadMainGrid(cv.GetProfessionView());
        }

        private void LoadMainGrid(List<Presentation> v)
        {
            mainDataGridView.DataSource = v;
            VisibleColumns(v);
        }

        private void VisibleColumns(List<Presentation> v)
        {
            foreach (DataGridViewColumn op in mainDataGridView.Columns)
                op.Visible = true;
            if (v[0].EmpFIO == "@null") mainDataGridView.Columns[0].Visible = false;
            if (v[0].TabNo == "@null") mainDataGridView.Columns[1].Visible = false;
            if (v[0].Telephone == "@null") mainDataGridView.Columns[2].Visible = false;
            if (v[0].Computer == "@null") mainDataGridView.Columns[3].Visible = false;
            if (v[0].Profession == "@null") mainDataGridView.Columns[4].Visible = false;
            if (v[0].Department == "@null") mainDataGridView.Columns[5].Visible = false;
            if (v[0].Office == "@null") mainDataGridView.Columns[6].Visible = false;
            if (v[0].Net_Name == "@null") mainDataGridView.Columns[7].Visible = false;
            if (v[0].Inventory_number == "@null") mainDataGridView.Columns[8].Visible = false;
            if (v[0].Housing == "@null") mainDataGridView.Columns[9].Visible = false;
            if (v[0].Floor == "@null") mainDataGridView.Columns[10].Visible = false;
        }
    }
} 
