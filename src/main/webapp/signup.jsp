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
    <link rel="stylesheet" type="text/css" href="css/animate css/log-form.css">
    <!-- end of css -->
   <script>
    function validateForm() {
        var email = document.forms["myForm"]["email"].value;
        var contact = document.forms["myForm"]["contact"].value;
        var password = document.forms["myForm"]["password"].value;

        // Email validation
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!email.match(emailRegex)) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Contact number validation
        var contactRegex = /^\d{10}$/;
        if (!contact.match(contactRegex)) {
            alert("Please enter a 10-digit phone number.");
            return false;
        }

     // Password validation (minimum 8 characters, with specific, lowercase, and uppercase characters)
        var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
        if (!password.match(passwordRegex)) {
            alert("Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, and one digit.");
            return false;
        }

        return true;
    }
</script>
</head>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="your_stylesheet.css"> <!-- Add your stylesheet link here -->
    <title>Your Website</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark static-top">
        <div class="container">
            <a class="navbar-brand" href="index">
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
                        <a href="/" class="btn btn-outline-warning my-2 my-sm-0 ml-2">HOME</a>
                    </li>
                    
                        
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="center-container">
    <div class="log-form">
       <h2 style="color: rgb(16, 15, 15);">
    <span style="background-color: white; padding: 0 5px;">Register an Account</span>
</h2>

        <!--onsubmit="return validateForm()"  -->
       
       <form name="myForm" method="post" action="insertcus" onsubmit="return validateForm()">
    <input type="email" name="email" placeholder="Email" required /><br>
    <input type="text" name="username" placeholder="Username" required />
    <input type="tel" name="contact" placeholder="Contact Number" required /><br>
    <input type="password" name="password"  placeholder="Password" required />
    <button type="submit">Register</button>
    <p>Already have an account? <a href="login">Login here</a></p>
</form>
       
    </div><!--end log form -->
</div>
   
</body>
</html>