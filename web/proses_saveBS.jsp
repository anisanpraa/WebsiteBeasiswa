<html><head>
    <title>DAFTAR BEASISWA</title>
    <script src="css/sweetalert.min.js"></script>
</head> <body>
    
<%@page import="aksi.pendaftaran"%>
<jsp:useBean id="bs" class="aksi.FBs"></jsp:useBean>
<jsp:setProperty property="*" name="bs"/>

<%
int i=pendaftaran.save(bs);
if(i>0){ %>
  <script>swal("Data Berhasil di Submit!", "Tunggu Informasi selanjutnya dari Admin via telepon!", "success");</script> 
  <jsp:include page="index.jsp"></jsp:include>
<%
}else{ %>
  <script>swal("Data Gagal di Submit!", "NIM sudah ada atau NIK belum terdaftar!", "error");</script> 
  <jsp:include page="HPendaftaranBS.jsp"></jsp:include>
   <% } %>

</body></html>  
   