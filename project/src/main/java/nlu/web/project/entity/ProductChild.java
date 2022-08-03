package nlu.web.project.entity;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Table
public class ProductChild {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "idName")
    private String idName;
    @Column(name = "trangThai")
    private String trangThai;
    @Column(name = "name")
    private String name;
    @Column(name = "moTa")
    private String moTa;
    @Column(name = "hangSx")
    private String hangSx;
    @Column(name = "thoiDiemRaMat")
    private String thoiDiemRaMat;
    @Column(name = "gia")
    private String gia;


    public ProductChild() {
    }

    public ProductChild(Long id, String idName, String trangThai, String name, String moTa, String hangSx, String thoiDiemRaMat, String gia) {
        this.id = id;
        this.idName = idName;
        this.trangThai = trangThai;
        this.name = name;
        this.moTa = moTa;
        this.hangSx = hangSx;
        this.thoiDiemRaMat = thoiDiemRaMat;
        this.gia = gia;
    }

    public ProductChild( String idName, String trangThai, String name, String moTa, String hangSx, String gia) {
        this.idName = idName;
        this.trangThai = trangThai;
        this.name = name;
        this.moTa = moTa;
        this.hangSx = hangSx;
        this.gia = gia;
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIdName() {
        return idName;
    }

    public void setIdName(String idName) {
        this.idName = idName;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getHangSx() {
        return hangSx;
    }

    public void setHangSx(String hangSx) {
        this.hangSx = hangSx;
    }

    public String getThoiDiemRaMat() {
        return thoiDiemRaMat;
    }

    public void setThoiDiemRaMat(String thoiDiemRaMat) {
        this.thoiDiemRaMat = thoiDiemRaMat;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }
}
