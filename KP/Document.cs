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
    
    public partial class Document
    {
        public int Document_ID { get; set; }
        public int Document_type_ID { get; set; }
        public int PS_ID { get; set; }
        public int Prg_Lang_ID { get; set; }
        public int Sub_System_ID { get; set; }
        public string Document_Number { get; set; }
        public Nullable<System.DateTime> Document_Date { get; set; }
    
        public virtual Document_types Document_types { get; set; }
        public virtual Prg_Systems Prg_Systems { get; set; }
    }
}
