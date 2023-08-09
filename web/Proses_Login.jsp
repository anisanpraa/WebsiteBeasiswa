<html><head>
	<title>DAFTAR BEASISWA</title>
	<script src="css/sweetalert.min.js"></script>
</head><body>
    
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="aksi.koneksi"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="aksi.admin"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="login" class="aksi.flogin" scope="session"/>
<jsp:setProperty name="login" property="*"/>

<%
        String nama_admin=request.getParameter("nama_admin");
        String email_admin=request.getParameter("username");
        String pass_admin=request.getParameter("password");
        Cookie username = new Cookie("username",  request.getParameter("username"));
                                Cookie password = new Cookie("password",  request.getParameter("password"));
                                username.setMaxAge(3600);
                                password.setMaxAge(3600);
                                response.addCookie(username);
                                response.addCookie(password);
        boolean result=admin.cek(login);
        
if(result){
        session.setAttribute("waktu",new java.util.Date());
        try{
            Connection con = koneksi.getKoneksi();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM admin WHERE username='"+login.getUsername()+"' AND password='"+login.getPassword()+"'");
            if (rs.next()){
            session.setAttribute("nama_admin", rs.getString("nama_admin"));
            session.setAttribute("username", rs.getString("username"));
            session.setAttribute("waktu", new java.util.Date().toLocaleString());
            }
        }catch (Exception e){System.out.println(e);}
        %>
       
          <jsp:include page="HUtama.jsp"></jsp:include>
              
<% } else { 
    Cookie UserName = new Cookie ("username","");
    Cookie PassWord = new Cookie("password", "");
    UserName.setMaxAge(0);
    PassWord.setMaxAge(0);
    response.addCookie(UserName);
    response.addCookie(PassWord);
%>

<script>swal("Gagal Login!", "Username atau Password Salah!", "error");</script> 
<jsp:include page="Form_Login.jsp"></jsp:include>
    
<% } %>

</body></html>