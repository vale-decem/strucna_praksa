using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ListPartitioning.Models
{
    public class Telefon
    {
        [Key]
        public int id_telefon { get; set; }
        public string broj { get; set; }


        [ForeignKey("fk_korisnik")]
        public int fk_korisnik { get; set; }
    }
}
