<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DkyUser.aspx.cs" Inherits="DkyUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Nie</title>
    <style type="text/css">
        .auto-style2 {
            width: 266px;
        }
        .auto-style3 {
            height: 26px;
            width: 266px;
        }
        .auto-style6 {
            width: 266px;
            height: 95px;
        }
        .auto-style8 {
            width: 1398px;
            height: 324px;
        }
        .auto-style9 {
            margin-top: 0px;
        }
        .auto-style10 {
            width: 266px;
            height: 3px;
        }
        .auto-style14 {
            width: 266px;
            height: 29px;
        }
        .auto-style16 {
            width: 1093px;
        }
        .auto-style17 {
            width: 578px;
        }
        .auto-style18 {
            width: 578px;
            height: 29px;
        }
        .auto-style19 {
            height: 26px;
            width: 578px;
        }
        .auto-style20 {
            width: 578px;
            height: 95px;
        }
        .auto-style21 {
            width: 578px;
            height: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="text-align: center; color: #0000FF"> Trang Quản Trị Người Dùng</h1>
    </div>
        <p>
            &nbsp;</p>
        <table class="auto-style8">
            <tr>
                <td class="auto-style2" style="text-align: center; color: #0000FF">Tên Người Dùng</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txt_tenht" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style16" rowspan="9">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" Width="800px" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style9" ForeColor="#333333" GridLines="None" Height="213px" PageSize="8" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Mật Khẩu" SortExpression="password">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="username" HeaderText="Tên Đăng Nhập" SortExpression="username" />
                            <asp:BoundField DataField="tenND" HeaderText="Tên Người Dung" SortExpression="tenND" />
                            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="text-align: center; color: #0000FF">Giới Tính:</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="drp_gt" runat="server" Height="30px" Width="110px">
                        <asp:ListItem Value="Nam">Nam</asp:ListItem>
                        <asp:ListItem Value="Nu">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; color: #0000FF">User Name</td>
                <td class="auto-style19">
                    <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; color: #0000FF">Mật Khẩu</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txt_mk1" runat="server" OnTextChanged="txt_mk1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="text-align: center; color: #0000FF">Nhập Lại Mật Khẩu:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txt_mk2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; color: #0000FF">Phân Quyền:</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="dr_pq" runat="server" Height="30px" Width="113px">
                        <asp:ListItem Value="1">User</asp:ListItem>
                        <asp:ListItem Value="0">Admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; color: #0000FF">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="Erorr" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Label ID="lb_Tb" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
             
                <style>
                    .auto-style16 {
                                    width: 1000px;
                                    text-align: center;
                                    font-family: sans-serif;
                                }
                    select#drp_gt {
                             /* padding: 18px; */
                            border-color: #66FFFF;
                             border-radius: 2px;
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
                    #btn_dk{
                        Width:110px;
                        height:40px;
                        border-radius:4px;
                        background-color:aqua;
                    }
                    #btn_dong{
                        Width:120px;
                        height:40px;
                        border-radius:4px;
                        background-color:aqua;
                    }
                    #btn_sua{
                        Width:110px;
                        height:40px;
                        border-radius:4px;
                        background-color:aqua;
                    }
                    #btn_xoa{
                        Width:110px;
                        height:40px;
                        border-radius:4px;
                        background-color:aqua;
                    }
                    select#dr_pq {
                                    border-color: #66FFFF;
                                    border-radius: 2px;
                                }
                    input#txt_mk2 {
                                    padding: 7px;
                                    border-radius: 4px;
                                    border-color: #66FFFF;
                                    }
                    input#txt_mk1 {
                                        padding: 7px;
                                        border-radius: 4px;
                                        border-color: #66FFFF;
                                    }

                </style>
                <td class="auto-style6" style="text-align: center; color: #0000FF" ></td>
                <td class="auto-style20">
                    <asp:Button ID="btn_dk" runat="server" OnClick="btn_dk_Click" Text="Đăng Ký" Width="110px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_sua" runat="server" Text="Sữa"   OnClick="btn_sua_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btn_xoa" runat="server" Text="Xóa"  Width="110px" OnClick="btn_xoa_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_dong" runat="server" Text="Hủy"  Width="110px" OnClick="btn_dong_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="text-align: center; color: #0000FF"></td>
                <td class="auto-style21">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
