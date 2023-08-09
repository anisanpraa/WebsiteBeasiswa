<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>DAFTAR BEASISWA</title>
        <link href="css/desain.css" rel="stylesheet" type="text/css">
        <link href="css/input.css" rel="stylesheet" type="text/css">
        <script src="css/sweetalert.min.js"></script>
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
    <nav class="atas_awal">
    <div><h1>Form Data Diri Mahasiswa</h1>
        <a href = "HPendaftaranBS.jsp">NEXT</a>
        <a href = "index.jsp">EXIT</a>
    </div></nav>  

<div class="container">    
    <form action="proses_saveMAHA.jsp" name=formInput method="post">
    
    <label for="nik">NIK</label>
        <input type="text" name="nik" placeholder="NIK" id="nik" required>
        
    <label for="nama">Nama</label>
        <input type="text" name="nama" placeholder="Nama" id="nama" required>
        
    <label for="ttl">Tanggal Lahir</label>
       <input type="date" name="ttl" placeholder="dd-mm-yyyy" id="ttl" required>
      
       <label for="jk">Jenis Kelamin</label><br>
        <input type="radio" name="jk"  id="jk" value="Perempuan" required>Perempuan
        <input type="radio" name="jk"  id="jk" value="Laki-Laki" required>Laki-Laki
        <br><br>
    
    <label for="agama">Agama</label>
        <select name="agama" required>
            <option value="">--Agama--</option>
            <option value="Islam">Islam</option>
            <option value="Kristen">Kristen</option>
            <option value="Hindu">Hindu</option>
            <option value="Buddha">Buddha</option>
            <option value="Konghucu">Konghucu</option>
        </select>       
    
    <label for="nohp">No HP</label>
        <input type="text" name="nohp" placeholder="No HP" id="nohp" required>
    
    <label for="email">Email</label>
        <input type="text" name="email" placeholder="Email" id="email" required>    
       
        <center><input type="submit" name="proses" value="Submit Data" 
                onClick="return confirm('Apakah Anda Yakin Akan Menyimpan Data Ini?')" 
                onMouseOver="ValidasiEmail()"></center>
    </form></div>
    
<script>
function ValidasiEmail() {
        var emailID=document.formInput.email;
	var rs = document.forms["formInput"]["email"].value;
        var atps=rs.indexOf("@");
	var dots=rs.lastIndexOf(".");
	if (atps<1 || dots<atps+2 || dots+2>=rs.length) {
		swal("Data Gagal di Submit!", "Alamat Email Tidak Valid!", "error");
                emailID.value="";
		emailID.focus();
		return false;   } else {return true;}
}
</script>
        <div class="footer"><p> &copy; 2020 ANNISA NURUL PRATIWI - 20180810058 </p></div>      
  </body>
</html>

