package nlu.web.project.model;

public class BoNho {
    private int ID;
    private int RAM;
    private String LoaiRAM;
    private int TocDoBusRAM;
    private String RAMToiDa;
    private String OCung;

    public BoNho() {
    }

    public BoNho(int ID, int RAM, String loaiRAM, int tocDoBusRAM, String RAMToiDa, String OCung) {
        this.ID = ID;
        this.RAM = RAM;
        LoaiRAM = loaiRAM;
        TocDoBusRAM = tocDoBusRAM;
        this.RAMToiDa = RAMToiDa;
        this.OCung = OCung;
    }
    public BoNho( int RAM, String loaiRAM, int tocDoBusRAM, String RAMToiDa, String OCung) {

        this.RAM = RAM;
        LoaiRAM = loaiRAM;
        TocDoBusRAM = tocDoBusRAM;
        this.RAMToiDa = RAMToiDa;
        this.OCung = OCung;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getRAM() {
        return RAM;
    }

    public void setRAM(int RAM) {
        this.RAM = RAM;
    }

    public String getLoaiRAM() {
        return LoaiRAM;
    }

    public void setLoaiRAM(String loaiRAM) {
        LoaiRAM = loaiRAM;
    }

    public int getTocDoBusRAM() {
        return TocDoBusRAM;
    }

    public void setTocDoBusRAM(int tocDoBusRAM) {
        TocDoBusRAM = tocDoBusRAM;
    }

    public String getRAMToiDa() {
        return RAMToiDa;
    }

    public void setRAMToiDa(String RAMToiDa) {
        this.RAMToiDa = RAMToiDa;
    }

    public String getOCung() {
        return OCung;
    }

    public void setOCung(String OCung) {
        this.OCung = OCung;
    }

    @Override
    public String toString() {
        return "BoNho{" +
                "ID='" + ID + '\'' +
                ", RAM='" + RAM + '\'' +
                ", LoaiRAM='" + LoaiRAM + '\'' +
                ", TocDoBusRAM='" + TocDoBusRAM + '\'' +
                ", RAMToiDa='" + RAMToiDa + '\'' +
                ", OCung='" + OCung + '\'' +
                '}';
    }
}
