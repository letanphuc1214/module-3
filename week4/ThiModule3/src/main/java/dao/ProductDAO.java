package dao;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO{
    private String jdbcURL = "jdbc:mysql://localhost:3306/product?useEncoding=true&characterEncoding=UTF-8";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";
    public static boolean created = false;


    private static final String INSERT_PRODUCTS_SQL = "INSERT INTO products " + "  (productName, price, amount, color, description, category_IdCategory) VALUES " +
            " (?, ?, ?,?,?,?);";
    private static final String SELECT_PRODUCTS_BY_ID = "select id,productName,price,amount, color, description, category_IdCategory from products where id =?";
    private static final String SELECT_ALL_PRODUCTS = "select * from products";
    private static final String DELETE_PRODUCTRS_SQL = "delete from products where id = ?;";
    private static final String UPDATE_PRODUCTS_SQL = "update products set productName = ?,price= ?, amount =?, color =?, description =?, category_IdCategory=? where id = ?;";
    private static final String SELECT_SEARCH_PRODUCTS = "select * from product.products";

    public ProductDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }



    @Override
    public void insertProduct(Product product) throws SQLException {
        System.out.println(INSERT_PRODUCTS_SQL);
        if (!product.getProductName().equals(""));{
            try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCTS_SQL)) {
                preparedStatement.setString(1, product.getProductName());
                preparedStatement.setFloat(2, product.getPrice());
                preparedStatement.setInt(3, product.getAmount());
                preparedStatement.setString(4, product.getColor());
                preparedStatement.setString(5, product.getDescription());
                preparedStatement.setInt(6, product.getIdCategory());
                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                printSQLException(e);
            }
        }
    }

    @Override
    public Product selectProduct(int id) {
        Product product = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCTS_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String productName = rs.getString("productname");
                float price = rs.getFloat("price");
                int amount = rs.getInt("amount");
                String color = rs.getString("color");
                String desciption = rs.getString("desciption");
                int idCategory = rs.getInt("category_IdCategory");
                product = new Product(id, productName, price, amount, color, desciption, idCategory);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() {
        List<Product> products = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCTS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String productName = rs.getString("productname");
                float price = rs.getFloat("price");
                int amount = rs.getInt("amount");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int idCategory = rs.getInt("category_IdCategory");
                products.add(new Product(id, productName, price, amount, color, description, idCategory));
            }
            CategoryDAO categoryDAO = new CategoryDAO();
            for (Product product :products) {
                product.setCategories(categoryDAO.findById(product.getIdCategory()));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return products;
    }

    @Override
    public boolean deleteProduct(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_PRODUCTRS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateProduct(Product product) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_PRODUCTS_SQL);) {
            statement.setString(1, product.getProductName());
            statement.setFloat(2, product.getPrice());
            statement.setInt(3, product.getAmount());
            statement.setString(4, product.getColor());
            statement.setString(5, product.getDescription());
            statement.setInt(6, product.getIdCategory());
            statement.setInt(7, product.getId());


            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public List<Product> searchByNameProduct(String nameProduct) {
        List<Product> searchProductName = new ArrayList<>();
        String search = SELECT_SEARCH_PRODUCTS+ " where productName like " +"'%" + nameProduct + "%'";
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(search);){
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String productName = rs.getString("productname");
                float price = rs.getFloat("price");
                int amount = rs.getInt("amount");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int idCategory = rs.getInt("category_IdCategory");
                searchProductName.add(new Product(id, productName, price, amount, color, description, idCategory));
            }
            CategoryDAO categoryDAO = new CategoryDAO();
            for (Product product :searchProductName) {
                product.setCategories(categoryDAO.findById(product.getIdCategory()));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return searchProductName;
    }

    @Override
    public Product getProductById(int id) {
        Product product = null;

        String query = "{CALL get_product_by_id(?)}";

        // Step 1: Establishing a Connection

        try (Connection connection = getConnection();

             // Step 2:Create a statement using connection object

             CallableStatement callableStatement = connection.prepareCall(query);) {

            callableStatement.setInt(1, id);

            // Step 3: Execute the query or update query

            ResultSet rs = callableStatement.executeQuery();

            // Step 4: Process the ResultSet object.

            while (rs.next()) {

                String productName = rs.getString("productname");
                float price = rs.getFloat("price");
                int amount = rs.getInt("amount");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int idCategory = rs.getInt("category_IdCategory");
                product = new Product(id, productName, price, amount, color, description, idCategory);

            }

        } catch (SQLException e) {

            printSQLException(e);

        }

        return product;
    }

    @Override
    public void insertProductStore(Product product) throws SQLException {
        String query = "{CALL insert_product(?,?,?,?,?,?)}";

        // try-with-resource statement will auto close the connection.

        try (Connection connection = getConnection();

             CallableStatement callableStatement = connection.prepareCall(query);) {

            callableStatement.setString(1, product.getProductName());

            callableStatement.setFloat(2, product.getPrice());

            callableStatement.setInt(3, product.getAmount());

            callableStatement.setString(4, product.getColor());

            callableStatement.setString(5, product.getDescription());

            callableStatement.setInt(6, product.getIdCategory());



            System.out.println(callableStatement);

            callableStatement.executeUpdate();

        } catch (SQLException e) {

            printSQLException(e);

        }
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
