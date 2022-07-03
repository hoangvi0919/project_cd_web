package nlu.web.project.model;

import java.sql.Date;

public class DonHang {
    private  int iD;
    private String username;
    private String diaChi;
    private String moTa;
    private int triGia;
    private  String thanhToan;
    private String trangThai;
    private Date ngayTao;
    private Date ngayGiao;

    public DonHang(int iD, String username, String diaChi, String moTa, int triGia, String thanhToan, String trangThai, Date ngayTao, Date ngayGiao) {
        this.iD = iD;
        this.username = username;
        this.diaChi = diaChi;
        this.moTa = moTa;
        this.triGia = triGia;
        this.thanhToan = thanhToan;
        this.trangThai = trangThai;
        this.ngayTao = ngayTao;
        this.ngayGiao = ngayGiao;
    }

    public DonHang(int id, String un, String dc, String tt, int tg, String trthai, Date ngaytao, Date ngaygiao) {
        this.iD= id;
        this.username= un;
        this.diaChi= dc;
        this.thanhToan= tt;
        this.triGia= tg;
        this. trangThai= trthai;
        this.ngayTao= ngaytao;
        this.ngayGiao= ngaygiao;
    }

    @Override
    public String toString() {
        return "DonHang{" +
                "iD=" + iD +
                ", username='" + username + '\'' +
                ", diaChi='" + diaChi + '\'' +
                ", moTa='" + moTa + '\'' +
                ", triGia=" + triGia +
                ", thanhToan='" + thanhToan + '\'' +
                ", trangThai='" + trangThai + '\'' +
                ", ngayTao=" + ngayTao +
                ", ngayGiao=" + ngayGiao +
                '}';
    }

    public int getiD() {
        return iD;
    }

    public void setiD(int iD) {
        this.iD = iD;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public int getTriGia() {
        return triGia;
    }

    public void setTriGia(int triGia) {
        this.triGia = triGia;
    }

    public String getThanhToan() {
        return thanhToan;
    }

    public void setThanhToan(String thanhToan) {
        this.thanhToan = thanhToan;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public Date getNgayGiao() {
        return ngayGiao;
    }

    public void setNgayGiao(Date ngayGiao) {
        this.ngayGiao = ngayGiao;
    }
}
