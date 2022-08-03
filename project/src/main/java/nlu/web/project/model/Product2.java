package nlu.web.project.model;


import java.sql.Date;

public class Product2 {
    private String id;
    private String trangThai;
    private String ten;
    private String moTa;
    private int slConLai;
    private int slDaBan;
    private String hangSX;
    private String thoiDiemRaMat;
    private Date ngayNhap;
    private int thoiGianBaoHanh;
    private int soLuotDanhGia;
    private int soSaoDanhGia;
    private String mainImg;
    private int gia;

    private int maCPU;
    private int maBoNho;
    private int maManHinh;
    private int maDoHoa;
    private int maKichThuoc;
    private int maCongKetNoi;
    private int maHDH;
    private int maPin;


//    private String congNgheCPU;
//    private String loaiCPU;
//    private float tocDoCPU;
//    private float tocDoToiDaCPU;
//
//    private int RAMBN;
//    private String LoaiRAMBN;
//    private int TocDoBusRAMBN;
//    private String RAMToiDaBN;
//    private String OCungBN;


//    private Date NgayApDungGIA;
//    private Date NgayKetThucGIA;
//
//    private float KichThuocMH;
//    private String DoPhanGiaiMH;
//    private String CongNgheMH;
//    private String CamUngMH;
//
//    private String LoaiPin;
//    private String ThongTin;
//


    public Product2(String id, String trangThai, String ten, String moTa,
                    int slConLai, String hangSX, String thoiDiemRaMat, Date ngayNhap,
                    int thoiGianBaoHanh, String mainImg, int maCPU, int maBoNho, int maManHinh,
                    int maDoHoa, int maKichThuoc, int maCongKetNoi, int maHDH, int maPin) {
        this.id = id;
        this.trangThai = trangThai;
        this.ten = ten;
        this.moTa = moTa;
        this.slConLai = slConLai;
        this.hangSX = hangSX;
        this.thoiDiemRaMat = thoiDiemRaMat;
        this.ngayNhap = ngayNhap;
        this.thoiGianBaoHanh = thoiGianBaoHanh;
        this.mainImg = mainImg;
        this.maCPU = maCPU;
        this.maBoNho = maBoNho;
        this.maManHinh = maManHinh;
        this.maDoHoa = maDoHoa;
        this.maKichThuoc = maKichThuoc;
        this.maCongKetNoi = maCongKetNoi;
        this.maHDH = maHDH;
        this.maPin = maPin;
    }

    // them san pham
    public Product2(String id, String trangThai, String ten, String moTa, int slConLai, String hangSX, String thoiDiemRaMat, Date ngayNhap, int thoiGianBaoHanh, int gia) {
        this.id = id;
        this.trangThai = trangThai;
        this.ten = ten;
        this.moTa = moTa;
        this.slConLai = slConLai;
        this.hangSX = hangSX;
        this.thoiDiemRaMat = thoiDiemRaMat;
        this.ngayNhap = ngayNhap;
        this.thoiGianBaoHanh = thoiGianBaoHanh;
        this.gia = gia;
    }

    public Product2(String id, String ten, String hangSX, String moTa, Date ngayNhap, int thoiGianBaoHanh, String trangThai, int gia) {
        this.id = id;
        this.trangThai = trangThai;
        this.ten = ten;
        this.moTa = moTa;
        this.hangSX = hangSX;
        this.ngayNhap = ngayNhap;
        this.thoiGianBaoHanh = thoiGianBaoHanh;
        this.gia = gia;
    }

    @Override
    public String toString() {
        return "ProductChild{" +
                "id='" + id + '\'' +
                ", trangThai='" + trangThai + '\'' +
                ", ten='" + ten + '\'' +
                ", moTa='" + moTa + '\'' +
                ", slConLai=" + slConLai +
                ", slDaBan=" + slDaBan +
                ", hangSX='" + hangSX + '\'' +
                ", thoiDiemRaMat='" + thoiDiemRaMat + '\'' +
                ", ngayNhap=" + ngayNhap +
                ", thoiGianBaoHanh=" + thoiGianBaoHanh +
                ", soLuotDanhGia=" + soLuotDanhGia +
                ", soSaoDanhGia=" + soSaoDanhGia +
                ", mainImg='" + mainImg + '\'' +
                ", gia=" + gia +
                ", maCPU=" + maCPU +
                ", maBoNho=" + maBoNho +
                ", maManHinh=" + maManHinh +
                ", maDoHoa=" + maDoHoa +
                ", maKichThuoc=" + maKichThuoc +
                ", maCongKetNoi=" + maCongKetNoi +
                ", maHDH=" + maHDH +
                ", maPin=" + maPin +
                '}';
    }

    public int getMaCPU() {
        return maCPU;
    }

    public void setMaCPU(int maCPU) {
        this.maCPU = maCPU;
    }

    public int getMaBoNho() {
        return maBoNho;
    }

    public void setMaBoNho(int maBoNho) {
        this.maBoNho = maBoNho;
    }

    public int getMaManHinh() {
        return maManHinh;
    }

    public void setMaManHinh(int maManHinh) {
        this.maManHinh = maManHinh;
    }

    public int getMaDoHoa() {
        return maDoHoa;
    }

    public void setMaDoHoa(int maDoHoa) {
        this.maDoHoa = maDoHoa;
    }

    public int getMaKichThuoc() {
        return maKichThuoc;
    }

    public void setMaKichThuoc(int maKichThuoc) {
        this.maKichThuoc = maKichThuoc;
    }

    public int getMaCongKetNoi() {
        return maCongKetNoi;
    }

    public void setMaCongKetNoi(int maCongKetNoi) {
        this.maCongKetNoi = maCongKetNoi;
    }

    public int getMaHDH() {
        return maHDH;
    }

    public void setMaHDH(int maHDH) {
        this.maHDH = maHDH;
    }

    public int getMaPin() {
        return maPin;
    }

    public void setMaPin(int maPin) {
        this.maPin = maPin;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public int getSlConLai() {
        return slConLai;
    }

    public void setSlConLai(int slConLai) {
        this.slConLai = slConLai;
    }

    public int getSlDaBan() {
        return slDaBan;
    }

    public void setSlDaBan(int slDaBan) {
        this.slDaBan = slDaBan;
    }

    public String getHangSX() {
        return hangSX;
    }

    public void setHangSX(String hangSX) {
        this.hangSX = hangSX;
    }

    public String getThoiDiemRaMat() {
        return thoiDiemRaMat;
    }

    public void setThoiDiemRaMat(String thoiDiemRaMat) {
        this.thoiDiemRaMat = thoiDiemRaMat;
    }

    public Date getNgayNhap() {
        return ngayNhap;
    }

    public void setNgayNhap(Date ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    public int getThoiGianBaoHanh() {
        return thoiGianBaoHanh;
    }

    public void setThoiGianBaoHanh(int thoiGianBaoHanh) {
        this.thoiGianBaoHanh = thoiGianBaoHanh;
    }

    public int getSoLuotDanhGia() {
        return soLuotDanhGia;
    }

    public void setSoLuotDanhGia(int soLuotDanhGia) {
        this.soLuotDanhGia = soLuotDanhGia;
    }

    public int getSoSaoDanhGia() {
        return soSaoDanhGia;
    }

    public void setSoSaoDanhGia(int soSaoDanhGia) {
        this.soSaoDanhGia = soSaoDanhGia;
    }

    public String getMainImg() {
        return mainImg;
    }

    public void setMainImg(String mainImg) {
        this.mainImg = mainImg;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }
}
