package model;

public class Product {
    private int id;
    private String productName;
    private float price;
    private int amount;
    private String color;
    private String description;

    private int idCategory;
    private Category categories;

    public Category getCategories() {
        return categories;
    }

    public void setCategories(Category categories) {
        this.categories = categories;
    }

    public Product() {
    }

    public Product(int id, String productName, float price, int amount, String color, String description,  int idCategory) {
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.amount = amount;
        this.color = color;
        this.description = description;

        this.idCategory = idCategory;
    }

    public Product(String productName, float price, int amount, String color, String description, int idCategory) {
        this.productName = productName;
        this.price = price;
        this.amount = amount;
        this.color = color;
        this.description = description;

        this.idCategory = idCategory;
    }

    public Product(int id, String productName, float price, int amount, String color, String description) {
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.amount = amount;
        this.color = color;
        this.description = description;

    }

    public Product(String productName, float price, int amount, String color, String description) {
        this.productName = productName;
        this.price = price;
        this.amount = amount;
        this.color = color;
        this.description = description;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }



    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }
}
