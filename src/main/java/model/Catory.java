package model;

public class Catory {
    private  int cid;
    private String cname;
    public Catory(){

    }

    public Catory(int cid, String cname) {
        this.cid = cid;
        this.cname = cname;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "Catory{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                '}';
    }

    public static void main(String[] args) {
        System.out.println("s");
    }
}
