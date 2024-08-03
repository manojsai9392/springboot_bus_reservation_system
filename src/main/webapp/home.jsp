<!DOCTYPE html>
<html>

<head>
    <!-- for-mobile-apps -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="theme-color" content="#25274d">
    <meta name="description" content="A bus seat reservation system made by James">
    <meta name="author" content="James Muriitih">
    <meta name="keywords" content="bus,bus seats,">
    <meta property="og:site_name" content="google.com">
    <meta property="og:title" content="Bus Seat Reservation System" />
    <meta property="og:description" content="A bus seat reservation system made by James" />
    <meta property="og:image:url" itemprop="image" content="A bus seat reservation system made by James">
    <meta property="og:image" content="https://james-muriithi.github.io/bus/images/logo-400.png" />
    <meta property="og:image:url" content="https://james-muriithi.github.io/bus/images/logo-400.png" />
    <meta property="og:image:secure_url" content="https://james-muriithi.github.io/bus/images/logo-400.png" />
    <meta property="og:image:type" content="image/png" />
    <meta property="og:image:width" content="400" />
    <meta property="og:image:height" content="400" />
    <meta property="og:locale" content="en_GB" />
    <meta property="og:type" content="website" />
    <meta name="application-name" content="My Bus" />
    <meta name="apple-mobile-web-app-title" content="My Bus" />
    <meta name="msapplication-TileColor" content="#2b5797" />

    <!-- //for-mobile-apps -->
    <title>Bus Seat Reservation System</title>
    <!-- icons -->
    <link rel="icon" type="image/png" href="images/logo-96.png" sizes="96x96" />
    <link rel="icon" type="image/png" href="images/logo-16.png" sizes="16x16" />
    <link rel="icon" type="image/png" href="images/logo-32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="images/logo-64.png" sizes="64x64" />
    <link rel="icon" type="image/png" href="images/logo-128.png" sizes="128x128" />
    <link rel="apple-touch-icon" sizes="120x120" href="images/apple-touch-icon.png" />
    <link rel="mask-icon" href="images/safari-pinned-tab.svg" color="#5bbad5" />
    <link rel="manifest" href="site.webmanifest">
    <!-- end of icons  -->
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrapValidator.css">
    <link rel="stylesheet" type="text/css" href="css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/jquery.seat-charts.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css">
    <link href="fonts/material-design-icons/material-icon.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="plugins/material-datetimepicker/bootstrap-material-datetimepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/material.min.css">
    <link rel="stylesheet" type="text/css" href="plugins/lobibox/css/lobibox.min.css">
    <link rel="stylesheet" type="text/css" href="css/simplelightbox.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- end of css -->
<style>
        .italic {
            font-style: italic;
        }
        
        .scroll-container {
            max-height: 200px; /* Set a fixed height for the container */
            overflow-y: scroll; /* Enable vertical scrolling */
            border: 1px solid #ccc; /* Add a border for visibility */
            padding: 10px; /* Add some padding for spacing */
        }
    </style>
    
    
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark static-top">
        <div class="container">
            <a class="navbar-brand" >
                <h1>
                    <img src="images/p1.png" alt="logo" width="30" height="30" style="margin-top: -10px">
                    <span>B</span>
                    <span>U</span>
                    <span>S</span>
                </h1>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <!-- <li class="nav-item active">
                        <a class="nav-link" href="#">Reprint
                            <span class="sr-only">(current)</span>
                        </a>
                    </li> -->
                    
                    <li class="nav-item">
                        <a href="login" class="btn btn-outline-warning my-2 my-sm-0 ml-2">Sign In</a>
                    </li>
                    <li class="nav-item">
                        <a href="signup" class="btn btn-outline-warning my-2 my-sm-0 ml-2">Sign Up</a>
                    </li>
                    
                    <!-- <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li> -->
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5 pt-5 pb-5 mt-md-5">
        <p class="italic" style="color: black " ><b>Planning a journey by bus? We've got you covered! Our easy-to-use bus reservation system allows you to book tickets for various routes with just a few clicks. Whether it's a short commute or a long-haul trip, we provide convenient and reliable bus services to get you to your destination comfortably. Experience hassle-free travel with our seamless reservation process.<b></b></p>
        
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="images/coupen1.jpg" class="card-img-top" alt="Card Image">
                    <div class="card-body">
                        <p class="card-text"><b>Applicable on minimum booking of  500. Not valid on AC Volvo buses</b></p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="images/coupon2.jpg" class="card-img-top" alt="Card Image">
                    <div class="card-body">
                        
                        <p class="card-text"><b>Applicable on all routes. Minimum booking amount 750. Not valid on festive seasons</b></p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="images/coupon3.jpg" class="card-img-top" alt="Card Image">
                    <div class="card-body">
                        
                        <p class="card-text"><b>Valid for new users only. Maximum discount limit is 400</b></p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

</body>
    
</html>