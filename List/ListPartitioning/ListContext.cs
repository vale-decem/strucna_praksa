using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using ListPartitioning.Models;

namespace ListPartitioning
{

        public class ListContext : DbContext
        {
            public DbSet<Prodavnica> prodavnica { get; set; }
            public DbSet<Proizvod> proizvod { get; set; }
            public DbSet<Korisnik> korisnik { get; set; }
            public DbSet<Mejl> mejl { get; set; }
            public DbSet<Telefon> telefon { get; set; }


            protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
               => optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=prodavnica_list;" +
                   "User Id=postgres;Password=root");

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Prodavnica>()
                .HasKey(c => new { c.id_prodavnica, c.mesto });
        }
    }
}
