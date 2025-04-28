package dao;

import entity.Categories;
import entity.Customer;
import entity.OrderCustomer;
import entity.Product;
import entity.account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MyDAO extends DBContext {

    public Connection con = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    public String xSql = null;

    public MyDAO() {
        con = connection;
    }

    public void finalize() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        xSql = "select * from Products";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getAllProductByCategory(String cateID) {
        List<Product> list = new ArrayList<>();
        xSql = "select * from Products\n"
                + "where categoryID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, cateID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Categories getCategorybyId(String id) {
        xSql = "select * from Categories\n"
                + "where categoryID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Categories(rs.getInt(1),
                        rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProductByTitle(String title) {
        List<Product> list = new ArrayList<>();
        xSql = "select * from Products\n"
                + "where title = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, title);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getAllProductByASC() {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products\n"
                + "ORDER BY price ASC";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getAllProductByDESC() {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products\n"
                + "ORDER BY price DESC";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Categories> getAllCategory() {
        List<Categories> list = new ArrayList<>();
        xSql = "select * from Categories";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getLast() {
        xSql = "select top 1 * from Products\n"
                + "order by productId desc";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductById() {
        xSql = "select * from Products\n"
                + "where productId = ?";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductById(String proID) {
        xSql = "select * from Products\n"
                + "where productId = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, proID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProductBySearch(String search) {
        List<Product> list = new ArrayList<>();
        xSql = "select * from Products \n"
                + "where [name] like ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public account login(String phone, String pass) {
        xSql = "select * from login\n"
                + "where phoneNumber = ?\n"
                + "AND [password] = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, phone);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getCustomer(String phone) {
        xSql = "select * from Customers\n"
                + "where phoneNumber = ? ";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void registerlogin(String phone, String pass) {
        xSql = "INSERT INTO [Login](phoneNumber,[password],role) values(?,?,0)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, phone);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String pdid) {
        xSql = "DELETE FROM Products WHERE productId = ?;";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, pdid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void register(String first, String last, String phone, String address) {
        xSql = "INSERT INTO Customers(firstName, lastName, phoneNumber, address) VALUES (?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, first);
            ps.setString(2, last);
            ps.setString(3, phone);
            ps.setString(4, address);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public account checkPhoneExits(String phone) {
        xSql = "select * from login\n"
                + "where phoneNumber = ? ";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void updateProducts(String id, String name, String image, String price, String title, String des) {
        xSql = "UPDATE Products\n"
                + "SET [name] = ?, \n"
                + "[image] = ?, \n"
                + "price = ? , \n"
                + "title = ?, \n"
                + "[description] = ?\n"
                + "WHERE productId = ?;";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, des);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addProducts(String pcate, String name, String image, String price, String title, String des) {
        xSql = "INSERT INTO Products (name, image, price, title, description, categoryID) VALUES\n"
                + "(?, ?, ?, ?, ?, ?);";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, des);
            ps.setString(6, pcate);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<OrderCustomer> getAllProductByCart(int cid) {
        List<OrderCustomer> list = new ArrayList<>();
        xSql = "select * from OrderCustomer\n"
                + "where customerId = ?;";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderCustomer(rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addPtoCart(int customerId, int productID, String image, String name, double price, int quantity) {
        xSql = "INSERT INTO OrderCustomer (customerId, productID,[name], image, price, quantity) VALUES\n"
                + "(?,?,?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, customerId);
            ps.setInt(2, productID);
            ps.setString(3, name);
            ps.setString(4, image);
            ps.setDouble(5, price);
            ps.setInt(6, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateQuanity(int cid, String pid, int qty) {
        xSql = "UPDATE OrderCustomer\n"
                + "SET quantity = ?\n"
                + "WHERE productId = ? \n"
                + "AND customerId = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, qty);
            ps.setString(2, pid);
            ps.setInt(3, cid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deletePinCart(String pid, int cid) {
        xSql = "DELETE FROM OrderCustomer WHERE productId = ? AND customerId = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, pid);
            ps.setInt(2, cid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCart(int c) {
        xSql = "DELETE FROM OrderCustomer WHERE customerId = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, c);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public OrderCustomer getProductCart(int cid, String pid) {
        xSql = "select * from OrderCustomer\n"
                + "where customerId = ? AND productId = ?;";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, cid);
            ps.setString(2, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new OrderCustomer(rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        MyDAO dao = new MyDAO();
//        List<OrderCustomer> list = dao.getAllProductByCart(1);
//        for (OrderCustomer o : list) {
//            System.out.println(o);
//        }
        OrderCustomer o = dao.getProductCart(1, "1");
        Product p = dao.getProductById("1");
        System.out.println(o);
    }
}
