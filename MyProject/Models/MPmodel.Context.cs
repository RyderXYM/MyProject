//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MyProject.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MPmodelContainer : DbContext
    {
        public MPmodelContainer()
            : base("name=MPmodelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<Transaction> Transactions { get; set; }
        public virtual DbSet<Property> Properties { get; set; }
        public virtual DbSet<Registration> Registrations { get; set; }
    }
}
