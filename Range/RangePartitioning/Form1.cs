using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RangePartitioning.Models;
using Microsoft.EntityFrameworkCore;
using Npgsql;

namespace RangePartitioning
{
    public partial class Form1 : Form
    {

        RangeContext context = new RangeContext();
        public Form1()
        {
            InitializeComponent();

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnRead_Click(object sender, EventArgs e)
        {
            Trkaci tr = context.trkaci.Find(2);
            MessageBox.Show(tr.ime +" "+ tr.prezime);

            context.SaveChanges();
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
  
            Trkaci tr = new Trkaci();
            tr.id_trkaca = 18;
            tr.ime = "Georgy";
            tr.prezime = "Richel";
            tr.godine = 42;
            tr.visina = 180;
            tr.tezina = 53.51;
            tr.fk_sponzor = 20;

            context.trkaci.Add(tr);
            context.SaveChanges();

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
         
            Trkaci tr = context.trkaci.Find(18);
            var sveEtape = context.etape.Where((f => f.fk_trkac_pobednik == tr.id_trkaca)).ToList();
            foreach (Etape s in sveEtape)
            {
                
                context.Remove(s);

            }
            context.Remove(tr);

            context.SaveChanges();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            Trkaci tr = context.trkaci.Find(56);
            tr.visina = 190;
            context.trkaci.Update(tr);

            context.SaveChanges();
        }
    }
}
