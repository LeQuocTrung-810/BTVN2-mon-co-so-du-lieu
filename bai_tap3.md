# **Bài tập 3**
# **1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.**
# Chỉnh sửa bảng DKMH với các trường như ảnh:
![image](https://github.com/user-attachments/assets/ba5e5c3f-f7ab-401c-8068-cbcda30b79d1)
# Thêm CK cho bảng 
![image](https://github.com/user-attachments/assets/0891d3e0-ebf6-4fef-9c8d-caa795515712)
# Thêm bảng Diem vào cơ sở dữ liệu QLSV
![image](https://github.com/user-attachments/assets/8721a630-3976-494d-adb1-f44738f05386)
# Thêm khóa ngoại cho bảng Diem kết nối với bảng DKMH
![image](https://github.com/user-attachments/assets/54e2a842-0cd4-491b-bd54-c1a8fca54323)
# Thêm CK cho bảng Diem
![image](https://github.com/user-attachments/assets/a622e676-ebde-4773-a147-62ebcdf08b01)

# **2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)**
# Nhập dữ liệu Demo bảng SinhVien
![image](https://github.com/user-attachments/assets/5de9276e-cd21-4daf-b2f1-0e13592bc64f)
# Dữ liệu Demo bảng Lop: đặt unique cho tenlop để tránh sự trùng lặp  
![image](https://github.com/user-attachments/assets/2419ff0f-51d6-4710-ab37-12c3a4683166)
# Thông báo khi có mã lớp bị trùng lặp
![image](https://github.com/user-attachments/assets/ee8adab3-fa09-4ff1-a2de-a724ff839b4b)
![image](https://github.com/user-attachments/assets/5bec9323-ca38-4b6d-aeef-acd972d26b87)
# Dữ liệu Demo bảng GVCN
![image](https://github.com/user-attachments/assets/35c800bb-450e-4a4b-b3e5-ce2738125243)
# Dữ liệu Demo bảng LopSV
![image](https://github.com/user-attachments/assets/52a851a2-99b4-4da4-9dad-97575da843d6)
# Dữ liệu Demo BoMon
![image](https://github.com/user-attachments/assets/98412806-5c21-4ba5-9e42-17895e7be3a7)
# Dữ liệu Demo Khoa
![image](https://github.com/user-attachments/assets/1cfe7d6d-aafe-4660-ac6c-6ee2fad97eaa)
# Dữ liệu Demo MonHoc
![image](https://github.com/user-attachments/assets/f49d509e-234f-4766-a221-91ce971c357e)
# Dữ liệu Demo LopHp
![image](https://github.com/user-attachments/assets/9f89b235-01de-4b6c-a807-0aee059595da)
# Dữ liệu Demo DKMH
![image](https://github.com/user-attachments/assets/b0f99ba5-9c28-4377-b9c5-4e8d7a85b28e)
# Dữ liệu Demo Diem
![image](https://github.com/user-attachments/assets/5ead4f9d-dcf1-4800-8bd1-0621aa5a92a1)
# **3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.**
# Sử dụng code sau để ra kêt quả như bảng
use QLSV
go
SELECT
    DKMH.maSV,
    SinhVien.hoten,
    LopHP.maLopHP,
    MonHoc.Tenmon,
    DKMH.DiemThi,
    DKMH.PhanTramThi,
    Diem.diem AS DiemThanhPhan
FROM 
    DKMH
    JOIN Diem ON DKMH.id_dk = Diem.id_dk
    JOIN SinhVien ON DKMH.maSV = SinhVien.maSV
    JOIN LopHP ON DKMH.maLopHP = LopHP.maLopHP
    JOIN MonHoc ON LopHP.maMon = MonHoc.mamon
WHERE 
    DKMH.maSV = '01'
![image](https://github.com/user-attachments/assets/807130d1-1d65-4e1a-9efd-c565e94ed1fa)
# Diagram 
![image](https://github.com/user-attachments/assets/ee383e9f-1708-4c6c-9f24-8cf7539d67b3)
![image](https://github.com/user-attachments/assets/64e1f1b2-450f-4bd3-9f04-81a7f0208213)

### THE END
