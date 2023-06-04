package DB;

public class Reservation {

    private String ID;
    private String FirstName;
    private String Surname;
    private String DateOfBirth;
    private String Email;
    private String CheckInDate,CheckOutDate,TypeOfRoom,HotelName;

    public Reservation(String ID, String firstName, String surname, String dateOfBirth, String email, String checkInDate, String checkOutDate, String typeOfRoom, String hotelName) {
        this.ID = ID;
        FirstName = firstName;
        Surname = surname;
        DateOfBirth = dateOfBirth;
        Email = email;
        CheckInDate = checkInDate;
        CheckOutDate = checkOutDate;
        TypeOfRoom = typeOfRoom;
        HotelName = hotelName;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getSurname() {
        return Surname;
    }

    public void setSurname(String surname) {
        Surname = surname;
    }

    public String getDateOfBirth() {
        return DateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        DateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getCheckInDate() {
        return CheckInDate;
    }

    public void setCheckInDate(String checkInDate) {
        CheckInDate = checkInDate;
    }

    public String getCheckOutDate() {
        return CheckOutDate;
    }

    public void setCheckOutDate(String checkOutDate) {
        CheckOutDate = checkOutDate;
    }

    public String getTypeOfRoom() {
        return TypeOfRoom;
    }

    public void setTypeOfRoom(String typeOfRoom) {
        TypeOfRoom = typeOfRoom;
    }

    public String getHotelName() {
        return HotelName;
    }

    public void setHotelName(String hotelName) {
        HotelName = hotelName;
    }
}
