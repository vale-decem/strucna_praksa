using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RangePartitioning.Models
{
    public class Trkaci
    {
        [Key]
        public int id_trkaca { get; set; }
        public string ime { get; set; }
        public string prezime { get; set; }
        public int godine { get; set; }
        public int visina { get; set; }
        public double tezina { get; set; }

        [ForeignKey("fk_sponzor")]
        public int fk_sponzor { get; set; }

    }
}
