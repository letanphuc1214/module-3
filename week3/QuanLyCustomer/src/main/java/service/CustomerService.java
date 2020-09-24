package service;

import model.Customer;

import java.util.HashMap;
import java.util.Map;

public class CustomerService {
    public static Map<Integer, Customer> listCustomer = new HashMap<>();
    public static boolean created = false;
    public void add(Customer customer){

        listCustomer.put(customer.getId(), customer);
    }

    public void delete (int id) {
        listCustomer.remove(id);
    }
    public Customer getById(int id){
        Customer customer=listCustomer.get(id);
        return customer;
    }
    public void edit(Customer customer){
        listCustomer.replace(customer.getId(), customer);
    }
}
