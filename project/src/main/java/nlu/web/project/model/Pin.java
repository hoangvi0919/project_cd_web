package nlu.web.project.model;

public class Pin {
    private int ID;
    private String LoaiPin;
    private String ThongTin;

    public Pin() {
    }

    public Pin(int ID, String loaiPin, String thongTin) {
        this.ID = ID;
        LoaiPin = loaiPin;
        ThongTin = thongTin;
    }

    public Pin(String loaiPin, String thongTin) {

        LoaiPin = loaiPin;
        ThongTin = thongTin;
    }
    @Override
    public String toString() {
        return "Pin{" +
                "ID=" + ID +
                ", LoaiPin='" + LoaiPin + '\'' +
                ", ThongTin='" + ThongTin + '\'' +
                '}';
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getLoaiPin() {
        return LoaiPin;
    }

    public void setLoaiPin(String loaiPin) {
        LoaiPin = loaiPin;
    }

    public String getThongTin() {
        return ThongTin;
    }

    public void setThongTin(String thongTin) {
        ThongTin = thongTin;
    }
}
