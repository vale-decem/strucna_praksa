using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace HashPartitioning.Models
{
    public class Korisnik
    {
		[Key]
		public int id_korisnik { get; set; }

		[Required]
		[StringLength(50)]
		public string ime { get; set; }

		[Required]
		[StringLength(50)]
		public string prezime { get; set; }

		[Required]
		[StringLength(50)]
		public string username { get; set; }

		[Required]
		[StringLength(50)]
		public string password { get; set; }

		[Required]
		public int bodovi { get; set; }

		[Required]
		[ForeignKey("fk_prodavnica")]
		public int fk_prodavnica { get; set; }

	}
}
