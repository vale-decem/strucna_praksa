using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using RangePartitioning.Models;

namespace RangePartitioning
{
    public class RangeContext : DbContext
    {
        public DbSet<Trkaci> trkaci { get; set; }
        public DbSet<Sponzor> sponzor { get; set; }
        public DbSet<Etape> etape { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
           => optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=trkaci_range;" +
               "User Id=postgres;Password=root");
    }
}
