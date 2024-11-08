using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace bankamatikOto
{
    public partial class MusteriGuncelle : Form
    {
        public MusteriGuncelle()
        {
            InitializeComponent();
        }
        SqlConnection con = new SqlConnection(" server= DESKTOP-NHRND48\\SQLEXPRESS ; initial catalog= bankamatik; integrated security = sspi");


        private void button2_Click_1(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from  musteriler where ID= @p1 or tcNo= @p2  ", con);
            komut.Parameters.AddWithValue("@p1", mtxtID.Text);
            komut.Parameters.AddWithValue("@p2", mtxtID.Text);


            con.Open();
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                txtID.Text = dr["ID"].ToString();
                txtTc.Text = dr["tcNo"].ToString();
                txtAdS.Text = dr["adSoyad"].ToString();
                txtAdr.Text = dr["adres"].ToString();
                mtxtTel.Text = dr["telefon"].ToString();
                txtDurum.Text = dr["durum"].ToString();

                txtBakiye.Text = dr["bakiye"].ToString();

            }
            else
            {
                MessageBox.Show(mtxtID.Text + " Numaralı Kayıt Bulunamadı !", "Kayıt Arama", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtID.Text = "";
                txtTc.Text = "";
                txtAdr.Text = "";
                txtAdS.Text = "";
                txtBakiye.Text = "";
                mtxtTel.Text = "";
                txtID.Text = "";

            }
            con.Close();
        }

        private void txtID_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void txtBakiye_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void mtxtID_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void mtxtTel_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void txtAdr_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtAdS_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtTc_TextChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void MusteriGuncelle_Load(object sender, EventArgs e)
        {

        }

        
    }
}
