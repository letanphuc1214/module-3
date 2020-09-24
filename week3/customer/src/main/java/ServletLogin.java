import entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "ServletLogin", urlPatterns = "/loginForm")
public class ServletLogin extends HttpServlet {
    public static Map<String, Customer> listCustomer = new HashMap<>();
    public void createListInformation(){
        Customer customer1 = new Customer("Le Tan Phuc", "phuc123@gmail.com", "viet nam", "phuc123456", "phuc");
        Customer customer2 = new Customer("Le Quang Hiep", "hiep123@gmail.com", "lao", "hiep123456", "hiep");
        Customer customer3 = new Customer("Duong Do Nguyen", "nguyen123@gmail.com", "campuchia", "nguyen123456", "nguyen");
        Customer customer4 = new Customer("Do Chanh Tin", "tin123@gmail.com", "thai lan", "tin123456", "tin");
        Customer customer5 = new Customer("Vo Long", "long123@gmail.com", "singapore", "long123456", "long");
        Customer customer6 = new Customer("Nguyen Van Huong", "huong123@gmail.com", "brunei", "huong123456", "huong");
        listCustomer.put(customer1.getUsername(), customer1);
        listCustomer.put(customer2.getUsername(), customer2);
        listCustomer.put(customer3.getUsername(), customer3);
        listCustomer.put(customer4.getUsername(), customer4);
        listCustomer.put(customer5.getUsername(), customer5);
        listCustomer.put(customer6.getUsername(), customer6);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        createListInformation();
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        boolean isExist = listCustomer.containsKey(user);
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        if (isExist){
            if (listCustomer.get(user).getPassword().equals(pass)){
                Customer customer =listCustomer.get(user);
                writer.println("<h1> Information </h1");
                writer.println("<h3>" + user + "</h3");
                writer.println("<h3>" + customer.getHoten() + "</h3");
                writer.println("<h3>" + customer.getEmail() + "</h3");
                writer.println("<h3>" + customer.getDiachi() + "</h3");
            }
            else {
                writer.println("<h3>Sai mat khau</h3>");
            }
        }
        else {
            writer.println("<h3>khong co tai khoan nao </h3>");
        }

        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
