import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;



@WebServlet("/stuManage")
public class StuServlet extends HttpServlet {

    StudentDB sdb = new StudentDB();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String op = req.getParameter("op");

            if (op == null) {
                op = "";
            }
            switch (op) {
                case "insert":
                    insertStuInfo(req, resp);
                    break;
                case "delete":
                    deleteStuInfo(req, resp);
                    break;
                case "update":
                    updateStuInfo(req, resp);
                    break;
                default:
                    getAllStuInfo(req, resp);
                    break;
            }
        } catch (Exception e) {
            System.out.println(e);

        }
    }




    private void insertStuInfo(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String age = req.getParameter("age");
        String sex = req.getParameter("sex");
        String major = req.getParameter("major");
        String sclass = req.getParameter("sclass");
        String snative = req.getParameter("snative");

        String sql = "insert into t_student(id,name,age,sex,major,sclass,snative) values(" + id + ",'" + name + "'," + age + ",'" + sex + "','" + major + "','" + sclass + "','" + snative + "')";

        if (sdb.studentUpdate(sql)) {

            resp.sendRedirect("stuManage");
        } else {
            req.getRequestDispatcher("student.jsp").forward(req, resp);
        }
    }

    private void deleteStuInfo(HttpServletRequest req, HttpServletResponse resp) throws IOException, SQLException {
        String id = req.getParameter("id");
        String sql = "delete from t_student where id = " + id;
        PrintWriter out = resp.getWriter();
        if (sdb.studentUpdate(sql)) {
            out.println(id + "号学生删除成功");
            req.getSession().setAttribute("delRstMsg", id + "号学生删除成功");
            resp.sendRedirect("/stuManage");
        } else {

            out.println(sql);
            out.println(id + "号学生删除失败");
        }
    }

    private void updateStuInfo(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {

        //获取表单中的数据
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String age = req.getParameter("age");
        String sex = req.getParameter("sex");
        String major = req.getParameter("major");
        String sclass = req.getParameter("sclass");
        String snative = req.getParameter("snative");
        //创建一个操作数据库的对象
        StudentDB sdb = new StudentDB();
        //组装SQL语句
        String sql = "update t_student set name='" + name + "',age=" + age + ",sex='" + sex + "',major='" + major + "',sclass='" + sclass + "',snative='" + snative + "'  where id=" + id;
        if (sdb.studentUpdate(sql)) {
            resp.sendRedirect("/stuManage");
        } else {
            req.getRequestDispatcher("stuModForm.jsp").forward(req, resp);
        }
    }

    private void getAllStuInfo(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {

        String name = req.getParameter("name");
        String sql = null;
        if (name == null) {
            sql = "select * from t_student";
        } else {
            sql = "select * from t_student where name like '%" + name + "%'";
        }
        List<Student> lst = sdb.getStudent(sql);
        req.getSession().setAttribute("stuLst", lst);
        resp.sendRedirect("student.jsp");
    }
}

