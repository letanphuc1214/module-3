package service;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    private static Map<Integer, Customer> listCustomer;
    static {
        listCustomer = new HashMap<>();
        listCustomer.put(1, new Customer(1, "Phuc", "phuc@gmail.com", "Hue"));
        listCustomer.put(2, new Customer(2, "Tin", "tin@gmail.com", "Hue"));
        listCustomer.put(3, new Customer(3, "Nguyen", "nguyen@gmail.com", "Hue"));
        listCustomer.put(4, new Customer(4, "Long", "long@gmail.com", "Hue"));
        listCustomer.put(5, new Customer(5, "Hiep", "hiep@gmail.com", "Hue"));
        listCustomer.put(6, new Customer(6, "Huong", "huong@gmail.com", "Hue"));

    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(listCustomer.values());
    }

    @Override
    public void save(Customer customer) {
        listCustomer.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return listCustomer.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        listCustomer.put(id, customer);
    }

    @Override
    public void remove(int id) {
        listCustomer.remove(id);
    }
}
