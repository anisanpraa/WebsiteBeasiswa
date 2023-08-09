<html><head>
    <title>DAFTAR BEASISWA</title>
    <script src="css/sweetalert.min.js"></script>
</head> <body>
    
<%@page import="aksi.admin"%>
<jsp:useBean id="p" class="aksi.FProdi"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
int i=admin.save(p);
if(i>0){ %>
    <script>swal("Success!", "Data Berhasil di Simpan!", "success");</script> 
    <jsp:include page="HProdi.jsp"></jsp:include>
<%
}else{ %>

 <script>swal("Data Gagal di Simpan!", "ID Prodi sudah Terdaftar!", "error");</script> 
   <jsp:include page="HInputProdi.jsp"></jsp:include>
   <% } %>

   </body> </html>  