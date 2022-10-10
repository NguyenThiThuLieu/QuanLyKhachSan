<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <!-- <link rel="stylesheet" href="css/Login.css"> -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">
</head>
<body>
    <!-- <div class="preloader">
      <div></div>
      <div>Loading Content!</div>
    </div> -->
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
    <div class="main">
        <form action="" method="POST" class="form" id="form-1">
          <h3 class="heading">ĐĂNG NHẬP</h3>
          <p class="desc"></p>
      
          <div class="spacer"></div>
        
          <div class="form-group">
            <label for="email" class="form-label">Email</label>
            <input id="email" name="email" type="text" placeholder="VD: email@athenahotel.com" class="form-control" required>
            <span class="form-message"></span>
          </div>
      
          <div class="form-group">
            <label for="password" class="form-label">Mật khẩu</label>
            <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control" required>
            <span class="form-message"></span>
          </div>
          <div class="checkbox">
            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
          </div>
      
          <button class="form-submit" id="dangnhap">Đăng nhập</button>
          <a href="Home.jsp">Login</a>
          <!-- <p class="message">Not registered? <a href="SignUp.html">Create an account</a></p> -->
        </form>
      </div>
      <footer>
        <div class="container">
            <p>&copy;All Rights Reserved by ATHENA HOTEL</p>
        </div>
      </footer>
    
</body>
</html>