package model;



import java.io.Serializable;
import java.util.ArrayList;

public class Order implements Serializable{
    private int ID;
    private User customer;
    private ArrayList<Item> list = new ArrayList<Item>();
    private int total;

    public Order(int iD, User customer, ArrayList<Item> list, int total) {
        ID = iD;
        this.customer = customer;
        this.list = list;
        this.total = total;
    }

    public Order() {
    }

    public int getID() {
        return ID;
    }

    public void setID(int iD) {
        ID = iD;
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

    public ArrayList<Item> getList() {
        return list;
    }

    public void setList(ArrayList<Item> list) {
        this.list = list;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Order{" +
                "ID=" + ID +
                ", customer=" + customer +
                ", list=" + list +
                ", total=" + total +
                '}';
    }
}
