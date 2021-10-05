using HashPartitioning.Models;
using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.EntityFrameworkCore;

namespace HashPartitioning
{
    public partial class Form1 : Form
    {
        HashContext context = new HashContext();

        public Form1()
        {
            InitializeComponent();
        }

        private void btnCreateProdavnica_Click(object sender, EventArgs e)
        {
            Prodavnica p = new Prodavnica();

            p.id_prodavnica = 151;
            p.mesto = "Nis";
            p.adresa = "Zmaja od Nocaja 10";
            p.velicina = 60;

            context.prodavnica.Add(p);
            context.SaveChanges();
        }

        private void btnReadProdavnica_Click(object sender, EventArgs e)
        {
            Prodavnica p = context.prodavnica.Find(42);

            MessageBox.Show("Podaci za prodavnicu:\nID - " + p.id_prodavnica + "\nMesto - " +
                  p.mesto + "\nAdresa - " + p.adresa);

            context.SaveChanges();
        }

        private void btnUpdateProdavnica_Click(object sender, EventArgs e)
        {
            Prodavnica p = context.prodavnica.Find(151);
            //p.adresa = "Zmaja od Nocaja 10";
            p.adresa = "Dragise Cvetkovica 26";

            context.prodavnica.Update(p);

            context.SaveChanges();
        }

        private void btnDeleteProdavnica_Click(object sender, EventArgs e)
        {
            Prodavnica prod = context.prodavnica.Find(151);

            var sviProizvodi = context.proizvod.Where(
                (proizvod => proizvod.fk_prodavnica == prod.id_prodavnica)).ToList();
            foreach (Proizvod p in sviProizvodi)
                context.Remove(p);

            var sviKorisnici = context.korisnik.Where(
                (korisnik => korisnik.fk_prodavnica == prod.id_prodavnica)).ToList();
            foreach (Korisnik k in sviKorisnici)
                context.Remove(k);

            context.Remove(prod);

            context.SaveChanges();
        }
    }
}
