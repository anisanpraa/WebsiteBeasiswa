<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
        String username=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(username==null){ %>              
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
        
    <%@page import="aksi.user,aksi.FMhs"%>
        <%
            String id = request.getParameter("nik");
            FMhs mhs = user.getRecordById(id);
        %>

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
        
  <div class="container">    
  <center><h2><font color="#2F4F4F">Form Edit Data Mahasiswa</font></h2></center>
    <form action="proses_editMHS.jsp" method="post">  
    <label for="nik">NIK</label>
    <input type="text" name="nik" id="nik" value="<%=mhs.getnik()%>" readonly="">
        
    <label for="nama">Nama</label>
        <input type="text" name="nama"  id="nama" value="<%=mhs.getnama()%>">
        
    <label for="ttl">Tanggal Lahir</label>
        <input type="text" name="ttl" id="ttl" value="<%=mhs.getttl()%>">
     
    <label for="jk">Jenis Kelamin</label><br>
        <input type="radio" name="jk"  id="jk" value="Perempuan" <%=mhs.getjk().equals("Perempuan")?"checked=\"checked\"": ""%> />Perempuan
        <input type="radio" name="jk"  id="jk" value="Laki-Laki" <%=mhs.getjk().equals("Laki-Laki")?"checked=\"checked\"": ""%> />Laki-Laki
    <br><br>
        
    <label for="agama">Agama</label>
    <select name="agama" >
            <option value="">--Agama--</option>
            <option value="Islam" <%=mhs.getagama().equals("Islam")?"selected=\"selected\"": ""%> >Islam</option>
            <option value="Kristen" <%=mhs.getagama().equals("Kristen")?"selected=\"selected\"": ""%>>Kristen</option>
            <option value="Hindu" <%=mhs.getagama().equals("Hindu")?"selected=\"selected\"": ""%>>Hindu</option>
            <option value="Buddha" <%=mhs.getagama().equals("Buddha")?"selected=\"selected\"": ""%>>Buddha</option>
            <option value="Konghucu" <%=mhs.getagama().equals("Konghucu")?"selected=\"selected\"": ""%>>Konghucu</option>
        </select>       
    
    <label for="nohp">No HP</label>
        <input type="text" name="nohp" id="nohp" value="<%=mhs.getnohp()%>">
    
    <label for="email">Email</label>
        <input type="text" name="email"  id="email" value="<%=mhs.getemail()%>">    
       
        <center><input type="submit" name="update" value="Update Data" onClick="return confirm('Apakah Anda Yakin Akan Mengupdate Data ini?')"></center>
    </form></div>

 
<div class="footer">
    <p><center>&copy; 2020 ANNISA NURUL PRATIWI - 20180810058</center></p>
</div>
</body>
</html>