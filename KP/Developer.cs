//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KP
{
    using System;
    using System.Collections.Generic;
    
    public partial class Developer
    {
        public int Developer_part_ID { get; set; }
        public int PS_ID { get; set; }
        public int Record_ID { get; set; }
        public int Employee_ID { get; set; }
        public int Prog_Lang_ID { get; set; }
        public int Office_ID { get; set; }
        public int Sub_System_ID { get; set; }
        public int Department_ID { get; set; }
        public int Profession_ID { get; set; }
        public Nullable<System.DateTime> Date_start { get; set; }
    
        public virtual Records_history Records_history { get; set; }
        public virtual Employee Employee { get; set; }
    }
}