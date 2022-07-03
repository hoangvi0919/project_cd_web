package nlu.web.project.model;


public class ManHinh {
    private int ID;
    private float KichThuoc;
    private String DoPhanGiai;
    private String CongNghe;
    private String CamUng;

    public ManHinh() {

    }

    public ManHinh(int ID, float kichThuoc, String doPhanGiai, String congNghe, String camUng) {
        this.ID = ID;
        KichThuoc = kichThuoc;
        DoPhanGiai = doPhanGiai;
        CongNghe = congNghe;
        CamUng = camUng;
    }
    public ManHinh(float kichThuoc, String doPhanGiai, String congNghe, String camUng) {

        KichThuoc = kichThuoc;
        DoPhanGiai = doPhanGiai;
        CongNghe = congNghe;
        CamUng = camUng;
    }

    @Override
    public String toString() {
        return "ManHinh{" +
                "ID=" + ID +
                ", KichThuoc=" + KichThuoc +
                ", DoPhanGiai='" + DoPhanGiai + '\'' +
                ", CongNghe='" + CongNghe + '\'' +
                ", CamUng='" + CamUng + '\'' +
                '}';
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public float getKichThuoc() {
        return KichThuoc;
    }

    public void setKichThuoc(float kichThuoc) {
        KichThuoc = kichThuoc;
    }

    public String getDoPhanGiai() {
        return DoPhanGiai;
    }

    public void setDoPhanGiai(String doPhanGiai) {
        DoPhanGiai = doPhanGiai;
    }

    public String getCongNghe() {
        return CongNghe;
    }

    public void setCongNghe(String congNghe) {
        CongNghe = congNghe;
    }

    public String getCamUng() {
        return CamUng;
    }

    public void setCamUng(String camUng) {
        CamUng = camUng;
    }
}
