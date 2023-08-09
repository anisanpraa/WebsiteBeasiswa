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
    
    <%
        String username=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(username==null){ %> 
         <jsp:include page="Form_Login.jsp"></jsp:include>
        <%	} %>
        
    <%@page import="aksi.*,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="header">
    <center><h1>Pengolahan Data Beasiswa</h1>
            <h2>Fakultas Ilmu Komputer - Universitas Kuningan</h2></center>
</div>

  <ul>
  <li><a href="HUtama.jsp">Home</a></li>
  <li><a class="active" href="HProdi.jsp">Data Prodi</a></li>
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
  
<br><br> 
<% List<FProdi> list = admin.getAllRecords(); request.setAttribute("list", list); %>
<center><h2><font color="#2F4F4F">Data Prodi Fakultas Komputer</font></h2>
<center><a id="tombol" href="HInputProdi.jsp">Tambah Data Prodi</a></center>
<br><br>

  <table>
  <tr><th>Kode Prodi</th>
      <th>Nama Prodi</th>
      <th>Akreditasi</th>
      <th>Aksi</th></tr>
  
  <c:forEach items="${list}" var="pro">
  <tr><td>${pro.getId()}</td>
      <td>${pro.getNama()}</td>
      <td>${pro.getAkred()}</td>
      <td><center>
          <a id="tombol"  href="Edit_Prodi.jsp?id=${pro.getId()}">Edit</a>
          <a id="tombol"  href="proses_hapusProdi.jsp?id=${pro.getId()}" class="btn-del">Hapus</a>
           </center></td></tr>
</c:forEach>
</table><br><br>    
<div class="footer">
    <p><center>&copy; 2020 ANNISA NURUL PRATIWI - 20180810058</center></p>
</div>

<script>
    $('.btn-del').on('click', function(e){
        e.preventDefault();
        const href = $(this).attr('href')
        
        Swal.fire({
         title : "Apakah Anda Yakin Untuk Menghapus Data Ini?",
         icon : 'warning',
         text : "Data yang dihapus tidak dapat dikembalikan!!",
         showCancelButton : true,
         confirmButtonColor : '#3085D6',
         cancelButtonColor : '#d33',
         confirmButtonText : 'Hapus Data',
        }).then((result) => {
            if(result.value){
                document.location.href=href;
            }
        })
    })
 </script>
    
</body></html>