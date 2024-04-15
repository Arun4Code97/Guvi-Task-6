package ConnectJavaAppToMySQLUsingJDBC;
// created Class -InsertData for inserting data into employee table using mySQL JDBC connector
// Importing all sql files
import java.sql.*;

public class InsertData
    {
        public static void main(String[] args)
        {
            // Adding mySQl database url ,username and Password
            String url = "jdbc:mysql://localhost:3306/employee";
            String user = "root";
            String password = "Ar3n6@!rav";
            // Keeping inside try and catch block as mySQL throws an error if anything occurs
            try {

                // 1. create a connection by passing mySQl database url ,username and Password
                Connection myConn = DriverManager.getConnection(url, user, password);

                // used myStmt object to execute mySQL statements and returns the result
                //2. Create a statement
                Statement myStmt = myConn.createStatement();

                // storing complete SQL query in string variable - sql
                //3. Execute query
                String sql = "insert into empdetails"
                        + "(empCode,empName,empAge,eSalary)" + "values" +
                        "(101,'Jenny',25,10000)," +
                        "(102,'Jacky',20,20000)," +
                        "(103,'Joe',20,40000)," +
                        "(104,'John',40,80000)," +
                        "(105,'Shameer',25,90000)";
                // using executeUpdate method to update query or insert data into the employee table
                myStmt.executeUpdate(sql);
                // To check whether the records are inserted or not.
                System.out.println("inserted data into employee table !!! ");

                //executing the query select * from empdetails and storing the returned result into obj result
                ResultSet result= myStmt.executeQuery("select * from empdetails");

                // result.next() --> true if the new current row is valid and false if there are no more rows
                while(result.next())
                {
                    // displaying all empName in employee table for verification purpose
                    System.out.print(result.getString("empname")+ "\n");
                }
                //4. Close connection
                myConn.close();

            }
            catch (SQLException e) {
                System.out.println(e.getMessage());
            }

        }
    }


