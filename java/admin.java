package aksi;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class admin {
    
 public static boolean cek(flogin log){
   boolean result= false;
   String query="select * from admin where username=? and password=?";
		
		try{
			Connection con=koneksi.getKoneksi();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,log.getUsername());
			ps.setString(2,log.getPassword());
			
			ResultSet rs=ps.executeQuery();
                        result = rs.next();
                    } catch (Exception e){
                        System.out.println(e);
                        result = false;
           
        }
        return result;
    }

 public static int save(FProdi p) {
 int status = 0;
 try {
        Connection con = koneksi.getKoneksi();
        PreparedStatement ps = con.prepareStatement("INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `akreditasi`) VALUES (?,?,?);");
                ps.setString(1, p.getId());
                ps.setString(2, p.getNama());
                ps.setString(3, p.getAkred());
                           
         status = ps.executeUpdate();
    } 
 catch (Exception e) { System.out.println(e); }
    return status;
 }
  
 public static List<FProdi> getAllRecords(){
    List<FProdi> list=new ArrayList<FProdi>();
        try{
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("select * from prodi");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                FProdi pro=new FProdi();
                    pro.setId(rs.getString("id_prodi"));
                    pro.setNama(rs.getString("nama_prodi"));
                    pro.setAkred(rs.getString("akreditasi"));
                    list.add(pro);}
            }catch(Exception e){System.out.println(e);}
        return list;
}
 public static int update(FProdi pro) {
    int status = 0;
 try {
    Connection con = koneksi.getKoneksi();
    PreparedStatement ps = con.prepareStatement("UPDATE `prodi` SET `nama_prodi` = ?, `akreditasi` = ? WHERE `id_prodi` = ?");               
                ps.setString(1, pro.getNama());
                ps.setString(2, pro.getAkred());
                ps.setString(3, pro.getId());
                              
        status = ps.executeUpdate();
      } catch (Exception e)  { System.out.println(e); }
    return status;
 }
 
 public static FProdi getRecordById(String id) {
    FProdi pro= null;
 try {
    Connection con = koneksi.getKoneksi();
    PreparedStatement ps = con.prepareStatement("select * from prodi where id_prodi=?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            pro = new FProdi();
            pro.setId(rs.getString("id_prodi"));
            pro.setNama(rs.getString("nama_prodi"));
            pro.setAkred(rs.getString("akreditasi"));           
        }
    } catch (Exception e) { System.out.println(e); }
 return pro;
 }
 
 public static int delete(FProdi pro) {
 int status = 0;
 try {
    Connection con = koneksi.getKoneksi();
     PreparedStatement ps = con.prepareStatement("delete from prodi where id_prodi=?");
        ps.setString(1, pro.getId());
        status = ps.executeUpdate();
     } catch (Exception e) { System.out.println(e); }
 return status;
 } 
 
}

