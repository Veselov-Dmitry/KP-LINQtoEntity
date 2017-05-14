using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KP.Models
{
    class Presentation
    {
        public Presentation()
        {
            EmpFIO = "@null";
            TabNo = "@null";
            Telephone = "@null";
            Computer = "@null";
            Profession = "@null";
            Department = "@null";
            Office = "@null";
            Net_Name = "@null";
            Inventory_number = "@null";
            Housing = "@null";
            Floor = "@null";
        }
        public string EmpFIO { get; set; }
        public string TabNo { get; set; }
        public string Telephone { get; set; }
        public string Computer { get; set; }
        public string Profession { get; set; }
        public string Department { get; set; }
        public string Office { get; set; }
        public string Net_Name { get; set; }
        public string Inventory_number { get; set; }
        public string Housing { get; set; }
        public string Floor { get; set; }




        public List<string> Properties
        {
            get
            {
                List<string> op = new List<string> {
                    EmpFIO,
                    TabNo,
                    Telephone,
                    Computer,
                    Profession,
                    Department,
                    Office,
                    Net_Name,
                    Inventory_number,
                    Housing, Floor
                };
                return op;
            }
        }
        public List<string> Names
        {
            get
            {
                List<string> op = new List<string>{
                    nameof(EmpFIO),
                    nameof(TabNo),
                    nameof(Telephone),
                    nameof(Computer),
                    nameof(Profession),
                    nameof(Department),
                    nameof(Office),
                    nameof(Net_Name),
                    nameof(Inventory_number),
                    nameof(Housing),
                    nameof(Floor)
                };
                return op;
            }
        }

         








    }
}
