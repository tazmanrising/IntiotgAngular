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
    
    public partial class UtilityType
    {
        public UtilityType()
        {
            this.Programs = new HashSet<Program>();
        }
    
        public int UtilityTypeId { get; set; }
        public string UtilityTypeName { get; set; }
        public bool IsActive { get; set; }
        public int DisplayOrder { get; set; }
    
        public virtual ICollection<Program> Programs { get; set; }
    }
}
