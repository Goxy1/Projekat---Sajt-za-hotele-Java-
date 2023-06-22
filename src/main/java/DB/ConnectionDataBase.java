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
            // Doing a query for getting a hotel text from database
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
            // Closing resources
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
    public String getHotelTextFromDatabaseBurjAlArabJumerirah() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {
            //
            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 2);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

    public String getHotelTextFromDatabaseEmiratesPalaceMandarinOrientaAbuDhabi() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {

            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 3);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

    public String getHotelTextFromDatabaseTitanicMardanPalaceTurkeyHotel() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {

            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 4);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

    public String getHotelTextFromDatabasePalmLasVegas() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {

            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 5);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

    public String getHotelTextFromDatabasePlazaNewYork() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {

            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 6);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

    public String getHotelTextFromDatabaseWestinExcelsiorRome() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {

            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 7);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

    public String getHotelTextFromDatabaseJadeMountain() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {

            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 8);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

    public String getHotelTextFromDatabasePalmPresidentWilson() {
        String hotelText = "";
        PreparedStatement statement = null;

        try {

            String query = "SELECT hotelText FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, 9);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                hotelText = resultSet.getString("hotelText");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

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

