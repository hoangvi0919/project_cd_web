package nlu.web.project.model;

public class HeDieuHanh {
    private int ID;
    private String TenHDH;
    private String Loai;

    public HeDieuHanh(int ID, String tenHDH, String loai) {
        this.ID = ID;
        TenHDH = tenHDH;
        Loai = loai;
    }
    public HeDieuHanh(String tenHDH, String loai) {

        TenHDH = tenHDH;
        Loai = loai;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTenHDH() {
        return TenHDH;
    }

    public void setTenHDH(String tenHDH) {
        TenHDH = tenHDH;
    }

    public String getLoai() {
        return Loai;
    }

    public void setLoai(String loai) {
        Loai = loai;
    }
}
