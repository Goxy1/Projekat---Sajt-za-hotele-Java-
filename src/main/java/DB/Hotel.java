package DB;

public class Hotel {
    private int id;
    private String HotelName;
    private String HotelLocation;
    private int rooms;
    private String typeOfRoom;
    private String typeOfRoom2;

    public Hotel() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHotelName() {
        return HotelName;
    }

    public void setHotelName(String hotelName) {
        HotelName = hotelName;
    }

    public String getHotelLocation() {
        return HotelLocation;
    }

    public void setHotelLocation(String hotelLocation) {
        HotelLocation = hotelLocation;
    }

    public int getRooms() {
        return rooms;
    }

    public void setRooms(int rooms) {
        this.rooms = rooms;
    }

    public String getTypeOfRoom() {
        return typeOfRoom;
    }

    public void setTypeOfRoom(String typeOfRoom) {
        this.typeOfRoom = typeOfRoom;
    }

    public String getTypeOfRoom2() {
        return typeOfRoom2;
    }

    public void setTypeOfRoom2(String typeOfRoom2) {
        this.typeOfRoom2 = typeOfRoom2;
    }
}
