using HashPartitioning.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace HashPartitioning
{
    public class HashContext : DbContext
    {
        public DbSet<Prodavnica> prodavnica { get; set; }
        public DbSet<Proizvod> proizvod { get; set; }
        public DbSet<Korisnik> korisnik { get; set; }
        public DbSet<Mejl> mejl { get; set; }
        public DbSet<Telefon> telefon { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
           => optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=prodavnica_hash;" +
               "User Id=postgres;Password=root");
    }
}
