<%@page contentType="text/html" pageEncoding="UTF-8"%>
        
<!DOCTYPE html>
<html>
   <head><title>Pengajuan Beasiswa</title>
    <link href="css/menu.css" rel="stylesheet" type="text/css">
    <link href="css/desain1.css" rel="stylesheet" type="text/css">
    <script src="css/jquery-3.4.1.min.js"></script>
    <script src="css/sweetalert2.all.min.js"></script>
   </head>
<body>
    
    <%@page import="aksi.*,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <% List<FBs> list = pendaftaran.getAllRecords(); request.setAttribute("list", list); %>

          <%
        String username=(String)session.getAttribute("username");
        
        //Jika Belum Login
        if(username==null){ %>
            <script>swal("Gagal Mengakses Data!", "Anda Harus Login Sebagai ADMIN!", "error");</script> 
                <jsp:include page="Form_Login.jsp"></jsp:include>
        <%	} %>
        
<div class="header">
    <center><h1>Pengolahan Data Beasiswa</h1>
            <h2>Fakultas Ilmu Komputer - Universitas Kuningan</h2></center>
</div>

  <ul>
  <li><a href="HUtama.jsp">Home</a></li>
  <li><a href="HProdi.jsp">Data Prodi</a></li>
  <li class="dropdown">
    <div class="active">
    <a href="javascript:void(0)" class="dropbtn">Data</a></div>
        <div class="dropdown-content">
            <a href="HDataMHS.jsp">Data Mahasiswa</a>
            <a class="active" href="HDataBS.jsp">Data Pengajuan Beasiswa</a></div>
   <li class="dropdown" style="float:right">
      <div class="active">
      <a href="javascript:void(0)" class="dropbtn">Username : <%=username%></a></div>
        <div class="dropdown-content"><a href="proses_logout.jsp">Logout</a></div>
</ul>
    
        <br><br>
<center><h2><font color="#2F4F4F">Data Pendaftar Beasiswa</font></h2>
<br><br>

  <table>
  <tr><th>NIM</th>
      <th>NIK</th>
      <th>Kategori Beasiswa</th>
      <th>Prodi</th>
      <th>Semester</th>
      <th>IPK</th></tr>
  
  <c:forEach items="${list}" var="bs">
  <tr><td>${bs.getNim()}</td>
      <td>${bs.getNik()}</td>
      <td>${bs.getKategori()}</td>
      <td>${bs.getProdi()}</td>
      <td>${bs.getSemester()}</td>
      <td>${bs.getIpk()}</td>
      </center></tr></c:forEach>
</table><br><br> 

<div class="footer">
    <p><center>&copy; 2020 ANNISA NURUL PRATIWI - 20180810058</center></p>
</div>
</body>
</html>