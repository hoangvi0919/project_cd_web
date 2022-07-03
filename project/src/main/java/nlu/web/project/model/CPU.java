package nlu.web.project.model;

public class CPU {
    private int  ID;
    private String CongNghe;
    private String Loai;
    private float TocDo;
    private float TocDoToiDa;

    public CPU() {
    }

    public CPU(int ID, String congNghe, String loai, float tocDo, float tocDoToiDa) {
        this.ID = ID;
        CongNghe = congNghe;
        Loai = loai;
        TocDo = tocDo;
        TocDoToiDa = tocDoToiDa;
    }

    public CPU( String congNghe, String loai, float tocDo, float tocDoToiDa) {

        CongNghe = congNghe;
        Loai = loai;
        TocDo = tocDo;
        TocDoToiDa = tocDoToiDa;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCongNghe() {
        return CongNghe;
    }

    public void setCongNghe(String congNghe) {
        CongNghe = congNghe;
    }

    public String getLoai() {
        return Loai;
    }

    public void setLoai(String loai) {
        Loai = loai;
    }

    public float getTocDo() {
        return TocDo;
    }

    public void setTocDo(float tocDo) {
        TocDo = tocDo;
    }

    public float getTocDoToiDa() {
        return TocDoToiDa;
    }

    public void setTocDoToiDa(float tocDoToiDa) {
        TocDoToiDa = tocDoToiDa;
    }

    @Override
    public String toString() {
        return "CPU{" +
                "ID='" + ID + '\'' +
                ", CongNghe='" + CongNghe + '\'' +
                ", Loai='" + Loai + '\'' +
                ", TocDo='" + TocDo + '\'' +
                ", TocDoToiDa='" + TocDoToiDa + '\'' +
                '}';
    }
}
