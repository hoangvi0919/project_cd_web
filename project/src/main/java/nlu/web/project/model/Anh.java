package nlu.web.project.model;

public class Anh {
    private String maAnh;
    private String maSP;
    private String loai;
    private String duongDan;

    public Anh(String maAnh, String maSP, String loai, String duongDan) {

        this.maSP = maSP;
        this.loai = loai;
        this.duongDan = duongDan;
    }
    public Anh( String duongDan) {

       this.duongDan = duongDan;
    }

    public Anh(String maAnh, String loai, String duongDan) {
        this.maAnh = maAnh;
        this.loai = loai;
        this.duongDan = duongDan;
    }

    @Override
    public String toString() {
        return "Anh{" +
                "maAnh='" + maAnh + '\'' +
                ", maSP='" + maSP + '\'' +
                ", loai='" + loai + '\'' +
                ", duongDan='" + duongDan + '\'' +
                '}';
    }

    public String getMaAnh() {
        return maAnh;
    }

    public void setMaAnh(String maAnh) {
        this.maAnh = maAnh;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public String getDuongDan() {
        return duongDan;
    }

    public void setDuongDan(String duongDan) {
        this.duongDan = duongDan;
    }
}
