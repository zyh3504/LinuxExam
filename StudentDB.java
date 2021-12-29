
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class StudentDB {

    private static Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("驱动类加载失败。");
        }
        String url = "jdbc:mysql://127.0.0.1:3306/linux_final";
        String username = "root";
        String password = "65826582Zyh!";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }


    public List<Student> getStudent(String sql) throws SQLException {
        List<Student> lst = new ArrayList<Student>();


        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                Student stu = new Student();
                stu.setId(rs.getInt("id"));
                stu.setName(rs.getString("name"));
                stu.setAge(rs.getInt("age"));
                stu.setSex(rs.getString("sex"));
                stu.setMajor(rs.getString("major"));
                stu.setSclass(rs.getString("sclass"));
                stu.setSnative(rs.getString("snative"));
                lst.add(stu);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return lst;
    }


    public boolean studentUpdate(String sql) throws SQLException {
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            int cnt = st.executeUpdate(sql);
            return cnt > 0;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
    }

}
