package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    private static Map<Integer, Product> listProduct;
    static {
        listProduct = new HashMap<>();
        listProduct.put(1, new Product(1, "Bumblebee", 750000, "mo hinh transformer cao cap", "legendary Toy"));
        listProduct.put(2, new Product(2, "Optimus", 1200000, "mo hinh transformer cao cap", "legendary Toy"));
        listProduct.put(3, new Product(3, "Ironhide", 1000000, "mo hinh transformer cao cap", "BMB"));
        listProduct.put(4, new Product(4,"Jazz", 750000, "mo hinh transformer cao cap", "BMB"));
        listProduct.put(5, new Product(5, "Megatron", 1500000, "mo hinh transformer cao cap", "BMB"));
        listProduct.put(6, new Product(6, "Soundwave", 2690000, "mo hinh transformer cao cap", "NEW AGE"));

    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(listProduct.values());
    }

    @Override
    public void save(Product product) {
        listProduct.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return listProduct.get(id);
    }

    @Override
    public void update(int id, Product product) {
        listProduct.put(id, product);
    }

    @Override
    public void remove(int id) {
        listProduct.remove(id);
    }
}
