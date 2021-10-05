using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace HashPartitioning.Models
{
    public class Proizvod
    {
        [Key]
        public int id_proizvod { get; set; }

        [Required]
        [StringLength(50)]
        public string naziv { get; set; }

        [Required]
        public double cena { get; set; }

        [Required]
        public int kolicina { get; set; }

        [Required]
        [ForeignKey("fk_prodavnica")]
        public int fk_prodavnica { get; set; }
    }
}
