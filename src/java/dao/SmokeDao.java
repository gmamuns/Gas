package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.RegistrationModel;
import model.SmokeModel;

public class SmokeDao {

    String driver = null;
    String url = null;
    String user = null;
    String password = null;
    Connection con = null;

    public SmokeDao(String driver, String url, String user, String password) {
        this.driver = driver;
        this.url = url;
        this.user = user;
        this.password = password;
    }

    private Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            System.out.println(e);
        }
        return conn;
    }

    //ok
    public int save(SmokeModel e) {
        int status = 0;
        try {
            con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO smoke (sensorID, uname, data, regdate) VALUES (?,?,?,?)");
            ps.setString(1, e.getSensorID());
            ps.setString(2, e.getUname());
            ps.setString(3, e.getData());

            //timestamp 
            java.util.Date date = new java.util.Date();
            java.sql.Timestamp timestamp = new java.sql.Timestamp(date.getTime());
            ps.setTimestamp(4, timestamp);

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    //ok
    public List<RegistrationModel> getAllAfectedAreaData() {
        List<RegistrationModel> list = new ArrayList<RegistrationModel>();

        try {
            con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from users where status=1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RegistrationModel e = new RegistrationModel();
                e.setId(rs.getInt(1));
                e.setFname(rs.getString(2));
                e.setLname(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setUname(rs.getString(5));
                e.setPass(rs.getString(6));
                e.setGeolocation(rs.getString(7));
                e.setApikey(rs.getString(8));
                e.setRegdate(rs.getTimestamp(9));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    //pending
    public Boolean editStatus(Boolean status, String apikey) {
        try {

            con = getConnection();
            PreparedStatement preparedStatement = con.prepareStatement("update users set status=?"
                    + "where apikey=?");

            preparedStatement.setBoolean(1, status);
            preparedStatement.setString(2, apikey);
            preparedStatement.executeUpdate();
            con.close();
            return true;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    //not
    public RegistrationModel getDataByAPI(String apikey) {
        con = getConnection();
        RegistrationModel e = new RegistrationModel();
        try {
            PreparedStatement preparedStatement = con.prepareStatement("select * from users where apikey=?");
            preparedStatement.setString(1, apikey);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                e.setId(rs.getInt(1));
                e.setFname(rs.getString(2));
                e.setLname(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setUname(rs.getString(5));
                e.setPass(rs.getString(6));
                e.setGeolocation(rs.getString(7));
                e.setApikey(rs.getString(8));
                e.setRegdate(rs.getTimestamp(9));

            }
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return e;
    }

    //not
    public void deleteByAPI(String apikey) {
        try {
            con = getConnection();
            PreparedStatement preparedStatement = con.prepareStatement("delete from users where apikey=?");

            preparedStatement.setString(1, apikey);
            preparedStatement.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //ok // getAllDataByUserName
    public List<SmokeModel> getAllData() {
        List<SmokeModel> list = new ArrayList<SmokeModel>();

        try {
            con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from smoke ORDER BY regdate DESC");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SmokeModel e = new SmokeModel();

                e.setSensorID(rs.getString(1));
                e.setUname(rs.getString(2));
                e.setData(rs.getString(3));
                e.setRegdate(rs.getTimestamp(4));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    //ok
    public List<SmokeModel> getAllDataByUname(String userid) {
        List<SmokeModel> list = new ArrayList<SmokeModel>();

        try {
            con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from smoke uname = '"+userid+"' ORDER BY regdate DESC");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SmokeModel e = new SmokeModel();

                e.setSensorID(rs.getString(1));
                e.setUname(rs.getString(2));
                e.setData(rs.getString(3));
                e.setRegdate(rs.getTimestamp(4));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
