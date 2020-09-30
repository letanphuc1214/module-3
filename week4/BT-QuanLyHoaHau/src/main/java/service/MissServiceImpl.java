package service;

import model.MissManager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MissServiceImpl implements MissService{
    private static Map<Integer, MissManager> listMiss;
    public static boolean created = false;
    static {
        listMiss = new HashMap<>();
        listMiss.put(1, new MissManager(1, " Nguyễn Thị Thanh Khoa", "01/01/2000", "Quận 1", "0364415420", "khoa@gmail.com", 191890800, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m75", "46kg", "Hát", "https://vcdn1-ione.vnecdn.net/2019/12/19/ThanhKhoa26-1576725609-9363-1576725739.jpg?w=900&h=540&q=100&dpr=1&fit=crop&s=mOIrmiAzbbF-_2DH0JANBA", "Hà Nội"));
        listMiss.put(2, new MissManager(2, "Trần Đình Thạch Thảo", "02/01/2000", "Quận 5", "0364415421", "thao@gmail.com", 191890801, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m74", "45kg", "Nhảy", "https://photo-1-baomoi.zadn.vn/w1000_r1/2018_11_26_338_28740247/e2360ee65ea7b7f9eeb6.jpg", "Huế"));
        listMiss.put(3, new MissManager(3, "Nguyễn Thị Thu Hiền", "03/01/2000", "Quận 7", "0364415422", "hien@gmail.com", 191890802, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m77", "42kg", "Nhảy", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2668_qkey.jpg", "Cà Mau"));
        listMiss.put(4, new MissManager(4,"Lâm Thị Bích Tuyền", "04/01/2000", "Quận 2", "0364415423", "tuyen@gmail.com", 191890803, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m80", "45kg", "Đàn", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2594_tbmo.jpg", "Đà Nẵng" ));
        listMiss.put(5, new MissManager(5, "Tô Mai Thuỳ Dương", "05/01/2000", "Quận 3", "0364415424", "duong@gmail.com", 191890804, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m75", "44kg", "Vẽ", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2600_ffku.jpg", "Sài Gòn"));
        listMiss.put(6, new MissManager(6, "Nguyễn Hà Kiều Loan", "06/01/2000", "Cầu Giấy", "0364415425", "loan@gmail.com", 191890805, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m73", "47kg", "Vẽ", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2672_cogv.jpg", "Bình Định"));
        listMiss.put(7, new MissManager(7, "Lê Thị Thu", "07/01/2000", "12, Nguyễn Sinh Cung", "0364415426", "thu@gmail.com", 191890806, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m70", "43kg", "Hát", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2605_nafr.jpg", "Quảng Bình"));
        listMiss.put(8, new MissManager(8, "Lê Trinh Trinh", "08/01/2000", "12, Nguyễn Sinh Cung", "0364415427", "trinh@gmail.com", 191890807, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m79", "46kg", "Hát", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2619_mguf.jpg", "Hà Nội"));
        listMiss.put(9, new MissManager(9, "Dương Thị Ngọc Thoa", "09/01/2000", "14, Lê Lợi", "0364415428", "thoa@gmail.com", 191890808, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m77", "45kg", "Nhảy", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2689_befd.jpg", "Sài Gòn"));
        listMiss.put(10, new MissManager(10, "Hoàng Hải Thu", "10/01/2000", "12, Hùng Vương", "0364415429", "thu@gmail.com", 191890809, "Sinh viên", "Đại Học", "Kinh", "Đại học RMIT Nam Sài Gòn", "1m76", "44kg", "Hát", "https://image2.tienphong.vn/w665/Uploaded/2020/dbyxqdrsxr/2019_06_22/mile2649_ubga.jpg", "Cần Thơ"));

    }

    @Override
    public List<MissManager> findAll() {
        return new ArrayList<>(listMiss.values());
    }

    @Override
    public void save(MissManager missManager) {
        listMiss.put(missManager.getId(), missManager);
    }

    @Override
    public MissManager findById(int id) {
        return listMiss.get(id);
    }

    @Override
    public void update(int id, MissManager missManager) {
        listMiss.put(id, missManager);
    }

    @Override
    public void remove(int id) {
        listMiss.remove(id);
    }

}
