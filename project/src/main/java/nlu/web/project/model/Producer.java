package nlu.web.project.model;

import java.sql.Date;

public class Producer {
    private String id;
    private String name;
    private float vat;
    private String address;
    private  String phone;
    private String label;
    private Date beginDate;

    public Producer() {

    }



    public Producer(String id, String name, float vat, String address, String phone, String label, Date beginDate) {
        setId(id);
        setName(name);
        setVat(vat);
        setAddress(address);
        setPhone(phone);
        setLabel(label);
        setBeginDate(beginDate);
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getVat() {
        return vat;
    }

    public void setVat(float vat) {
        this.vat = vat;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    @Override
    public String toString() {
        return "Producer{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", vat=" + vat +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", label='" + label + '\'' +
                ", beginDate=" + beginDate +
                '}';
    }
}
