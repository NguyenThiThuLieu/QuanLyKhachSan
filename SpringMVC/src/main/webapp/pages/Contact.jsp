<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CONTACT</title>
    <script src="https://kit.fontawesome.com/eaa4609b2f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">
</head>

<body>
    <div class="preloader">
        <div></div>
        <div>Loading Content!</div>
    </div>
    
    <header>
        <input type="checkbox" id="toggle-check">
        <nav>
            <div class="container">
                <h1>Hotel</h1>

                <ul>
                    <li><a href="Index.jsp">Home</a></li>
                    <li><a href="About.jsp" class="current">About</a></li>
                    <li><a href="Contact.jsp">Contact</a></li>
                    <li><a href="Login.jsp">Login</a></li>
                </ul>

                <div class="toggle">
                    <label for="toggle-check" class="toggle-btn"><span></span></i></label>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <section class="contact">
            <div class="container">
                <h1><span class="color-primary">Contact</span> Us</h1>
                <p>Please fill out the form below to contact us</p>
                <label for="name">Name</label>
                <input type="text" id="name">
                <label for="email">Email</label>
                <input type="text" id="email">
                <label for="message">Message</label>
                <textarea type="" id="message"></textarea>
                <a href="#" class="btn">Submit</a>
            </div>
        </section>

        <section class="contact-details">
            <div class="container">
                <div>
                    <article>
                        <i class="far fa-paper-plane fa-5x"></i>
                        <p>Location</p>
                    </article>

                    <p>Quy Nhon City, Viet Nam</p>
                </div>

                <div>
                    <article>
                        <i class="fas fa-phone fa-5x"></i>
                        <p>Mobile Number</p>
                    </article>

                    <p>+81 xx.xxx.xxx</p>
                </div>

                <div>
                    <article>
                        <i class="fas fa-at fa-5x"></i>
                        <p>Email Address</p>
                    </article>

                    <p>info@athenahotel.com</p>
                </div>
            </div>
        </section>

    </main>

    <footer>
        <div class="container">
            <p>&copy;All Rights Reserved by ATHENA HOTEL.</p>
        </div>
    </footer>

    <script src="<%= request.getContextPath() %>/resources/js/script.js"></script>
</body>

</html>