package aksi;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import aksi.FMhs;


public class user {
 public static int save_MHS(FMhs gt) {
 int status = 0;
 try {
        Connection con = koneksi.getKoneksi();
        PreparedStatement ps = con.prepareStatement("INSERT INTO `mahasiswa` (`nik_mhs`, `nama_mhs`, `ttlahir`, `jk`, `agama`, `nohp`, `email`) VALUES (?,?,?,?,?,?,?)");
                ps.setString(1, gt.getnik());
                ps.setString(2, gt.getnama());
                ps.setString(3, gt.getttl());
                ps.setString(4, gt.getjk());
                ps.setString(5, gt.getagama());
                ps.setString(6, gt.getnohp());
                ps.setString(7, gt.getemail());
                
         status = ps.executeUpdate();
    } 
 catch (Exception e) { System.out.println(e); }
    return status;
 }
 
 public static List<FMhs> getAllRecords(){
    List<FMhs> list=new ArrayList<FMhs>();
        try{
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("select * from mahasiswa");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                FMhs mhs=new FMhs();
                    mhs.setnik(rs.getString("nik_mhs"));
                    mhs.setnama(rs.getString("nama_mhs"));
                    mhs.setttl(rs.getString("ttlahir"));
                    mhs.setjk(rs.getString("jk"));
                    mhs.setagama(rs.getString("agama"));
                    mhs.setnohp(rs.getString("nohp"));
                    mhs.setemail(rs.getString("email"));
                    list.add(mhs);}
            }catch(Exception e){System.out.println(e);}
        return list;
}
 
 public static FMhs getRecordById(String id) {
    FMhs mhs = null;
 try {
    Connection con = koneksi.getKoneksi();    
    PreparedStatement ps = con.prepareStatement("select * from mahasiswa where nik_mhs=?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            mhs = new FMhs();
            mhs.setnik(rs.getString("nik_mhs"));
            mhs.setnama(rs.getString("nama_mhs"));
            mhs.setttl(rs.getString("ttlahir"));
            mhs.setjk(rs.getString("jk"));
            mhs.setagama(rs.getString("agama"));
            mhs.setnohp(rs.getString("nohp"));
            mhs.setemail(rs.getString("email"));
        }
    } catch (Exception e) { System.out.println(e); }
 return mhs;
 }
 
 public static int update(FMhs mhs) {
    int status = 0;
 try {
    Connection con = koneksi.getKoneksi();
    PreparedStatement ps = con.prepareStatement("UPDATE `mahasiswa` SET `nama_mhs` = ?, `ttlahir` = ?, `jk` = ?, `agama` = ?, `nohp` = ?, `email` = ? WHERE `nik_mhs` = ?");               
                
                ps.setString(1, mhs.getnama());
                ps.setString(2, mhs.getttl());
                ps.setString(3, mhs.getjk());
                ps.setString(4, mhs.getagama());
                ps.setString(5, mhs.getnohp());
                ps.setString(6, mhs.getemail());
                ps.setString(7, mhs.getnik());
                
        status = ps.executeUpdate();
      } catch (Exception e)  { System.out.println(e); }
    return status;
 }
 
 public static int delete(FMhs mhs) {
 int status = 0;
 try {
    Connection con = koneksi.getKoneksi();
     PreparedStatement ps = con.prepareStatement("delete from mahasiswa where nik_mhs=?");
        ps.setString(1, mhs.getnik());
        status = ps.executeUpdate();
     } catch (Exception e) { System.out.println(e); }
 return status;
 } 
}