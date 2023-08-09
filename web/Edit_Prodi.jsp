<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <%
        String username=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(username==null){ %>
                 <script type="text/javascript">
                    alert("Anda Harus Login Sebagai Admin Terlebih Dahulu Untuk Mengakses Data Ini!");
                 </script>
                <jsp:include page="Form_Login.jsp"></jsp:include>
        <%	} %>
        
<!DOCTYPE html>
<html>
   <head><title>Pengajuan Beasiswa</title>
    <link href="css/menu.css" rel="stylesheet" type="text/css">
    <link href="css/desain1.css" rel="stylesheet" type="text/css">
    <link href="css/input.css" rel="stylesheet" type="text/css">
   </head>
<body>
       
    <%@page import="aksi.admin,aksi.FProdi"%>
        <%
            String id = request.getParameter("id");
            FProdi pro = admin.getRecordById(id);
        %>

<div class="header">
    <center><h1>Pengolahan Data Beasiswa</h1>
            <h2>Fakultas Ilmu Komputer - Universitas Kuningan</h2></center>
</div>

  <ul>
  <li><a href="HUtama.jsp">Home</a></li>
  <li><a  class="active" href="HProdi.jsp">Data Prodi</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Data</a>
    <div class="dropdown-content">
      <a href="HDataMHS.jsp">Data Mahasiswa</a>
      <a href="HDataBS.jsp">Data Pengajuan Beasiswa</a></div>
   <li class="dropdown" style="float:right">
      <div class="active">
      <a href="javascript:void(0)" class="dropbtn">Username: <%=username%></a></div>
    <div class="dropdown-content">
        <a href="proses_logout.jsp">Logout</a></div>
</ul>  
        
        
  <div class="container"> 
    <center><h2><font color="#2F4F4F">Form Edit Data Prodi</font></h2></center>
    <form action="proses_editProdi.jsp" method="post">  
    <label for="id">ID Prodi</label>
    <input type="text" name="id" id="id" value="<%=pro.getId()%>" readonly="">
        
    <label for="nama">Nama Prodi</label>
        <input type="text" name="nama"  id="nama" value="<%=pro.getNama()%>">
        
        <label for="akred">Akreditasi</label>
        <input type="text" name="akred" id="akred" value="<%=pro.getAkred()%>"> 
       
        <center><input type="submit" name="update" value="Update Data"  onClick="return confirm('Apakah Anda Yakin Akan Mengupdate Data ini?')"></center>
    </form></div>
 
<div class="footer">
    <p><center>&copy; 2020 ANNISA NURUL PRATIWI - 20180810058</center></p>
</div>
</body>
</html>