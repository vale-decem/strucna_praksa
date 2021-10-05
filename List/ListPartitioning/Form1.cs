using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ListPartitioning.Models;
using Microsoft.EntityFrameworkCore;
using Npgsql;

namespace ListPartitioning
{
    public partial class Form1 : Form
    {
        ListContext context = new ListContext();
        public Form1()
        {
            InitializeComponent();
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            Prodavnica pr = new Prodavnica();
            pr.id_prodavnica = 151;
            pr.mesto = "Leskovac";
            pr.adresa = "Bulevar oslobodjenja 57";
            pr.velicina = 910;

            context.prodavnica.Add(pr);
            context.SaveChanges();
        }

        private void btnRead_Click(object sender, EventArgs e)
        {
            
            Prodavnica pr = context.prodavnica.Find(2, "Subotica");
            MessageBox.Show(pr.mesto + " " + pr.adresa);

            context.SaveChanges();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            Prodavnica pr = context.prodavnica.Find(2, "Subotica");
            pr.velicina = 570;
            context.prodavnica.Update(pr);

            context.SaveChanges();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
                //Prodavnica prod = context.prodavnica.Find(145, "Novi Sad");
                Prodavnica prod = context.prodavnica.Find(151, "Leskovac");

                var sviKorisnici = context.korisnik.Where(
                    (korisnik => korisnik.fk_prodavnica == prod.id_prodavnica &&
                    korisnik.fk_mesto == prod.mesto)).ToList();

                foreach (Korisnik k in sviKorisnici)
                    context.Remove(k);

                var sviProizvodi = context.proizvod.Where(
                    (proizvod => proizvod.fk_prodavnica == prod.id_prodavnica &&
                    proizvod.fk_mesto == prod.mesto)).ToList();

                foreach (Proizvod p in sviProizvodi)
                    context.Remove(p);

                context.Remove(prod);

                context.SaveChanges();
        }
    }
}
