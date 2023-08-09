<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="utf-8">
	<title> PENDAFTARAN BEASISWA </title>
</head>
<link href="css/desain.css" rel="stylesheet" type="text/css">

    <style>
	 .footer{
            padding: 10px;
            margin-top: 10px;
            text-align: center;
            background-color:  	#AFEEEE; }

        .img {
            padding-top: 8px;
            width:665px;
            height:350px;
            border:8px solid white; }

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
      <div>
        <h1>PENDAFTARAN BEASISWA</h1>
        <a href = "HInputDataMHS.jsp">DAFTAR BEASISWA</a>
        <a href = "Form_Login.jsp">LOGIN ADMIN</a>
        <a href = "HAbout.jsp">ABOUT</a>
      </div>
    </nav> 
  <!--gambar-->
  <img class="img" src="foto/d.jpeg"><img class="img" src="foto/c.jpeg">
 <img class="img" src="foto/book2.jpg"><img class="img" src="foto/2.jpg">
 
  <div class="footer">
    <p> &copy; 2020 ANNISA NURUL PRATIWI - 20180810058 </p>
  </div>     
    
  </body>
</html>