 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%>
    
        <%
        String username=(String)session.getAttribute("username");
        
        //Jika Belum Login
        if(username==null){ %>                
           <jsp:include page="Form_Login.jsp"></jsp:include>
        <%	} %>
        
<!DOCTYPE html>
<html>
   <head><title>Pengajuan Beasiswa</title>
    <link href="css/menu.css" rel="stylesheet" type="text/css">
    <link href="css/desain1.css" rel="stylesheet" type="text/css">
    <script src="css/jquery-3.4.1.min.js"></script>
    <script src="css/sweetalert2.all.min.js"></script>
    <style> 
    input[type=text] {
    width: 80%;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('foto/search.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
input[type=text]:focus {
    width: 80%;}
</style>
   </head>
<body>
    
    <%@page import="aksi.*,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <% List<FMhs> list = user.getAllRecords(); request.setAttribute("list", list); %>

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
            <a class="active" href="HDataMHS.jsp">Data Mahasiswa</a>
            <a href="HDataBS.jsp">Data Pengajuan Beasiswa</a></div>
  <li class="dropdown" style="float:right">
      <div class="active">
      <a href="javascript:void(0)" class="dropbtn">Username : <%=username%></a></div>
            <div class="dropdown-content"><a href="proses_logout.jsp">Logout</a></div>
</ul>
    
    <br><br>
<center><h2><font color="#2F4F4F">Data MAHASISWA</font></h2><br><br>
 <table><tr><th>NIK</th>
        <th>Nama</th>
        <th>Tanggal Lahir</th>
        <th>Jenis Kelamin</th>
        <th>Agama</th>
        <th>No HP</th>
        <th>Email</th>
        <th>Aksi</th></tr>
  
  <c:forEach items="${list}" var="mhs">
  <tr><td>${mhs.getnik()}</td>
      <td>${mhs.getnama()}</td>
      <td>${mhs.getttl()}</td>
      <td>${mhs.getjk()}</td>
      <td>${mhs.getagama()}</td>
      <td>${mhs.getnohp()}</td>
      <td>${mhs.getemail()}</td>
      <td ><center><a id="tombol" href="Edit_MHS.jsp?nik=${mhs.getnik()}" >Edit</a>
                   <a id="tombol" href="proses_hapusMHS.jsp?nik=${mhs.getnik()}" class="btn-del">Hapus</a>
           </center></td></tr></c:forEach>
  </table></center><br><br> 
  
  <script>
    $('.btn-del').on('click', function(e){
        e.preventDefault();
        const href = $(this).attr('href')
        
        Swal.fire({
         title : "Apakah Anda Yakin Untuk Menghapus Data Ini?",
         icon: 'warning',
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
 
   <div class="footer">
    <p><center>&copy; 2020 ANNISA NURUL PRATIWI - 20180810058</center></p>
  </div>
</body></html>