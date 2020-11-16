using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Entity_ReAssignment1.Models
{
    public class Student1 : DbContext
    {
        public Student1() : base("StudentConnectionString")
        {

        }
        public DbSet<Student_details1>STable { get; set; }
    }
}