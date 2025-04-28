package entity;

public class OrderCustomer {

    private int idOrder;
    private int idCustomer;
    private int idProduct;
    private String name;
    private String image;
    private double price;
    private int quanity;

    public OrderCustomer(int idCustomer, String name, String image, double price, int quanity) {
        this.idCustomer = idCustomer;
        this.name = name;
        this.image = image;
        this.price = price;
        this.quanity = quanity;
    }

    public OrderCustomer(int idCustomer, int idProduct, String name, String image, double price, int quanity) {
        this.idCustomer = idCustomer;
        this.idProduct = idProduct;
        this.name = name;
        this.image = image;
        this.price = price;
        this.quanity = quanity;
    }
    
    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuanity() {
        return quanity;
    }

    public void setQuanity(int quanity) {
        this.quanity = quanity;
    }

    @Override
    public String toString() {
        return "OrderCustomer{" + "idCustomer=" + idCustomer + ", idProduct=" + idProduct + ", name=" + name + ", image=" + image + ", price=" + price + ", quanity=" + quanity + '}';
    }

 

}
