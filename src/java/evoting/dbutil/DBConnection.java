package evoting.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author prashoo
 */
public class DBConnection {

    private static Connection conn;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_voting_db", "root", "vishi834019");
            System.out.println("Connection opened!");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("DB Error in opening connection in DBconnection");
            e.printStackTrace();
        }
    }

    /**
     *
     * @return
     */
    public static Connection getConnection() {
        return conn;
    }

    /**
     *
     * @throws SQLException
     */
    public static void closeConnection() throws SQLException {
        try {
            conn.close();
            System.out.println("Connection closed!");
        } catch (SQLException s) {
            s.getStackTrace();
        }
    }
}
