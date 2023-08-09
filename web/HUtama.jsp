<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
   
<%
        String username=(String)session.getAttribute("username");    
        //redirect user to login page if not logged in
        if(username==null){
        	response.sendRedirect("Form_Login.jsp");
        }
        %>
        
<!DOCTYPE html>
<html>
   <head><title>Pengajuan Beasiswa</title>
    <link href="css/menu.css" rel="stylesheet" type="text/css">
    <link href="css/tabel.css" rel="stylesheet" type="text/css">
   </head>
<body>

<div class="header">
    <center><h1>Pengolahan Data Beasiswa</h1>
            <h2>Fakultas Ilmu Komputer - Universitas Kuningan</h2></center>
</div>

  <ul>
  <li><a class="active" href="HUtama.jsp">Home</a></li>
  <li><a href="HProdi.jsp">Data Prodi</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Data</a>
    <div class="dropdown-content">
      <a href="HDataMHS.jsp">Data Mahasiswa</a>
      <a href="HDataBS.jsp">Data Pengajuan Beasiswa</a></div>
   <li class="dropdown" style="float:right">
      <div class="active">
      <a href="javascript:void(0)" class="dropbtn">Username : <%=username%></a></div>
    <div class="dropdown-content">
        <a href="proses_logout.jsp">Logout</a></div>
</ul>
       
       <br><br><center><h2>Selamat Datang  <%= session.getAttribute("nama_admin")%>  </h2>
           Waktu Login Anda : <%= session.getAttribute("waktu")%><br><br><br><br>
               <table>                           
               <tr><th colspan="2"><b>Anda Memiliki HAK AKSES sebagai berikut :</b></th></tr>
                   <tr><td>1.</td><td>Mengupdate dan Menghapus Data Mahasiswa</td></tr>
                   <tr><td>2.</td><td>Mengupdate dan Menghapus Data Prodi</td></tr>
                   <tr><td>3.</td><td>Data Pendaftaran Beasiswa tidak dapat di Hapus dan Update oleh siapapun </td></tr>
                   <tr><th colspan="2">
                   <b>Admin yang mengolah data BERTANGGUNG JAWAB penuh atas tindakan yang dilakukannya</b></th></tr>
                   </table></center> 
        
<br><br><center><b>Waktu Saat Ini : <%= new Date().toLocaleString()%></b></center><br><br>
<div class="footer">
    <p><center>&copy; 2020 ANNISA NURUL PRATIWI - 20180810058</center></p>
</div>
</body>
</html>




