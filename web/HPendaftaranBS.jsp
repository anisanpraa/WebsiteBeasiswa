<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>DAFTAR BEASISWA</title>
        <link href="css/desain.css" rel="stylesheet" type="text/css">
        <link href="css/input.css" rel="stylesheet" type="text/css">
</head>
    <style>

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
  	color: 	#2F4F4F;
  	font-weight: bold;
	display: inline-flex;
  	align-items: center;  }

      .atas_awal div a:hover { color: #778899; }
  
    </style>
    
<body>
    <%@page import="aksi.*,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <% List<FProdi> list = admin.getAllRecords(); request.setAttribute("list", list); %>
    
    <nav class="atas_awal">
    <div><h1>Form Daftar Beasiswa</h1>
        <a href = "HInputDataMHS.jsp">BACK</a>
        <a href = "index.jsp">EXIT</a>
    </div></nav>  

<div class="container">    
    <form action="proses_saveBS.jsp" method="post">
    
    <label for="nim">NIM</label>
        <input type="text" name="nim" placeholder="NIM" id="nim" required> 
    
    <label for="nik">NIK</label>
       <input type="text" name="nik" placeholder="NIK" id="nik" required>  
    
    <label for="kg_bs">Kategori Beasiswa</label>
        <select name='kategori' id='kg_bs' required>
            <option value="">--Kategori Beasiswa--</option>
            <option value="Akademik A">Akademik A - 1 Semester - 6.000.000</option>
            <option value="Akademik B">Akademik B - 1 Semester - 4.800.000</option>         
            <option value="Akademik C">Akademis C - 1 Semester - 2.400.000</option>            
        </select>
  
     <label for="prodi">Prodi</label>
        <select name="prodi" required id='prodi'>
            <option value="">--Prodi--</option>
            <c:forEach items="${list}" var="pro">
            <option value="${pro.getId()}">${pro.getNama()}</option>
             </c:forEach>
        </select>
    
    
   <label for="sem">Semester</label>
        <select name="semester" required>
            <option value="">--Semester--</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select> 
    
    <label for="IPK">IPK</label>
        <input type="text" name="ipk" placeholder="IPK Terakhir" id="ipk" required>        
     
  
        <center><input type="submit" name="save" value="Submit Data"  
                onClick="return confirm('Apakah Anda Yakin Untuk Tetap Mesubmit Data Ini?/nData yang sudah di SUBMIT tidak bisa di Update Lagi!')"></center>
    </form></div>
 
 
        <div class="footer"><p> &copy; 2020 ANNISA NURUL PRATIWI - 20180810058 </p></div>      
  </body>
</html>