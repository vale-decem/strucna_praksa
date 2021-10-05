using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace HashPartitioning.Models
{
    public class Telefon
    {
        [Key]
        public int id_telefon { get; set; }

        [Required]
        [StringLength(50)]
        public string broj { get; set; }

        [Required]
        [ForeignKey("fk_korisnik")]
        public int fk_korisnik { get; set; }
    }
}
