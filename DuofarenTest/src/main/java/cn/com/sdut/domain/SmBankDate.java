package cn.com.sdut.domain;

/**
 * @author 杜
 * @create 2021-12-17-9:42
 */
public class SmBankDate {
    private String BKNO;
    private String PREVACCTDT;
    private String ACCTDT;
    private String NEXTACCTDT;
    private String ALDYTM;
    private String FSTEXPDVAL;
    private String SECEXPDVAL;
    private String TRDEXPDVAL;

    @Override
    public String toString() {
        return "SmBankDate{" +
                "BKNO='" + BKNO + '\'' +
                ", PREVACCTDT='" + PREVACCTDT + '\'' +
                ", ACCTDT='" + ACCTDT + '\'' +
                ", NEXTACCTDT='" + NEXTACCTDT + '\'' +
                ", ALDYTM='" + ALDYTM + '\'' +
                ", FSTEXPDVAL='" + FSTEXPDVAL + '\'' +
                ", SECEXPDVAL='" + SECEXPDVAL + '\'' +
                ", TRDEXPDVAL='" + TRDEXPDVAL + '\'' +
                '}';
    }

    public String getBKNO() {
        return BKNO;
    }

    public void setBKNO(String BKNO) {
        this.BKNO = BKNO;
    }

    public String getPREVACCTDT() {
        return PREVACCTDT;
    }

    public void setPREVACCTDT(String PREVACCTDT) {
        this.PREVACCTDT = PREVACCTDT;
    }

    public String getACCTDT() {
        return ACCTDT;
    }

    public void setACCTDT(String ACCTDT) {
        this.ACCTDT = ACCTDT;
    }

    public String getNEXTACCTDT() {
        return NEXTACCTDT;
    }

    public void setNEXTACCTDT(String NEXTACCTDT) {
        this.NEXTACCTDT = NEXTACCTDT;
    }

    public String getALDYTM() {
        return ALDYTM;
    }

    public void setALDYTM(String ALDYTM) {
        this.ALDYTM = ALDYTM;
    }

    public String getFSTEXPDVAL() {
        return FSTEXPDVAL;
    }

    public void setFSTEXPDVAL(String FSTEXPDVAL) {
        this.FSTEXPDVAL = FSTEXPDVAL;
    }

    public String getSECEXPDVAL() {
        return SECEXPDVAL;
    }

    public void setSECEXPDVAL(String SECEXPDVAL) {
        this.SECEXPDVAL = SECEXPDVAL;
    }

    public String getTRDEXPDVAL() {
        return TRDEXPDVAL;
    }

    public void setTRDEXPDVAL(String TRDEXPDVAL) {
        this.TRDEXPDVAL = TRDEXPDVAL;
    }
}
