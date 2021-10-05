using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace HashPartitioning.Models
{
    public class Prodavnica
    {
        [Key]
        public int id_prodavnica { get; set; }

        [Required]
        [StringLength(10)]
        public string mesto { get; set; }

        [Required]
        [StringLength(50)]
        public string adresa { get; set; }

        [Required]
        public double velicina { get; set; }
}
}
