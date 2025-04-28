
package entity;

public class Product {
    private int productId;
    private String name;
    private String image;
    private double price;
    private String title;
    private String description;
    private String categoryID;

    public Product(int productId, String name, String image, double price, String title, String description) {
        this.productId = productId;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
    }

    public Product(int productId, String name, String image, double price, String title, String description, String categoryID) {
        this.productId = productId;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.categoryID = categoryID;
    }

    public Product(String name, String image, double price, String title, String description, String categoryID) {
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.categoryID = categoryID;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public Product() {
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", name=" + name + ", image=" + image + ", price=" + price + ", title=" + title + ", description=" + description + ", categoryID=" + categoryID + '}';
    }


    
}
