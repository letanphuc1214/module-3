package model;

import java.util.List;

public class Province {
    private int idTinhThanh;
    private String tenTinhThanh;
    private List<MissManager> listMiss;

    public Province() {
    }

    public Province(int idTinhThanh, String tenTinhThanh) {
        this.idTinhThanh = idTinhThanh;
        this.tenTinhThanh = tenTinhThanh;
    }

    public int getIdTinhThanh() {
        return idTinhThanh;
    }

    public void setIdTinhThanh(int idTinhThanh) {
        this.idTinhThanh = idTinhThanh;
    }

    public String getTenTinhThanh() {
        return tenTinhThanh;
    }

    public void setTenTinhThanh(String tenTinhThanh) {
        this.tenTinhThanh = tenTinhThanh;
    }


}
