using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace RangePartitioning.Models
{
    public class Sponzor
    {
        [Key]
        public int id { get; set; }
        public string naziv { get; set; }
        public string drzava { get; set; }
        public string slogan { get; set; }
    }
}
