using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ListPartitioning.Models
{
    public class Proizvod
    {
        [Key]
        public int id_proizvod { get; set; }
        public string naziv { get; set; }
        public double cena { get; set; }
        public int kolicina { get; set; }

        [ForeignKey("fk_prodavnica")]
        public int fk_prodavnica { get; set; }

        [ForeignKey("fk_mesto")]
        public string fk_mesto { get; set; }
    }
}
