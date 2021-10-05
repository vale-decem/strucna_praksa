using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RangePartitioning.Models
{
    public class Etape
    {
        [Key]
        public int id_etape { get; set; }
        public double duzina { get; set; }
        public double trajanje { get; set; }
        public string startno_mesto { get; set; }
        public string ciljno_mesto { get; set; }

        [ForeignKey("fk_trkac_pobednik")]
        public int fk_trkac_pobednik { get; set; }
    }
}
