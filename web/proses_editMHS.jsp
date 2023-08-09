<html><head>
    <title>DAFTAR BEASISWA</title>
    <script src="css/sweetalert.min.js"></script>
</head> <body>
    

<%@page import="aksi.user"%>
<jsp:useBean id="mhs" class="aksi.FMhs"></jsp:useBean>
<jsp:setProperty property="*" name="mhs"/>
    <%
        int i=user.update(mhs);  
if(i>0){ %>
    <script>swal("Success!", "Data Berhasil di Update!", "success");</script> 
<%
}else{ %>

<script>swal("Sorry!", "Data Gagal di Update!", "error");</script> 
   
   <% } %>
<jsp:include page="HDataMHS.jsp"></jsp:include>
</body></html> 
   