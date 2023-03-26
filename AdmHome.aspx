<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Admin Home</title>

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
            height: 26px;
        }
        .auto-style2 {
            width: 111px;
        }
        .auto-style3 {
            height: 26px;
            width: 111px;
        }
        .auto-style4 {
            width: 319px;
        }
        .auto-style5 {
            height: 26px;
            width: 319px;
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
                  <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="fruit.html"> Category</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="service.html"> Product </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contact us</a>
                </li>
              </ul>
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
            </div>
            <div class="quote_btn-container ml-0 ml-lg-4 d-flex justify-content-center">
              <a href="Login.aspx">
                Logout
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
      
    <!-- end header section -->
    

  <!-- service section -->

  <section class="service_section layout_padding ">
    <div class="container">
      <h2 class="custom_heading">Welcome Admin</h2>
      <%--<p class="custom_heading-text">
        There are many variations of passages of Lorem Ipsum available, but
        the majority have
      </p>--%>
        <a href="AddCategory.aspx" />
      <div class=" layout_padding2">
        <div class="card-deck">
          <div class="card">
            <img class="card-img-top" src="images/category1.png" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">Add Category</h5>
              <%--<p class="card-text">
                Select variety of foods.
              </p>--%>
            </div>
          </div>

            <a href="AddProduct.aspx" />
          <div class="card">
            <img class="card-img-top" src="images/product1.png" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">Add Product</h5>
            </div>
          </div>

            <a href="" />
          <div class="card">
            <img class="card-img-top" src="images/deleteuser.png" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">Delete User</h5>
            </div>
          </div>

            <a href="" />
            <div class="card">
            <img class="card-img-top" src="images/deleteproduct.png" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">Delete Product</h5>
            </div>
          </div>

            <a href="ShowDetails.aspx" />
            <div class="card">
            <img class="card-img-top" src="images/viewdetails.png" alt="Card image cap" />
            <div class="card-body">
              <h5 class="card-title">View Details</h5>
            </div>
          </div>

        </div>
      </div>
      <div class="d-flex justify-content-center">
        <a href="" class="custom_dark-btn">
          My Profile
        </a>
      </div>
    </div>
  </section>

  <!-- end service section -->

  <!-- contact section -->
  <section class="contact_section layout_padding">
    <div class="container">
      <h2 class="font-weight-bold">
        Contact Us
      </h2>
      <div class="row">
        <div class="col-md-8 mr-auto">
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

        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->


  <!-- map section -->
  <%--<section class="map_section">
    <div id="map" class="h-100 w-100 ">
    </div>
  </section>--%>

  <!-- end map section -->

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
            <div class="form_container">
                <input type="email">
                <button type="submit">
                  Subscribe
                </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>



  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2019 All Rights Reserved By
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

 <%-- <script>
    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 11,
        center: {
          lat: 40.645037,
          lng: -73.880224
        },
      });

      var image = 'images/maps-and-flags.png';
      var beachMarker = new google.maps.Marker({
        position: {
          lat: 40.645037,
          lng: -73.880224
        },
        map: map,
        icon: image
      });
    }
  </script>
  <!-- google map js -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap">
  </script>--%>
  <!-- end google map js -->
    </form>
</body>

</html>