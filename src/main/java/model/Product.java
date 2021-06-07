package model;

import java.io.Serializable;

public class Product implements Serializable {
    private int ID;
    private String name;
    private int price;
    private String catoryId;
    private String description;
    private String img;

    public Product() {
    }

    public Product(int ID, String name, int price, String catoryId, String description, String img) {
       this.ID = ID;
        this.name = name;
        this.price = price;
        this.catoryId= catoryId;
        this.description=description;
        this.img=img;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {

        ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }



    public String getCatoryId() {
        return catoryId;
    }

    public void setCatoryId(String thuocnhom) {
        this.catoryId = catoryId;
    }

    public String getDescription() {
        return description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" +
                "ID=" + ID +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", catoryId='" + catoryId + '\'' +
                ", description='" + description + '\'' +
                ", img='" + img + '\'' +
                '}';
    }

    public static void main(String[] args) {
//        Product p=new Product(1,"asd",123,"asd","asd","asd");
//        System.out.println(p);
    }
}
