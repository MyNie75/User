using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class LogIn : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btlogin_Click(object sender, EventArgs e)
    {
        //kiểm tra người dùng
        if (string.IsNullOrEmpty(txtPassword.Text.Trim())|| string.IsNullOrEmpty(txtUsser.Text.Trim()))
        {
            lbIMsgErorr.Text = "Vui Lòng Kiểm Tra Tên Đăng Nhập và Mật Khẩu";
            return;
        }
        // Xuống cớ sỡ dữ liệu lây lấy người dùng
        SqlConnection kn = new SqlConnection("Data Source=DESKTOP-0SJFLH1\\SQLEXPRESS;Initial Catalog=User;Integrated Security=True");
        try
        {
            kn.Open();
            string tk = txtUsser.Text;
            string mk = txtPassword.Text;
            string sql = "Select * from tb_User where username='" + tk + "' and password='" + mk + "'";
            SqlCommand com = new SqlCommand(sql, kn);
            com.ExecuteNonQuery();
            SqlDataAdapter com1 = new SqlDataAdapter(com);
            DataTable data = new DataTable();

            com1.Fill(data);
            SqlDataReader dta = com.ExecuteReader();
            if (dta.Read() == true)
            {
                foreach(DataRow dt in data.Rows)
                if (dt["phanQuyen"].ToString() == "1")
                {

                    Response.Redirect("DangKyUser.aspx");
                }
                else
                {
                    Response.Redirect("DkyUser.aspx");
                }
            }
        }
        catch(Exception ex)
        {
            lbIMsgErorr.Text="Thông Tin Đăng Nhập Không Hợp lệ";
        }
        
    }

    protected void Btn_dy_Click(object sender, EventArgs e)
    {
        Response.Redirect("DangKyUser.aspx");
    }
}

