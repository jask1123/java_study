package sample1;

public class EmployeeBean {
    private String employeeNumber;
    private String employeeName;
    private String dateOfBirth;
    private int age;
    private String gender;
    private String department;

    public EmployeeBean() {
        employeeNumber = "number";
        employeeName = "name";
        dateOfBirth = "yyyy/mm/dd";
        age = 21;
        gender = "男性";
        department = "department";
    }

    public String getEmployeeNumber() {
        return employeeNumber;
    }

    public void setEmployeeNumber(String employeeNumber) {
        this.employeeNumber = employeeNumber;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
