package nlu.web.project.model;

public class DoHoa_AmThanh {
    private  int ID;
    private  String ThietKeCard;
   private String CNamthanh;
   private  String cartDoHoa;

    public DoHoa_AmThanh() {
    }

    public DoHoa_AmThanh(int ID, String thietKeCard, String CNamthanh, String cartDoHoa) {
        this.ID = ID;
        ThietKeCard = thietKeCard;
        this.CNamthanh = CNamthanh;
        this.cartDoHoa= cartDoHoa;
    }
    public DoHoa_AmThanh(String thietKeCard, String CNamthanh, String cartDoHoa) {

        ThietKeCard = thietKeCard;
        this.CNamthanh = CNamthanh;
        this.cartDoHoa= cartDoHoa;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getThietKeCard() {
        return ThietKeCard;
    }

    public void setThietKeCard(String thietKeCard) {
        ThietKeCard = thietKeCard;
    }

    public String getCNamthanh() {
        return CNamthanh;
    }

    public void setCNamthanh(String CNamthanh) {
        this.CNamthanh = CNamthanh;
    }

    public String getCartDoHoa() {
        return cartDoHoa;
    }

    public void setCartDoHoa(String cartDoHoa) {
        this.cartDoHoa = cartDoHoa;
    }

    @Override
    public String toString() {
        return "DoHoa_AmThanh{" +
                "ID=" + ID +
                ", ThietKeCard='" + ThietKeCard + '\'' +
                ", CNamthanh='" + CNamthanh + '\'' +
                '}';
    }
}

