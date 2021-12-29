
public class Student {
  private int id;
  private String name;
  private int age;
  private String sex;
  private String major;
  private String sclass;
  private String snative;

    public Student() {
    }

    public Student(int id, String name, int age, String sex, String major, String sclass, String snative) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.major = major;
        this.sclass = sclass;
        this.snative = snative;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getSclass() {
        return sclass;
    }

    public void setSclass(String sclass) {
        this.sclass = sclass;
    }

    public String getSnative() {
        return snative;
    }

    public void setSnative(String snative) {
        this.snative = snative;
    }
}
