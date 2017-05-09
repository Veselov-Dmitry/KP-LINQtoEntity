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
        private List<object> GetWorkplacesView()
        {
            var context = new OASUEntities();
            var query3 = from wrk in context.Workplaces
                         from emp in context.Employees
                         from prof in context.Professions
                         from dep in context.Departments
                         from offs in context.Offices
                         from comp in context.Computers
                         where emp.Profession_ID == prof.Profession_ID
                         && wrk.Workplace_ID == comp.Computer_ID
                         && offs.Office_ID == emp.Office_ID
                         && dep.Department_ID == emp.Department_ID
                         && wrk.Employee_ID == emp.Employee_ID
                         && wrk.Profession_ID == 8
                         select new
                         {
                             EmpFIO = emp.Full_Name_Employee,
                             TabNo = emp.Personnel_Number,
                             Telephone = wrk.Telephone,
                             Computer = comp.Net_Name,
                             Profession = prof.Name_Profession,
                             Department = dep.Name_Department,
                             Office = offs.Name_Office
                         };
             List <object> workplaces = (query3 as IEnumerable<object>).ToList();
            return workplaces;
        }

        private void mainDataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dgv = new DataGridView();
            List<object> info = new List<object>();
            var a = new { Column =e.ColumnIndex.ToString(), Rov=e.RowIndex.ToString()};
            var ar = new[] { a };
            unitDataGreedView.DataSource = ar.ToList();

        }

        private void EmployeesView(object sender, EventArgs e)
        {
            loadMainGrid(GetEmployeesView()); 
        }

        private object GetEmployeesView()
        {
            var context = new OASUEntities();
            var query3 = from wrk in context.Workplaces
                         from emp in context.Employees
                         from prof in context.Professions
                         from dep in context.Departments
                         from offs in context.Offices
                         from comp in context.Computers
                         where emp.Profession_ID == prof.Profession_ID
                         && wrk.Workplace_ID == comp.Computer_ID
                         && offs.Office_ID == emp.Office_ID
                         && dep.Department_ID == emp.Department_ID
                         && wrk.Employee_ID == emp.Employee_ID
                         && wrk.Profession_ID == 8
                         select new
                         {
                             EmpFIO = emp.Full_Name_Employee,
                             TabNo = emp.Personnel_Number,
                             Telephone = wrk.Telephone,
                             Profession = prof.Name_Profession,
                             Department = dep.Name_Department,
                             Office = offs.Name_Office
                         };
            List<object> workplaces = (query3 as IEnumerable<object>).ToList();
            return workplaces;
        }

        private void ComputerView(object sender, EventArgs e)
        {
            loadMainGrid(GetComputerView());
        }

        private void loadMainGrid(object v)
        {
            mainDataGridView.DataSource = v;
        }

        private object GetComputerView()
        {
            var context = new OASUEntities();
            var query3 = from wrk in context.Workplaces
                         from emp in context.Employees
                         from comp in context.Computers
                         where wrk.Workplace_ID == comp.Computer_ID
                         && wrk.Employee_ID == emp.Employee_ID
                         && comp.Computer_ID == 95952
                         select new
                         {
                             EmpFIO = emp.Full_Name_Employee,
                             TabNo = emp.Personnel_Number,
                             Net_Name = comp.Net_Name
                         };
            var workplaces = (query3 as IEnumerable<object>).ToList();
            return workplaces;
        }
    }
} 
