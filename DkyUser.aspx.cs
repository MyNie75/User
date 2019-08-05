using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DkyUser : System.Web.UI.Page
{
    SqlConnection kn;
    SqlDataAdapter com;
    SqlCommand commmandsql;
    DataTable data;

    protected void Page_Load(object sender, EventArgs e)
    {
        load_data();
    }

    protected void btn_dk_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_tenht.Text == "" || txt_id.Text == "" || txt_mk1.Text == "" || txt_mk2.Text == "")
                Erorr.Text = "Thông tin chưa đầy đủ";
            else
            {
                kn = new SqlConnection("Data Source=DESKTOP-0SJFLH1\\SQLEXPRESS;Initial Catalog=User;Integrated Security=True");
                kn.Open();
                string sql = "Select * from tb_User where username= '" + txt_id.Text + "'";
                commmandsql = new SqlCommand(sql, kn);
                commmandsql.ExecuteNonQuery();
                com = new SqlDataAdapter(commmandsql);
                data = new DataTable();
                com.Fill(data);
                if (data.Rows.Count > 0)
                    Erorr.Text = "User name này đã tồn tại";
                else
                {
                    if (txt_mk1.Text != txt_mk2.Text) Erorr.Text = "Mật khẩu không khớp";
                    else
                    {


                        string sqlthem = "Insert into tb_User(username,password,tenND,GioiTinh,phanQuyen) values('" + txt_id.Text + "','" + txt_mk1.Text + "','" + txt_tenht.Text + "','" + drp_gt.SelectedValue + "','"+dr_pq.SelectedValue+"')";
                        SqlCommand cmd = new SqlCommand(sqlthem, kn);
                        cmd.ExecuteNonQuery();
                        Erorr.Text = "Đăng Ký Thành Công";
                    }
                }
            }
        }
        catch
        {
            Erorr.Text = "Lỗi";
        }
    }

    protected void btn_xoa_Click(object sender, EventArgs e)
    {
        kn = new SqlConnection("Data Source=DESKTOP-0SJFLH1\\SQLEXPRESS;Initial Catalog=User;Integrated Security=True");
        commmandsql = new SqlCommand("delete from tb_User  where username='" + txt_id.Text + "'", kn);
        kn.Open();
        commmandsql.ExecuteNonQuery();
        kn.Close();
        lb_Tb.Text = "XóaThành Công";
    }

    protected void btn_sua_Click(object sender, EventArgs e)
    {
        kn = new SqlConnection("Data Source=DESKTOP-0SJFLH1\\SQLEXPRESS;Initial Catalog=User;Integrated Security=True");


        commmandsql = new SqlCommand("update tb_User set password='"+txt_mk1.Text+"', tenND='"+txt_tenht.Text+"',GioiTinh='"+drp_gt.SelectedValue+"',phanQuyen='"+dr_pq.SelectedValue+"' where username='"+txt_id.Text+"'",kn);
        kn.Open();
        commmandsql.ExecuteNonQuery();
        kn.Close();
        lb_Tb.Text = "Sữa Thành Công";

    }
    private void load_data()
    {
        kn = new SqlConnection("Data Source=DESKTOP-0SJFLH1\\SQLEXPRESS;Initial Catalog=User;Integrated Security=True");
        com = new SqlDataAdapter("select * from tb_User", kn);
        data = new DataTable();
        com.Fill(data);
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btn_dong_Click(object sender, EventArgs e)
    {
        txt_tenht.Text = "";
        txt_id.Text = "";
        txt_mk1.Text = "";
        txt_mk2.Text = "";
    }

    protected void txt_mk1_TextChanged(object sender, EventArgs e)
    {

    }
}