<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangKyUser.aspx.cs" Inherits="DangKyUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Nie</title>
    <style type="text/css">
        .auto-style1 {
            width: 189px;
        }
        .auto-style2 {
            width: 189px;
            height: 26px;
        }
        .auto-style4 {
            width: 631px;
        }
        .auto-style5 {
            height: 26px;
            width: 631px;
        }
        .auto-style6 {
            width: 302px;
        }
        .auto-style7 {
            width: 302px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 style="color: #0000FF; text-align: center;">Welcome Đăng Ký Tai Khoản</h1>
        
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style6" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">&nbsp;</td>
                <td class="auto-style1" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">Tên Người Dùng</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_tenht" runat="server" Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">&nbsp;</td>
                <td class="auto-style1" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">Giới Tính:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="drp_gt" runat="server" AutoPostBack="True" Height="30px" Width="80px">
                        <asp:ListItem Value="0">Nam</asp:ListItem>
                        <asp:ListItem Value="1">Nữ</asp:ListItem>
                        <asp:ListItem Value="2">Khác</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">&nbsp;</td>
                <td class="auto-style1" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">User Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_id" runat="server" Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">&nbsp;</td>
                <td class="auto-style1" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">Mật Khẩu</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_mk1" runat="server" Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">&nbsp;</td>
                <td class="auto-style1" style="text-align: center; font-family: &quot;times New Roman&quot;, Times, serif; color: #0000FF;">Nhập Lại Mật Khẩu:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_mk2" runat="server" Width="265px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_eror" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <style>
                        input#txt_mk1 {
                                        padding: 7px;
                                        border-radius: 4px;
                                        border-color: #66FFFF;
                                    }

                        input#txt_id {
                                        padding: 7px;
                                        border-radius: 4px;
                                        border-color: #66FFFF;
                                    }

                        input#txt_tenht {
                                        padding: 7px;
                                        border-radius: 4px;
                                        border-color: #66FFFF;
                                    }
                        #btn_login{     
                             border-radius:4px;
                             background-color:aqua;
                        }
                        #btn_huy{
                             border-radius:4px;
                             background-color:aqua;
                        }
                        input#txt_mk2 {
                                        padding: 7px;
                                        border-radius: 4px;
                                        border-color: #66FFFF;
                                        }
                        select#drp_gt {
                            height: 30px;
                            border-color: #66FFFF;
                            border-radius: 5px;
                                       }

                    </style>
                    <asp:Button ID="btn_login" runat="server" Height="45px" Text="Đăng Ký" Width="120px" OnClick="btn_login_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn_huy" runat="server" Height="45px" Text="Hủy" Width="127px" OnClick="btn_huy_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
