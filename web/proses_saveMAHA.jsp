<html><head>
    <title>DAFTAR BEASISWA</title>
    <script src="css/sweetalert.min.js"></script>
</head> <body>
    
<%@page import="aksi.user"%>
<jsp:useBean id="mhs" class="aksi.FMhs"></jsp:useBean>
<jsp:setProperty property="*" name="mhs"/>

<%
int i=user.save_MHS(mhs);
if(i>0){ %>
  <script>swal("Success!", "Data Berhasil di Submit", "success");</script> 
  <jsp:include page="HPendaftaranBS.jsp"></jsp:include>
<%
}else{ %>
  <script>swal("Data Gagal di Submit!", "NIK Sudah Terdaftar!", "error");</script> 
  <jsp:include page="HInputDataMHS.jsp"></jsp:include>
   <% } %>

</body></html>  
   
   