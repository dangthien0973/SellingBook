    package dao;

    import model.MyConnectDB1;
    import model.User;

    import javax.mail.*;
    import javax.mail.internet.InternetAddress;
    import javax.mail.internet.MimeMessage;
    import java.sql.*;
    import java.util.Properties;
    import java.util.Random;


    public class UserDao {
        private Connection conn = null;
        private PreparedStatement pstmt = null;
        private ResultSet rs = null;

        public UserDao() throws Exception {
            super();
            conn = MyConnectDB1.connect();
        }

        // laay thong tin nguoi dung bang id
        public  User getInformationUserbyID(int userID) throws Exception {
            try {
                ResultSet rs = new MyConnectDB1().chonDuLieu("select * from user where userID='" + userID + "'");
                while (rs.next()){
                    int idUser=rs.getInt(1);
                    String name=rs.getString(2);
                    String userName=rs.getString(3);
                    String password=rs.getString(4);
                    String email=rs.getString(5);
                    String address=rs.getString(6);
                    String role=rs.getString(7);
                    User user=new User(idUser,name,userName,password,email,address,role);
                    return user;

                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println(e.getMessage());
            }
            return  null;

        };
        // kiem tra dang nhap
        public  boolean checkLogin(String userName,String password) {
            try {
            ResultSet rs=new MyConnectDB1().chonDuLieu("select * from user where user_name='"+userName+"'");

                while (rs.next()) {
                    rs.getInt(1);
                    rs.getString(2);
                    if ((rs.getString(3).equals(userName)) && rs.getString(4).equals(password)) {
                        return true;
                    }


                }

            }
            catch (Exception e) {

            }

                return false;

        };
        // lấy thông tin username
        public   User getIfUser(String userName) {

            try {
                ResultSet rs = new MyConnectDB1().chonDuLieu("select * from user where user_name='" + userName + "'");
                while (rs.next()) {
                    int idUser = rs.getInt(1);
                    String name = rs.getString(2);
                    String userName1 = rs.getString(3);
                    String password = rs.getString(4);
                    String email = rs.getString(5);
                    String address = rs.getString(6);
                    String role = rs.getString(7);
                    User user = new User(idUser, name, userName1, password, email, address, role);
                    return user;
                }
            } catch (Exception e) {
                e.printStackTrace();

            }
            return  null;
        };
         // đăng kí tài khoản
// lay user boi user Id
         public   User getUserbyUserId(String userId) {

             try {
                 ResultSet rs = new MyConnectDB1().chonDuLieu("select * from user where userID='" + userId + "'");
                 while (rs.next()) {
                     int idUser = rs.getInt(1);
                     String name = rs.getString(2);
                     String userName1 = rs.getString(3);
                     String password = rs.getString(4);
                     String email = rs.getString(5);
                     String address = rs.getString(6);
                     String role = rs.getString(7);
                     User user = new User(idUser, name, userName1, password, email, address, role);
                     return user;
                 }
             } catch (Exception e) {
                 e.printStackTrace();

             }
             return  null;
         };

         // ad userCount
public boolean themTaiKhoan(Object obj) {
            User user = (User) obj;

            try {
                new MyConnectDB1().thucThiSQL("INSERT INTO user(userID,name,user_name,password,email,address,role) values('" + user.getUserID() + ",'" + user.getName() + "','" + user.getUser_name()+ "','" + user.getPassword()+ "','" + user.getEmail()+ "','" + user.getAddress()+ "','" + user.getRole()+ "')");
                return true;
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return false;
}
// add user
public void addAccount(int userID,String name,String user_name,String password,String email,String address,String role) {
    try {
        pstmt = conn.prepareStatement("INSERT INTO user(userID,name,user_name,password,email,address,role) VALUES (?,?,?,?,?,?,?) ");


        pstmt.setInt(1, userID);
        pstmt.setString(2, name);
        pstmt.setString(3, user_name);

        pstmt.setString(4, password);
        pstmt.setString(5, email);
        pstmt.setString(6, address);
        pstmt.setString(7, role);


        pstmt.executeUpdate();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
}

// xu ly them tai khoan
public   int countUser() {
    try {
        ResultSet rs = new MyConnectDB1().chonDuLieu("SELECT MAX(userID) FROM user");
        while (rs.next()) {
            int soluong = rs.getInt(1);
         return  soluong;
        }
    } catch (Exception e) {
        e.printStackTrace();

    }
    return  0;
};
// Xử lý Quên Mật Khẩu
public  String ramdomPassword(){
    String  pass="";
    Random rd=new Random();
    for (int i=0;i<5;i++){
        int number= rd.nextInt(9);
        pass+=number;
    }
    return  pass;
}
        // hàm đổi mật khẩu
        public boolean sendPassword(String email) {
            String pass=ramdomPassword();
            try

            {
                new MyConnectDB1().thucThiSQL("update user set password = '"+pass+"' where email='" + email + "'");
                sendMail(email,"Mật khẩu mới của bạn là :",pass);
            }
            catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return true;
        }
        // gửi mail
        public  boolean sendMail(String to, String subject, String text) {
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            Session session = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("dangthien0987@gmail.com", "0973014634");
                }
            });
            try {
                Message message = new MimeMessage(session);
                message.setHeader("Content-Type", "text/plain; charset=UTF-8");
                message.setFrom(new InternetAddress("dangthien0987@gmail.com"));
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
                message.setSubject(subject);
                message.setText(text);
                Transport.send(message);
                return true;

            } catch (MessagingException e) {
                return false;
            }
        }





    public static void main(String[] args) throws Exception {
      User us=new User(12,"thien","thien","thien","thien","thien","thien");
      UserDao userDao=new UserDao();
//        System.out.println(userDao.themTaiKhoan(us));
        userDao.addAccount(15,"ds","ds","ds","ds","ds","ds");

    }
}
