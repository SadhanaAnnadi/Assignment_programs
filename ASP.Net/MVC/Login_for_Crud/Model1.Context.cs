﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Authentication_MVC.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EmployeeDBEntities : DbContext
    {
        public EmployeeDBEntities()
            : base("name=EmployeeDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Employee2> Employee2 { get; set; }
        public virtual DbSet<User> User { get; set; }

        public System.Data.Entity.DbSet<Authentication_MVC.Models.Membership> Memberships { get; set; }
    }
}
