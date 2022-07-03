package nlu.web.project.model;

import java.sql.Date;

public class Gia {
    private String MaSP;
    private int STT;
    private int Gia;
    private Date NgayApDung;
    private Date NgayKetThuc;

    public Gia() {
    }

    public Gia(String maSP, int STT, int gia, Date ngayApDung, Date ngayKetThuc) {
        MaSP = maSP;
        this.STT = STT;
        Gia = gia;
        NgayApDung = ngayApDung;
        NgayKetThuc = ngayKetThuc;
    }

    @Override
    public String toString() {
        return "Gia{" +
                "MaSP='" + MaSP + '\'' +
                ", STT=" + STT +
                ", Gia=" + Gia +
                ", NgayApDung=" + NgayApDung +
                ", NgayKetThuc=" + NgayKetThuc +
                '}';
    }

    public String getMaSP() {
        return MaSP;
    }

    public void setMaSP(String maSP) {
        MaSP = maSP;
    }

    public int getSTT() {
        return STT;
    }

    public void setSTT(int STT) {
        this.STT = STT;
    }

    public int getGia() {
        return Gia;
    }

    public void setGia(int gia) {
        Gia = gia;
    }

    public Date getNgayApDung() {
        return NgayApDung;
    }

    public void setNgayApDung(Date ngayApDung) {
        NgayApDung = ngayApDung;
    }

    public Date getNgayKetThuc() {
        return NgayKetThuc;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        NgayKetThuc = ngayKetThuc;
    }
}
