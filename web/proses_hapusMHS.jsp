<html><head>
    <title>DAFTAR BEASISWA</title>
    <script src="css/sweetalert.min.js"></script>
</head><body>
    
<%@page import="aksi.user"%>
<jsp:useBean id="mhs" class="aksi.FMhs"></jsp:useBean>
<jsp:setProperty property="*" name="mhs"/>

<%
int i=user.delete(mhs);
if(i>0){ %>
     <script>swal("Success!", "Data Berhasil di Hapus!", "success");</script> 
    <jsp:include page="HDataMHS.jsp"></jsp:include>
<%
}else{ %>

    <script>swal("Data Gagal di Hapus!", "Data Sedang di Gunakan!", "error");</script>    
   <jsp:include page="HDataMHS.jsp"></jsp:include>
   <% } %>
   </body> </html>  
