package DB;

import java.sql.*;

public class ConnectionDataBase {
    public static Connection connection;


    public static Connection connectToDataBase()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection =  DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "");
        }
        catch (SQLException e)
        {
            return null;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }

    public String getHotelTextFromDatabase() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {
            // Izvršavanje upita za dobijanje teksta iz baze
            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 1);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Zatvaranje resursa
            try {
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return hotelText;
    }
}

