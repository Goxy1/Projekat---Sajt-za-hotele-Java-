/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package baza;
import java.sql.*;
public class dbconnection {
    public static void main(String[] args)
    {
        try
        {
            String dbUrl = "jdbc:mysql://localhost:3306/hotel";
            String user = "root";
            String pass = "";
           
            Connection veza = DriverManager.getConnection(dbUrl,user,pass);
            System.out.println("Uspostavljena je konekcija izmedju baze i driver manager-a");
        }
        catch(SQLException sqle)
        {
            System.out.println("Exception: "+sqle);
        }
    }
}
