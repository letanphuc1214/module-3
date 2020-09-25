package model;

import java.util.ArrayList;

public class CustomerManage {
    public static ArrayList<Customer> listCustomer = new ArrayList<>();

    static {
        Customer customer = new Customer("Lê Tấn Thor", "1983-08-20", "Pháp", "thor.jpg");
        Customer customer1 = new Customer("Lê Quang hulk", "1983-08-21", "Anh", "hulk.jpg");
        Customer customer2 = new Customer("Đỗ Chánh Captain", "1983-08-22", "Đức", "captain.jpg");
        Customer customer3 = new Customer("Võ Doctor Strange", "1983-08-23", "Ý", "doctorstrange.jpg");
        Customer customer4 = new Customer("Nguyễn Văn Iron Man", "1983-08-24", "Hà Lan", "ironman.jpg");


        listCustomer.add(customer);
        listCustomer.add(customer1);
        listCustomer.add(customer2);
        listCustomer.add(customer3);
        listCustomer.add(customer4);
    }
}
