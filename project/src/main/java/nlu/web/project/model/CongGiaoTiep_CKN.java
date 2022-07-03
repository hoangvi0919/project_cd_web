package nlu.web.project.model;

public class CongGiaoTiep_CKN {
    private int ID;
    private String CongGiaoTiep;
    private String KetNoiKhongDay;
    private String KheDocTheNho;
    private String ODiaQuang;
    private String BanPhimSo;
    private String Webcam;
    private String TinhNangKhac;
    private String DenBanPhim;

    public CongGiaoTiep_CKN(int ID, String congGiaoTiep, String ketNoiKhongDay, String kheDocTheNho, String ODiaQuang, String banPhimSo, String webcam, String tinhNangKhac, String denBanPhim) {
        this.ID = ID;
        CongGiaoTiep = congGiaoTiep;
        KetNoiKhongDay = ketNoiKhongDay;
        KheDocTheNho = kheDocTheNho;
        this.ODiaQuang = ODiaQuang;
        BanPhimSo = banPhimSo;
        Webcam = webcam;
        TinhNangKhac = tinhNangKhac;
        DenBanPhim = denBanPhim;
    }

    public CongGiaoTiep_CKN(String congGiaoTiep, String ketNoiKhongDay, String kheDocTheNho, String ODiaQuang, String banPhimSo, String webcam, String tinhNangKhac, String denBanPhim) {

        CongGiaoTiep = congGiaoTiep;
        KetNoiKhongDay = ketNoiKhongDay;
        KheDocTheNho = kheDocTheNho;
        this.ODiaQuang = ODiaQuang;
        BanPhimSo = banPhimSo;
        Webcam = webcam;
        TinhNangKhac = tinhNangKhac;
        DenBanPhim = denBanPhim;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCongGiaoTiep() {
        return CongGiaoTiep;
    }

    public void setCongGiaoTiep(String congGiaoTiep) {
        CongGiaoTiep = congGiaoTiep;
    }

    public String getKetNoiKhongDay() {
        return KetNoiKhongDay;
    }

    public void setKetNoiKhongDay(String ketNoiKhongDay) {
        KetNoiKhongDay = ketNoiKhongDay;
    }

    public String getKheDocTheNho() {
        return KheDocTheNho;
    }

    public void setKheDocTheNho(String kheDocTheNho) {
        KheDocTheNho = kheDocTheNho;
    }

    public String getODiaQuang() {
        return ODiaQuang;
    }

    public void setODiaQuang(String ODiaQuang) {
        this.ODiaQuang = ODiaQuang;
    }

    public String getBanPhimSo() {
        return BanPhimSo;
    }

    public void setBanPhimSo(String banPhimSo) {
        BanPhimSo = banPhimSo;
    }

    public String getWebcam() {
        return Webcam;
    }

    public void setWebcam(String webcam) {
        Webcam = webcam;
    }

    public String getTinhNangKhac() {
        return TinhNangKhac;
    }

    public void setTinhNangKhac(String tinhNangKhac) {
        TinhNangKhac = tinhNangKhac;
    }

    public String getDenBanPhim() {
        return DenBanPhim;
    }

    public void setDenBanPhim(String denBanPhim) {
        DenBanPhim = denBanPhim;
    }
}
