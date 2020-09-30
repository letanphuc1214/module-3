package model;

public class MissManager {
    private int id;
    private String hoTen;
    private String ngaySinh;
    private String diaChiCuTru;
    private String soDienThoai;
    private String email;
    private int CMT;
    private String ngheNghiep;
    private String trinhDoVanHoa;
    private String danToc;
    private String donViCongTac;
    private String chieuCao;
    private String canNang;
    private String nangKhieu;
    private String anhCaNhan;
    private String tinhThanh;
    private String trangThai="No";
    public MissManager() {
    }

    public MissManager(int id, String hoTen, String ngaySinh, String diaChiCuTru, String soDienThoai, String email, int CMT, String ngheNghiep, String trinhDoVanHoa, String danToc, String donViCongTac, String chieuCao, String canNang, String nangKhieu, String anhCaNhan, String tinhThanh) {
        this.id = id;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.diaChiCuTru = diaChiCuTru;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.CMT = CMT;
        this.ngheNghiep = ngheNghiep;
        this.trinhDoVanHoa = trinhDoVanHoa;
        this.danToc = danToc;
        this.donViCongTac = donViCongTac;
        this.chieuCao = chieuCao;
        this.canNang = canNang;
        this.nangKhieu = nangKhieu;
        this.anhCaNhan = anhCaNhan;
        this.tinhThanh = tinhThanh;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChiCuTru() {
        return diaChiCuTru;
    }

    public void setDiaChiCuTru(String diaChiCuTru) {
        this.diaChiCuTru = diaChiCuTru;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCMT() {
        return CMT;
    }

    public void setCMT(int CMT) {
        this.CMT = CMT;
    }

    public String getNgheNghiep() {
        return ngheNghiep;
    }

    public void setNgheNghiep(String ngheNghiep) {
        this.ngheNghiep = ngheNghiep;
    }

    public String getTrinhDoVanHoa() {
        return trinhDoVanHoa;
    }

    public void setTrinhDoVanHoa(String trinhDoVanHoa) {
        this.trinhDoVanHoa = trinhDoVanHoa;
    }

    public String getDanToc() {
        return danToc;
    }

    public void setDanToc(String danToc) {
        this.danToc = danToc;
    }

    public String getDonViCongTac() {
        return donViCongTac;
    }

    public void setDonViCongTac(String donViCongTac) {
        this.donViCongTac = donViCongTac;
    }

    public String getChieuCao() {
        return chieuCao;
    }

    public void setChieuCao(String chieuCao) {
        this.chieuCao = chieuCao;
    }

    public String getCanNang() {
        return canNang;
    }

    public void setCanNang(String canNang) {
        this.canNang = canNang;
    }

    public String getNangKhieu() {
        return nangKhieu;
    }

    public void setNangKhieu(String nangKhieu) {
        this.nangKhieu = nangKhieu;
    }

    public String getAnhCaNhan() {
        return anhCaNhan;
    }

    public void setAnhCaNhan(String anhCaNhan) {
        this.anhCaNhan = anhCaNhan;
    }

    public String getTinhThanh() {
        return tinhThanh;
    }

    public void setTinhThanh(String tinhThanh) {
        this.tinhThanh = tinhThanh;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }
}
