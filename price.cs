//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LuisBot
{
    using System;
    using System.Collections.Generic;
    
    public partial class price
    {
        public int price_id { get; set; }
        public int metal_id_fk { get; set; }
        public System.DateTime date { get; set; }
        public decimal price1 { get; set; }
    
        public virtual metal metal { get; set; }
    }
}
