<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="utf-8">
    <title>DAFTAR BEASISWA</title>
    <link href="css/desain.css" rel="stylesheet" type="text/css">
    <script src="css/sweetalert.min.js"></script>
    
  </head>
  <style>
   .footer{
    padding: 10px;
    margin-top: 10px;
    text-align: center;
    background-color:   #AFEEEE; }

     .atas_awal {
    background-color: #AFEEEE;
    height: 60px;
    width: 100%;
    border: 0; }
  
  .atas_awal div {
    display: flex;
    margin: 0 auto;
    width: 1200px;
    height: 100%; }

  .atas_awal div h1 {
    flex: 1;
    font-family: Algerian;
    font-size: 26px;
    padding: 0;
    margin: 0;
    color:  #2F4F4F;
    font-weight: bold; 
    display: inline-flex;
    align-items: center; }

  .atas_awal div a {
    padding: 0 20px;
    font-family: Cooper Black;
    font-size: 18px;
    text-decoration: none;
    color:  #2F4F4F;
    font-weight: bold;
  display: inline-flex;
    align-items: center;  }

  .atas_awal div a:hover {
    color: #778899; }

  </style>
  
  <body>
       <%
        String username=(String)session.getAttribute("username");
        Cookie[] cookies=request.getCookies();
	    String UserName = "", Password = "";
	    if (cookies != null) {
	         for (Cookie cookie : cookies) {
	           if(cookie.getName().equals("username")) {
	             UserName = cookie.getValue();
	           }
	           if(cookie.getName().equals("password")){
	             Password = cookie.getValue();
	           }
	        
	           }
            }
        
        //redirect user to home page if already logged in
        if(username!=null){
            response.sendRedirect("HUtama.jsp");
        }
 
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){ %>
                <script>
                    swal("Gagal Login!", "Username atau Password Salah!", "error");
                </script> 
        <%   }else{  %>
                <script>
                    swal("Gagal Login!", "Terjadi Kesalahan!", "error");
                </script> 
        <%
        	}
        }
        %>
    
    <nav class="atas_awal">
    <div><h1>FORM LOGIN ADMIN</h1>
      <a href = "index.jsp">EXIT</a>
    </div>
    </nav>  

    <div class="login">
      <h1>LOGIN</h1>
      <form action="Proses_Login.jsp" method="post">
        <label for="username"><i class="fas fa-user"></i></label>
        <input type="text" name="username" placeholder="Username" id="username" required
        autocomplete="off" value="<%=UserName%>" >

        <label for="password"><i class="fas fa-lock"></i></label>
        <input type="password" name="password" placeholder="Password" id="password" required
        autocomplete="off" value="<%=Password%>" >
        
        <input type="submit" name="login" value="Login">
      </form>
    </div>
        <div class="footer">
    <p> &copy;  2020 ANNISA NURUL PRATIWI - 20180810058 </p>
  </div>     
    
  </body>
</html>