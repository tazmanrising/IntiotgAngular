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
    
    public partial class User
    {
        public User()
        {
            this.Mains = new HashSet<Main>();
            this.UserLogs = new HashSet<UserLog>();
        }
    
        public int UserId { get; set; }
        public string AgentId { get; set; }
        public string Password { get; set; }
        public Nullable<int> VendorId { get; set; }
        public Nullable<int> OfficeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool IsActive { get; set; }
        public string Language { get; set; }
        public string EmailAddress { get; set; }
        public string Phone { get; set; }
        public Nullable<int> SupervisiorId { get; set; }
        public int UserTypeId { get; set; }
        public System.DateTime CreatedDateTime { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDateTime { get; set; }
        public string ModifiedBy { get; set; }
        public string Gender { get; set; }
        public string ShirtSize { get; set; }
        public string City { get; set; }
        public string StateCode { get; set; }
        public string SSN { get; set; }
        public Nullable<System.DateTime> BirthDate { get; set; }
        public string Country { get; set; }
    
        public virtual ICollection<Main> Mains { get; set; }
        public virtual UserType UserType { get; set; }
        public virtual Vendor Vendor { get; set; }
        public virtual ICollection<UserLog> UserLogs { get; set; }
        public virtual Office Office { get; set; }
    }
}