//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Calibrus.SparkPortal.DataAccess.Infrastructure
{
    using System;
    using System.Collections.Generic;
    
    public partial class Utility
    {
        public Utility()
        {
            this.Programs = new HashSet<Program>();
        }
    
        public int UtilityId { get; set; }
        public string LdcCode { get; set; }
        public string Name { get; set; }
        public bool IsActive { get; set; }
        public int DisplayOrder { get; set; }
        public string UtilityScriptName { get; set; }
        public string BillMethod { get; set; }
        public string CommercialCustomerType { get; set; }
    
        public virtual ICollection<Program> Programs { get; set; }
    }
}
