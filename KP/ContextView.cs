using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using KP.Models;

namespace KP
{
    class ContextView
    {
        public List<Presentation> GetEmployeesView()
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
                         //&& wrk.Profession_ID == 8
                         select new Presentation
                         {
                             EmpFIO = emp.Full_Name_Employee,
                             TabNo = emp.Personnel_Number.ToString(),
                             Telephone = wrk.Telephone,
                             Profession = prof.Name_Profession,
                             Department = dep.Name_Department,
                             Office = offs.Name_Office
                         };
            List<Presentation> employees = (query3 as IEnumerable<Presentation>).ToList();
            return employees;
        }
        public List<Presentation> GetComputerView()
        {
            var context = new OASUEntities();
            var query3 = from comp in context.Computers
                         select new Presentation
                         {
                             Inventory_number = comp.Inventory_number.ToString(),
                             Net_Name = comp.Net_Name
                         };
            List<Presentation> computer = (query3 as IEnumerable<Presentation>).ToList();
            return computer;
        }
        public List<Presentation> GetWorkplacesView()
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
                  //       && wrk.Profession_ID == 8
                         select new Presentation
                         {
                             EmpFIO = emp.Full_Name_Employee,
                             TabNo = emp.Personnel_Number.ToString(),
                             Telephone = wrk.Telephone,
                             Floor = wrk.Floor.ToString(),
                             Housing = wrk.Housing.ToString(),
                             Computer = comp.Net_Name,
                             Profession = prof.Name_Profession,
                             Department = dep.Name_Department,
                             Office = offs.Name_Office
                         };
            List<Presentation> workplaces = (query3 as IEnumerable<Presentation>).ToList();
            return workplaces;
        }
        public List<Presentation> GetDepartmentView()
        {
            var context = new OASUEntities();
            var query3 = from dep in context.Departments
                         select new Presentation
                         {
                             Department = dep.Name_Department
                         };
            List<Presentation> department = (query3 as IEnumerable<Presentation>).ToList();
            return department;
        }
        public List<Presentation> GetOfficeView()
        {
            var context = new OASUEntities();
            var query3 = from off in context.Offices
                         select new Presentation
                         {
                             Office = off.Name_Office
                         };
            List<Presentation> offices = (query3 as IEnumerable<Presentation>).ToList();
            return offices;
        }

        internal int GetUserID(string v)
        {
            var context = new OASUEntities();
            var query3 = from emp in context.Employees
                         where emp.Full_Name_Employee == v
                         select  emp.Employee_ID;
            Int32.TryParse(query3.ToString(), out int res);
            if (res == 0) throw new Exception("Employee_ID равен нулю");
            return res;
        }

        public List<Presentation> GetProfessionView()
        {
            var context = new OASUEntities();
            var query3 = from prof in context.Professions
                         select new Presentation
                         {
                             Profession = prof.Name_Profession
                         };
            List<Presentation> professions = (query3 as IEnumerable<Presentation>).ToList();

            return professions;
        }
        public List<string> GetAllOffice(string v)
        {
            var context = new OASUEntities();
            var query3 = from off in context.Offices
                         from dep in context.Departments
                         where off.Department_ID == dep.Department_ID
                         && dep.Name_Department == v
                         select off.Name_Office;
            List<string> Offices = (query3 as IEnumerable<string>).ToList();

            return Offices;
        }

        internal List<string> GetAllComputer()
        {
            var context = new OASUEntities();
            var query3 = from com in context.Computers
                         select com.Net_Name;
            List<string> Offices = (query3 as IEnumerable<string>).ToList();
            return Offices;
        }

        public List<string> GetAllDepartment()
        {
            var context = new OASUEntities();
            var query3 = from dep in context.Departments
                         select dep.Name_Department;
            List<string> Departments = (query3 as IEnumerable<string>).ToList();

            return Departments;
        }
        public List<string> GetAllProfession()
        {
            var context = new OASUEntities();
            var query3 = from prof in context.Professions
                         select prof.Name_Profession;
            List<string> professions = (query3 as IEnumerable<string>).ToList();

            return professions;
        }
        public List<string> GetAllEmploee(string v,string o)
        {
            var context = new OASUEntities();
            var query3 = from emp in context.Employees
                         from off in context.Offices
                         from dep in context.Departments
                         where emp.Department_ID == dep.Department_ID
                         && emp.Office_ID == off.Office_ID
                         && dep.Name_Department == v
                         && off.Name_Office == o
                         select emp.Full_Name_Employee;
            List<string> Employees = (query3 as IEnumerable<string>).ToList();

            return Employees;
        }

    }
}
