using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ListPartitioning.Models
{
    public class Korisnik
    {
        [Key]
        public int id_korisnik { get; set; }
        public string ime { get; set; }
        public string prezime { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public int bodovi { get; set; }


        [ForeignKey("fk_prodavnica")]
        public int fk_prodavnica { get; set; }

        [ForeignKey("fk_mesto")]
        public string fk_mesto { get; set; }
    }
}

