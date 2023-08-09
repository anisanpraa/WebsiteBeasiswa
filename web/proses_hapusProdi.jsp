<html><head>
    <title>DAFTAR BEASISWA</title>
    <script src="css/sweetalert.min.js"></script>
</head> <body>

<%@page import="aksi.admin"%>
<jsp:useBean id="pro" class="aksi.FProdi"></jsp:useBean>
<jsp:setProperty property="*" name="pro"/>

<%
int i=admin.delete(pro);
if(i>0){ %>
    <script>swal("Success!", "Data Berhasil di Hapus!", "success");</script> 
<%
}else{ %>

    <script>swal("Data Gagal di Hapus!", "Data Sedang di Gunakan!", "error");</script> 
   
   <% } %>
<jsp:include page="HProdi.jsp"></jsp:include>
  </body> </html>  