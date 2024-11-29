- Mở Microsoft SQL Server: chạy file QLSTORE.sql

- mở project bằng Visual Studio và chạy project

*tài khoản đăng nhập: (Có hash password trước khi lưu vào cơ sở dữ liệu)
superadmin - 123456
admin - 123456
customer1 - 123456

Thay đổi chuỗi kết nối database ở file ConstValue.cs, không lấy Trust Server Certificate=True

Truy cập Admin: https://localhost:44300/Manager
Tài khoản admin quyền cao nhất (Quyền CRUD tài khoản khác) có Authority là 2
Tài khoản admin thường (Không có quyền CRUD tài khoản khác) có Authority là 1
Tài khoản khách hàng có Authority là 0