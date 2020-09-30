package controller;

import model.MissManager;
import model.Province;
import service.MissService;
import service.MissServiceImpl;
import service.ProvinceImpl;
import service.ProvinceService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletMiss", urlPatterns = "/missManagers")
public class ServletMiss extends HttpServlet {
    private MissService missService = new MissServiceImpl();
    private ProvinceService tinhThanh = new ProvinceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                createMissManager(request, response);
                break;
            case "edit":
                updateMissManager(request, response);
                break;
            case "delete":
                deleteMissManager(request, response);
                break;

            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewMissManager(request, response);
                break;
            case "duyet":
                duyet(request, response);
                break;
            case "approve":
                listMissManagerApproved(request, response);
                break;
            default:
                listMissManager(request, response);
                break;
        }
    }
public void duyet(HttpServletRequest request, HttpServletResponse response){
        int id=Integer.parseInt(request.getParameter("id"));
        MissManager missManager=missService.findById(id);
        if(missManager.getTrangThai().equals("Yes")){
            missManager.setTrangThai("No");
        }else {
            missManager.setTrangThai("Yes");
        }
    try {
        response.sendRedirect("/missManagers");
    } catch (IOException e) {
        e.printStackTrace();
    }


}
    public void createMissManager(HttpServletRequest request, HttpServletResponse response) {
        String hoTen = request.getParameter("hoten");
        String ngaySinh = request.getParameter("ngaysinh");
        String diaChi = request.getParameter("diachi");
        String sdt = request.getParameter("sdt");
        String email = request.getParameter("email");
        int cmt = Integer.parseInt(request.getParameter("cmt"));
        String ngheNghiep = request.getParameter("nghenghiep");
        String trinhDoVanHoa = request.getParameter("trinhdo");
        String danToc = request.getParameter("dantoc");
        String donViCongTac = request.getParameter("donvicongtac");
        String chieuCao = request.getParameter("chieucao");
        String canNang = request.getParameter("cannang");
        String nangKhieu = request.getParameter("nangkhieu");
        String anhCaNhan = request.getParameter("anhcanhan");
        String daiDien = request.getParameter("tinhthanh");
        int id = (int) (Math.random() * 10000);

        MissManager missManager = new MissManager(id, hoTen, ngaySinh, diaChi, sdt, email, cmt, ngheNghiep, trinhDoVanHoa, danToc, donViCongTac, chieuCao, canNang, nangKhieu, anhCaNhan, daiDien);
        this.missService.save(missManager);
        RequestDispatcher dispatcher = request.getRequestDispatcher("miss/create.jsp");
        request.setAttribute("mesage", "New miss was registration");
        List<Province> listProvince = tinhThanh.findAll();
        request.setAttribute("listMiss", listProvince);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void updateMissManager(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String hoTen = request.getParameter("hoten");
        String ngaySinh = request.getParameter("ngaysinh");
        String diaChi = request.getParameter("diachi");
        String sdt = request.getParameter("sdt");
        String email = request.getParameter("email");
        int cmt = Integer.parseInt(request.getParameter("cmt"));
        String ngheNghiep = request.getParameter("nghenghiep");
        String trinhDoVanHoa = request.getParameter("trinhdo");
        String danToc = request.getParameter("dantoc");
        String donViCongTac = request.getParameter("donvicongtac");
        String chieuCao = request.getParameter("chieucao");
        String canNang = request.getParameter("cannang");
        String nangKhieu = request.getParameter("nangkhieu");
        String anhCaNhan = request.getParameter("anhcanhan");
        String daiDien = request.getParameter("tinhthanh");
        MissManager missManager = this.missService.findById(id);
        RequestDispatcher dispatcher;
        if (missManager == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            missManager.setHoTen(hoTen);
            missManager.setNgaySinh(ngaySinh);
            missManager.setDiaChiCuTru(diaChi);
            missManager.setSoDienThoai(sdt);
            missManager.setEmail(email);
            missManager.setCMT(cmt);
            missManager.setNgheNghiep(ngheNghiep);
            missManager.setTrinhDoVanHoa(trinhDoVanHoa);
            missManager.setDanToc(danToc);
            missManager.setDonViCongTac(donViCongTac);
            missManager.setChieuCao(chieuCao);
            missManager.setCanNang(canNang);
            missManager.setNangKhieu(nangKhieu);
            missManager.setAnhCaNhan(anhCaNhan);
            missManager.setTinhThanh(daiDien);
            this.missService.update(id, missManager);
            request.setAttribute("missManager", missManager);
            request.setAttribute("message", "Miss information was updated");
            dispatcher = request.getRequestDispatcher("miss/edit.jsp");
            List<Province> listProvince = tinhThanh.findAll();
            request.setAttribute("listMiss", listProvince);
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void deleteMissManager(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        MissManager missManager = this.missService.findById(id);
        RequestDispatcher dispatcher;
        if (missManager == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            if (missManager.getTrangThai().equals("No")) {
                this.missService.remove(id);
            }
            try {
                response.sendRedirect("/missManagers");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void viewMissManager(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        MissManager missManager = this.missService.findById(id);
        RequestDispatcher dispatcher;
        if (missManager == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("missManager", missManager);
            dispatcher = request.getRequestDispatcher("miss/view.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        MissManager missManager = this.missService.findById(id);
        RequestDispatcher dispatcher;
        if(missManager == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("missManager", missManager);
            dispatcher = request.getRequestDispatcher("miss/delete.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        MissManager missManager = this.missService.findById(id);
        RequestDispatcher dispatcher;
        if(missManager == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("missManager", missManager);
            dispatcher = request.getRequestDispatcher("miss/edit.jsp");
            List<Province> listProvince = tinhThanh.findAll();
            request.setAttribute("listMiss", listProvince);
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    public void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("miss/create.jsp");
        List<Province> listProvince = tinhThanh.findAll();
        request.setAttribute("listMiss", listProvince);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void listMissManager(HttpServletRequest request, HttpServletResponse response) {
        List<MissManager> missManagers = this.missService.findAll();
        request.setAttribute("missManagers", missManagers);

        RequestDispatcher dispatcher = request.getRequestDispatcher("miss/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void listMissManagerApproved(HttpServletRequest request, HttpServletResponse response) {
        List<MissManager> missManagers = new ArrayList<>();
        List<MissManager> missManagerList = missService.findAll();
        for (MissManager item : missManagerList){
            if (item.getTrangThai().equals("Yes")){
                missManagers.add(item);
            }
        }
        request.setAttribute("missManagers", missManagers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("miss/listApprove.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }

    }
}
