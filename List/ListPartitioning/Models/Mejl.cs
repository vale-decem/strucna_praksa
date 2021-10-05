using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ListPartitioning.Models
{
    public class Mejl
    {
        [Key]
        public int id_mejl { get; set; }
        public string adresa { get; set; }


        [ForeignKey("fk_korisnik")]
        public int fk_korisnik { get; set; }
    }
}
