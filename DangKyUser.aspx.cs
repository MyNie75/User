using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DangKyUser : System.Web.UI.Page
{
    protected override void OnInit(EventArgs e)
    {
        
    }
    private void ketnoi()
    {
        SqlConnection kn = new SqlConnection("Data Source=DESKTOP-0SJFLH1\\SQLEXPRESS;Initial Catalog=User;Integrated Security=True");
        kn.Open();
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_tenht.Text == "" || txt_id.Text == "" || txt_mk1.Text == "" || txt_mk2.Text == "")
                lbl_eror.Text = "Thông tin chưa đầy đủ";
            else
            {
                SqlConnection kn = new SqlConnection("Data Source=DESKTOP-0SJFLH1\\SQLEXPRESS;Initial Catalog=User;Integrated Security=True");
                kn.Open();
                string sql = "Select * from tb_User where username= '" + txt_id.Text + "'";
                SqlCommand commmandsql = new SqlCommand(sql, kn);
                commmandsql.ExecuteNonQuery();
                SqlDataAdapter com = new SqlDataAdapter(commmandsql);
                 DataTable data = new DataTable();
                 com.Fill(data);
                  
                if (data.Rows.Count > 0)
                    lbl_eror.Text = "User name này đã tồn tại";
                else
                {
                    if (txt_mk1.Text != txt_mk2.Text) lbl_eror.Text = "Mật khẩu không khớp";
                    else
                    {

                       
                        string sqlthem = "Insert into tb_User(username,password,tenND,GioiTinh,phanQuyen) values('"+txt_id.Text+"','"+txt_mk1.Text+"','"+txt_tenht.Text+"','"+drp_gt.SelectedValue+"','1')";
                        SqlCommand cmd = new SqlCommand(sqlthem, kn);
                        cmd.ExecuteNonQuery();
                        lbl_eror.Text = "thành công";
                    }
                }
            }
        }
        catch
        {
            lbl_eror.Text = "Lỗi";   
        }
    }

    protected void btn_huy_Click(object sender, EventArgs e)
    {
        txt_tenht.Text = "";
        txt_id.Text = "";
        txt_mk1.Text = "";
        txt_mk2.Text = "";
    }
}