<html><head>
    <title>DAFTAR BEASISWA</title>
    <script src="css/sweetalert.min.js"></script>
</head> <body>
    
<%@page import="aksi.pendaftaran"%>
<jsp:useBean id="bs" class="aksi.FBs"></jsp:useBean>
<jsp:setProperty property="*" name="bs"/>

<%
int i=pendaftaran.delete(bs);
if(i>0){ %>
     <script>swal("Success!", "Data Berhasil di Hapus!", "success");</script> 
    <jsp:include page="HDataBS.jsp"></jsp:include>
<%
}else{ %>

 <script>swal("Sorry!", "Data Gagal di Hapus!", "error");</script> 
   <jsp:include page="HDataBS.jsp"></jsp:include>
   <% } %>

</body></html> 