using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KP
{
    public partial class Form1 : Form
    {
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
        private object GetComputerView()
        {
            var context = new OASUEntities();
            var query3 = from wrk in context.Workplaces
                         from emp in context.Employees
                         from comp in context.Computers
                         where wrk.Workplace_ID == comp.Computer_ID
                         && wrk.Employee_ID == emp.Employee_ID
                         select new
                         {
                             EmpFIO = emp.Full_Name_Employee,
                             TabNo = emp.Personnel_Number,
                             Net_Name = comp.Net_Name
                         };
            var workplaces = (query3 as IEnumerable<object>).ToList();
            return workplaces;
        }
        private object GetWorkplacesView()
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
            var workplaces = (query3 as IEnumerable<object>).ToList();
            return workplaces;
        }
    }
}
