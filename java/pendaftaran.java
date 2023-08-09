package aksi;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import aksi.FBs;
import java.util.List;
import aksi.FMhs;

public class pendaftaran {
  public static int save(FBs bs) {
      
 int status = 0;
 try {
        Connection con = koneksi.getKoneksi();
        PreparedStatement ps = con.prepareStatement("INSERT INTO `pendaftaran` (`nim_mhs`, `nik_mhs`, `kategori_bs`, `id_prodi`, `semester`, `ipk`) VALUES  (?,?,?,?,?,?)");
                ps.setString(1, bs.getNim());
                ps.setString(2, bs.getNik());
                ps.setString(3, bs.getKategori());
                ps.setString(4, bs.getProdi());
                ps.setString(5, bs.getSemester());
                ps.setString(6, bs.getIpk());
                
         status = ps.executeUpdate();
    } 
 catch (Exception e) { System.out.println(e); }
    return status;
 } 
  
  public static List<FBs> getAllRecords(){
    List<FBs> list=new ArrayList<FBs>();
        try{
            Connection con=koneksi.getKoneksi();
            String perintah = "SELECT pendaftaran.nim_mhs,mahasiswa.nik_mhs"+
            ",pendaftaran.kategori_bs,prodi.nama_prodi,pendaftaran.semester"+
            ",pendaftaran.ipk FROM (pendaftaran pendaftaran LEFT JOIN "
            + "prodi prodi ON pendaftaran.id_prodi = prodi.id_prodi)"
            +"LEFT JOIN mahasiswa mahasiswa ON pendaftaran.nik_mhs = mahasiswa.nik_mhs";
            PreparedStatement ps=con.prepareStatement(perintah);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                FBs bs=new FBs();
                    bs.setNim(rs.getString("nim_mhs"));
                    bs.setNik(rs.getString("nik_mhs"));
                    bs.setKategori(rs.getString("kategori_bs"));
                    bs.setProdi(rs.getString("nama_prodi"));
                    bs.setSemester(rs.getString("semester"));
                    bs.setIpk(rs.getString("ipk"));
                    list.add(bs);}
            }catch(Exception e){System.out.println(e);}
        return list;
}
  
 public static int delete(FBs bs) {
 int status = 0;
 try {
    Connection con = koneksi.getKoneksi();
     PreparedStatement ps = con.prepareStatement("delete from pendaftaran where nim_mhs=?");
        ps.setString(1, bs.getNim());
        status = ps.executeUpdate();
     } catch (Exception e) { System.out.println(e); }
 return status;
 } 
  

 
}
