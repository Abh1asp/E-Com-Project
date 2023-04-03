<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="Project1.ViewDetails" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>EatFast</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand" href="index.html">
            <img src="images/logo.png" alt="" /><span>
              EatFast
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="Login.aspx">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Login.aspx"> Login</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="UserReg.aspx"> Register </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contact us</a>
                </li>
              </ul>
              <%--<form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">--%>
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              <%--</form>--%>
            </div>
            <div class="quote_btn-container ml-0 ml-lg-4 d-flex justify-content-center">
              <a href="">
                Subscribe
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>

            <div>

                <table class="w-100">
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cat_Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                                <Columns>
                                    <asp:BoundField DataField="Cat_Id" HeaderText="Category Id" />
                                    <asp:BoundField DataField="Name" HeaderText="Category Name" />
                                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                                        <ControlStyle Height="50px" Width="50px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Pro_Id" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
                                <Columns>
                                    <asp:BoundField DataField="Pro_Id" HeaderText="Product Id" />
                                    <asp:BoundField DataField="Name" HeaderText="Product Name" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                                        <ControlStyle Height="50px" Width="50px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>

</form>


<section class="contact_section layout_padding">
    <div class="container">
      <h2 class="font-weight-bold">
        Contact Us
      </h2>
      <div class="row">
        <div class="col-md-8 mr-auto">
          <%--<form action="">--%>
            <div class="contact_form-container">
              <div>
                <div>
                  <input type="text" placeholder="Name">
                </div>
                <div>
                  <input type="text" placeholder="Phone Number">
                </div>
                <div>
                  <input type="email" placeholder="Email">
                </div>

                <div class="mt-5">
                  <input type="text" placeholder="Message">
                </div>
                <div class="mt-5">
                  <button type="submit">
                    send
                  </button>
                </div>
              </div>

            </div>

          <%--</form>--%>
        </div>
      </div>
    </div>
  </section>


    <section class="info_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h5>
            Hotels
          </h5>
          <ul>
            <li>
              Al-Reem
            </li>
            <li>
              Slice of Spice
            </li>
            <li>
              Majlis
            </li>
            <li>
              Paragon
            </li>
            <li>
              MRF
            </li>
            <li>
              Soofi
            </li>
            <li>
              Thaal
            </li>
            <li>
              UAE
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>
            Bakeries
          </h5>
          <ul>
            <li>
              KR Bakers
            </li>
            <li>
              Kamala Bakery
            </li>
            <li>
              Geo Bakery
            </li>
            <li>
              Supreme Bakery
            </li>
            <li>
              Ammas Fresh
            </li>
            <li>
              Navya Stores
            </li>
            <li>
              Real Bakery
            </li>
            <li>
              Moms Bake Hut
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>
            Cafes
          </h5>
          <ul>
            <li>
              Coco Cafe
            </li>
            <li>
              Cafe One
            </li>
            <li>
              Hustoh Resto Cafe
            </li>
            <li>
              Costa Cafe
            </li>
            <li>
              iCafe
            </li>
            <li>
              Plan C Cafe
            </li>
            <li>
              Scoopi Cafe
            </li>
            <li>
              Hidden Space Cafe
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <div class="social_container">
            <h5>
              Follow Us
            </h5>
            <div class="social-box">
              <a href="">
                <img src="images/fb.png" alt="">
              </a>

              <a href="">
                <img src="images/twitter.png" alt="">
              </a>
              <a href="">
                <img src="images/linkedin.png" alt="">
              </a>
              <a href="">
                <img src="images/instagram.png" alt="">
              </a>
            </div>
          </div>
          <div class="subscribe_container">
            <h5>
              Subscribe Now
            </h5>
           <%-- <div class="form_container">--%>
              <form action="">
                <input type="email">
                <button type="submit">
                  Subscribe
                </button>
             <%-- </form>--%>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

    

    </body>
</html>
