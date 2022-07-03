package nlu.web.project.model;

public class KichThuoc_TrongLuong {
    private int ID;
    private String KichThuoc;
    private float TrongLuong;
    private String ChatLieu;

    public KichThuoc_TrongLuong(String kichThuoc, float trongLuong, String chatLieu) {
        KichThuoc = kichThuoc;
        TrongLuong = trongLuong;
        ChatLieu = chatLieu;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getKichThuoc() {
        return KichThuoc;
    }

    public void setKichThuoc(String kichThuoc) {
        KichThuoc = kichThuoc;
    }

    public float getTrongLuong() {
        return TrongLuong;
    }

    public void setTrongLuong(float trongLuong) {
        TrongLuong = trongLuong;
    }

    public String getChatLieu() {
        return ChatLieu;
    }

    public void setChatLieu(String chatLieu) {
        ChatLieu = chatLieu;
    }
}
