using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ListPartitioning.Models
{
    public class Prodavnica
    {
        [Key]
        public int id_prodavnica { get; set; }
        public string mesto { get; set; }
        public string adresa { get; set; }
        public double velicina { get; set; }
    }
}
