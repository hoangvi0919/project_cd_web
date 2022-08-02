package nlu.web.project.entity;



import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String idName;

    private String trangThai;

    private String name;

    private String moTa;

    private int slConLai;

    private int slDaBan;

    private String hangSx;

    private String thoiDiemRaMat;

    private int thoiGianBaoHanh;

    private int soLuotDanhGia;

    private int soSaoDanhGia;
    // CPU
    private String congNgheCpu;
    @NotBlank
    private String loaiCpu;
    @NotNull
    private double tocDoCpu;

    private double tocDoToiDaCpu;

    // Bo nho
    @NotNull
    private int ram;

    private String loaiRam;

    private int busRam;

    private int ramToiDa;
    @NotBlank
    @Column(name = "o_cung")
    private String ocung;

    // Kich Thuoc
    @NotNull
    private double kichThuocManHinh;
    @NotBlank
    private String doPhanGiai;

    // Do hoa, am thanh
    private String thietKeCardDoHoa;
    @NotBlank
    private String cardDoHoa;
    @NotBlank
    private String congNgheAmThanh;

    // Kich thuoc
    @NotBlank
    private String kichThuoc;
    @NotNull
    private double trongLuong;

    private String chatLieu;

    // Cong ket noi
    @NotBlank
    private String congGiaoTiep;

    private String ketNoiKhongDay;

    private String banPhimSo;

    private String webcam;

    // He dieu hanh
    @NotBlank
    private String tenHdh;
    @NotBlank
    private String loaiHdh;

    // Pin
    @NotBlank
    private String loaiPin;
    @NotBlank
    private String thongTinPin;

    // Ảnh
    private String mainImg;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private List<ProductImg> images;

    // Giá
    private int gia;

    private double giamGia;

    private int giaBan;


}
