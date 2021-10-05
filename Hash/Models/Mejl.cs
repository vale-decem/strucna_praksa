using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace HashPartitioning.Models
{
    public class Mejl
    {
        [Key]
        public int id_korisnik { get; set; }

        [Required]
        [StringLength(50)]
        public string adresa { get; set; }

        [Required]
        [ForeignKey("fk_korisnik")]
        public int fk_korisnik { get; set; }
    }
}
