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
    using System.Collections.Generic;
    
    public partial class Property
    {
        public int Id { get; set; }
        public string area { get; set; }
        public string length { get; set; }
        public string width { get; set; }
        public string height { get; set; }
        public string location { get; set; }
        public string postCode { get; set; }
        public string num_bedroom { get; set; }
        public string num_bathroom { get; set; }
        public string num_carpark { get; set; }
        public string year_built { get; set; }
    
        public virtual Transaction Transaction { get; set; }
    }
}
