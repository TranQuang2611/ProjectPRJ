/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Account;
import model.Category;
import model.OrderDetail;
import model.OrderUser;
import model.Product;
import model.ProductDetail;

/**
 *
 * @author admin
 */
public class DAOproject extends DBContext {

    PreparedStatement stm;
    ResultSet rs;

    public Account login(String username, String password) {
        try {
            String sql = "select * from Account\n"
                    + "where username = ? and password = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
            }

        } catch (SQLException e) {

        }
        return null;
    }

    public Product getProductById(int id) {
        try {
            String sql = "select * from Product where id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), null, rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(7), rs.getInt(6), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> c = new ArrayList<>();
        try {
            String sql = "select * from Category";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                c.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException e) {
        }
        return c;
    }

    public ArrayList<Product> getAllProductByCidAndPage(int cid, int currentPage) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select p.id, p.categoryid, p.rankdd, p.rankdtcl, p.champion, p.skin, p.RP, p.little, p.price from Category c, Product p\n"
                    + "where c.id = p.categoryid and categoryid = ?\n"
                    + "order by p.id\n"
                    + "offset (?-1)*12 rows\n"
                    + "fetch next 12 rows only";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, cid);
            stm.setInt(2, currentPage);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), "", ""), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(7), rs.getInt(6), rs.getInt(8), rs.getInt(9), 1,"",""));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public int countProductByCategory(int cid) {
        try {
            String sql
                    = "select count(*) from Product p, Category c\n"
                    + "where p.categoryid = c.id and p.categoryid = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, cid);
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public int countProductInStockC1() {
        try {
            String sql
                    = "select count(*) from Product p, Category c\n"
                    + "where p.categoryid = c.id and p.categoryid = 1 and p.status = 1";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public int countProductInStockC2() {
        try {
            String sql
                    = "select count(*) from Product p, Category c\n"
                    + "where p.categoryid = c.id and p.categoryid = 2 and p.status = 1";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }

        return 0;
    }

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select * from Product";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public ArrayList<Product> getAllProductAndPage(int currentPage) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql
                    = "select * from Product\n"
                    + "order by id\n"
                    + "offset (?-1)*12 rows\n"
                    + "fetch next 12 rows only";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, currentPage);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public int countAllProduct() {
        try {
            String sql
                    = "select count(*) from Product";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public ArrayList<Product> getAllProductIncrease(int currentPage) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select * from Product\n"
                    + "order by price\n"
                    + "offset (?-1)*12 rows\n"
                    + "fetch next 12 rows only";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, currentPage);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public ArrayList<Product> getAllProductDecrease(int currentPage) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select * from Product\n"
                    + "order by price desc\n"
                    + "offset (?-1)*12 rows\n"
                    + "fetch next 12 rows only";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, currentPage);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public ArrayList<Product> getAllProductByCidIncreaseAndPage(int cid, int currentPage) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select p.id, p.categoryid, p.rankdd, p.rankdtcl, p.champion, p.skin, p.RP, p.little, p.price from Category c, Product p\n"
                    + "where c.id = p.categoryid and categoryid = ?\n"
                    + "order by p.price\n"
                    + "offset (?-1)*12 rows\n"
                    + "fetch next 12 rows only";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, cid);
            stm.setInt(2, currentPage);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), "", ""));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public ProductDetail getDetails(int pid) {
        ProductDetail pd = new ProductDetail();
        try {
            String sql = "select p.id, p.rankdd, p.rankdtcl, p.champion, p.RP, p.skin, p.little, p.price, p.status, pd.totalskin, pd.totallittle, pd.img1, pd.img2, pd.img3, pd.img4, pd.img5, pd.img6, pd.img7, pd.img8\n"
                    + "from Product p, ProductDetail pd\n"
                    + "where p.id = pd.productid and p.id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, pid);
            rs = stm.executeQuery();
            while (rs.next()) {
                pd.setProduct(new Product(rs.getInt(1), null, rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), 
                        rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), "", ""));
                pd.setTotalskin(rs.getString(10));
                pd.setTotallittle(rs.getString(11));
                pd.setImg1(rs.getString(12));
                pd.setImg2(rs.getString(13));
                pd.setImg3(rs.getString(14));
                pd.setImg4(rs.getString(15));
                pd.setImg5(rs.getString(16));
                pd.setImg6(rs.getString(17));
                pd.setImg7(rs.getString(18));
                pd.setImg8(rs.getString(19));
            }
        } catch (SQLException e) {
        }
        return pd;
    }

//    public ArrayList<Product> getProductByCidAndPageAndSort(int cid, String view, int currentPage) {
//        ArrayList<Product> p = new ArrayList<>();
//        try {
//            
//            String sql = "select p.* from Product p, Category c \n"
//                    + ((cid == 0) ? "" : " where c.id = ? and p.categoryid = c.id ")
//                    + ((view.equals("") ? " order by p.id " : (view.equals("increase") ? " order by p.price asc " : (view.equals("decrease") ? " order by p.price desc " : ""))))
//                    + "offset (?-1)*12 rows fetch next 12 rows only";
//            stm = connection.prepareStatement(sql);
//            stm.setInt(1, cid);
//            stm.setInt(2, currentPage);
//            rs = stm.executeQuery();
//            while (rs.next()) {
//                System.out.println(rs.getInt(1));
//                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), "", ""), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(7), rs.getInt(6), rs.getInt(8), rs.getInt(9)));
//            }
//            System.out.println(sql);
//        } catch (SQLException e) {
//            System.out.println("loi");
//        }
//        return p;
//    }
    public ArrayList<Product> getProductByCidAndPageAndSort(int cid, String view, int currentPage) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select * from Product p\n"
                    + (cid == 0 ? "" : "where p.categoryid= ?\n")
                    + (view.equals("") ? "order by p.id" : (view.equals("increase") ? "order by p.price" : "order by p.price desc"))
                    + " offset (?-1)*12 rows \n"
                    + " fetch next 12 rows only";
            stm = connection.prepareCall(sql);
            int k = 1;
            if (cid != 0) {
                stm.setInt(k, cid);
                k += 1;
            }
            stm.setInt(k, currentPage);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public ArrayList<Product> getProductSamePrice(int price) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select top(8)* from Product p\n"
                    + "where p.price = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, price);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public ArrayList<Product> cart(int id) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select * from Product p\n"
                    + "where p.id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public void register(String name, String pass) {
        try {
            String sql = "insert into Account(username, password, isSell, isAdmin, accountbalance) values\n"
                    + "(?,?,1,0,0)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, pass);
            stm.executeUpdate();
        } catch (Exception e) {

        }
    }

    public boolean getUserName(String username) {
        String name = null;
        try {
            String sql = "select username from Account where username = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();
            while (rs.next()) {
                name = rs.getString("username");
            }
            if (name == null) {
                return false;
            }
            System.out.println(name);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

    public ArrayList<Product> getProductFilter(int category, String rankdd, String rankdtcl, int championfrom, int championto, int RPfrom, int RPto,
            int skinfrom, int skinto, int littlefrom, int littleto, int pricefrom, int priceto, String sort, int currentPage) {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select distinct p.id, p.categoryid, p.rankdd, p.rankdtcl, p.champion, p.RP, p.skin, p.little, p.price, p.status from Product p, Category c\n"
                    + "where p.rankdd like ?\n"
                    + "and p.rankdtcl like ?\n"
                    + "and p.champion between ? and ?\n"
                    + "and p.rp between ? and ?\n"
                    + "and p.skin between ? and ?\n"
                    + "and p.little between ? and ?\n"
                    + "and p.price between ? and ?\n"
                    + ((category != 0) ? " and p.categoryid = c.id and p.categoryid = ?\n " : "\n")
                    + ((sort.equals("decrease")) ? "order by p.price desc offset (?-1)*12 rows fetch next 12 rows only" : "order by p.price offset (?-1)*12 rows fetch next 12 rows only");
            stm = connection.prepareStatement(sql);
            stm.setNString(1, "%" + rankdd + "%");
            stm.setNString(2, "%" + rankdtcl + "%");
            stm.setInt(3, championfrom);
            stm.setInt(4, championto == 0 ? Integer.MAX_VALUE : championto);
            stm.setInt(5, RPfrom);
            stm.setInt(6, RPto == 0 ? Integer.MAX_VALUE : RPto);
            stm.setInt(7, skinfrom);
            stm.setInt(8, skinto == 0 ? Integer.MAX_VALUE : skinto);
            stm.setInt(9, littlefrom);
            stm.setInt(10, littleto == 0 ? Integer.MAX_VALUE : littleto);
            stm.setInt(11, pricefrom);
            stm.setInt(12, priceto == 0 ? Integer.MAX_VALUE : priceto);
            if (category != 0) {
                stm.setInt(13, category);
                stm.setInt(14, currentPage);
            } else {
                stm.setInt(13, currentPage);
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), "", ""));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public int countProductFilter(int category, String rankdd, String rankdtcl, int championfrom, int championto, int RPfrom, int RPto,
            int skinfrom, int skinto, int littlefrom, int littleto, int pricefrom, int priceto) {
        try {
            String sql = "select count(*) from \n"
                    + "(\n"
                    + "select p.id from Product p, Category c\n"
                    + "where p.rankdd like ?\n"
                    + "and p.rankdtcl like ?\n"
                    + "and p.champion between ? and ?\n"
                    + "and p.rp between ? and ?\n"
                    + "and p.skin between ? and ?\n"
                    + "and p.little between ? and ?\n"
                    + "and p.price between ? and ?\n"
                    + ((category != 0) ? " and p.categoryid = c.id and p.categoryid = ?\n " : "\n")
                    + "group by p.id\n"
                    + ") as a";
            stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + rankdd + "%");
            stm.setString(2, "%" + rankdtcl + "%");
            stm.setInt(3, championfrom);
            stm.setInt(4, championto == 0 ? Integer.MAX_VALUE : championto);
            stm.setInt(5, RPfrom);
            stm.setInt(6, RPto == 0 ? Integer.MAX_VALUE : RPto);
            stm.setInt(7, skinfrom);
            stm.setInt(8, skinto == 0 ? Integer.MAX_VALUE : skinto);
            stm.setInt(9, littlefrom);
            stm.setInt(10, littleto == 0 ? Integer.MAX_VALUE : littleto);
            stm.setInt(11, pricefrom);
            stm.setInt(12, priceto == 0 ? Integer.MAX_VALUE : priceto);
            if (category != 0) {
                stm.setInt(13, category);
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return 0;
    }

    public Account info(int id) {
        Account info = new Account();
        try {
            String sql = "select * from Account\n"
                    + "where ID = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
            }
        } catch (Exception e) {

        }
        return info;
    }

    public void updateinfo(int id, String name, String email, String phone) {
        try {
            String sql = "update Account\n"
                    + "set name = ? ,email = ? ,phone= ?\n"
                    + "where ID = ?";
            stm = connection.prepareStatement(sql);
            stm.setNString(1, name);
            stm.setString(2, email);
            stm.setString(3, phone);
            stm.setInt(4, id);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void loadintowallet(int id, int cost) {
        try {
            String sql = "update Account \n"
                    + "set accountbalance = accountbalance + ?\n"
                    + "where ID = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, cost);
            stm.setInt(2, id);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void changepass(int id, String pass) {
        try {
            String sql = "update Account \n"
                    + "set password = ?\n"
                    + "where ID = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, pass);
            stm.setInt(2, id);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public int insertOrder(int id) {
        try {
            String sql = "insert into Orders values (?,GETDATE())";
            stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, id);
            stm.executeUpdate();
            rs = stm.getGeneratedKeys();
            if (rs.next()) {
                int orderid = rs.getInt(1);
                return orderid;
            }
        } catch (SQLException e) {

        }
        return 0;
    }

    public void insertOrderDetail(int orderID, int proID) {
        try {
            String sql = "insert into OrderDetail values (?,?)";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, orderID);
            stm.setInt(2, proID);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateStatus(int id) {
        try {
            String sql = "update Product set status = 0 where id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void deleteUser(int id) {
        try {
            String sql = "delete from Account\n"
                    + "where ID = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateAccountBalance(int total, int id) {
        try {
            String sql = "UPDATE Account set accountbalance = accountbalance - ? \n"
                    + "where ID = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, total);
            stm.setInt(2, id);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public int countOrder(int id) {
        try {
            String sql = "select count(*) from Account a, Orders o\n"
                    + "where a.ID = o.userid and userid = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public ArrayList<OrderDetail> historyOrder(int userid, String datefrom, String dateto, int currentPage) {
        ArrayList<OrderDetail> od = new ArrayList<>();
        try {
            String sql = "select o.id, o.orderdate, od.productid, p.price from Orders o, OrderDetail od, Product p\n"
                    + "where o.id = od.orderid and p.id = od.productid and o.userid = ?\n"
                    + ((datefrom != null && dateto != null) ? "and o.orderdate between ? and ?\n" : "")
                    + "order by o.id\n"
                    + "offset (?-1)*7 rows\n"
                    + "fetch next 7 rows only";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, userid);
            if (datefrom != null && dateto != null) {
                stm.setString(2, datefrom);
                stm.setString(3, dateto);
                stm.setInt(4, currentPage);
            } else {
                stm.setInt(2, currentPage);
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                od.add(new OrderDetail(new OrderUser(rs.getInt(1), null, rs.getString(2)), new Product(rs.getInt(3), null, "", "", 0, 0, 0, 0, rs.getInt(4), 0, "", "")));
            }
        } catch (SQLException e) {
        }
        return od;
    }

    public int countOrderByUser(int userid, String datefrom, String dateto) {
        try {
            String sql = "select count(*) from Orders o, OrderDetail od, Product p\n"
                    + "where o.id = od.orderid and p.id = od.productid and o.userid = ?\n"
                    + ((datefrom != null && dateto != null) ? "and o.orderdate between ? and ?\n" : "");
            stm = connection.prepareStatement(sql);
            stm.setInt(1, userid);
            if (datefrom != null && dateto != null) {
                stm.setString(2, datefrom);
                stm.setString(3, dateto);
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public ArrayList<Account> managerUser() {
        ArrayList<Account> a = new ArrayList<>();
        try {
            String sql = "select * from Account";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                a.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
            }
        } catch (SQLException e) {
        }
        return a;
    }

    public ArrayList<Product> managerProduct() {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select * from Product\n"
                    + "where status = 1";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), 
                rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }
    
    public ArrayList<Product> managerbuy() {
        ArrayList<Product> p = new ArrayList<>();
        try {
            String sql = "select * from Product\n"
                    + "where status = 0";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                p.add(new Product(rs.getInt(1), new Category(rs.getInt(2), null, null), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
                        rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
        } catch (SQLException e) {
        }
        return p;
    }

    public void deletePro(int id) {
        try {
            String sql = "delete from Product\n"
                    + "where id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updatePro(int id) {
        try {
            String sql = "update Product\n"
                    + "set status = 0 where id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public static void main(String[] args) {
        ArrayList<Product> p = new ArrayList<>();
        DAOproject dao = new DAOproject();
        p = dao.getProductFilter(0, "vàng", "", 0, 999999, 0, 9999999, 0, 999999999, 0, 99999999, 0, 99999999, "", 1);
        int k = dao.countProductFilter(1, "", "", 0, 9999999, 0, 9999999, 0, 99999999, 0, 99999999, 0, 99999999);
        System.out.println(p.size());
    }
}
