# FINO AI Design Studio — MVP

Website chỉnh sửa hình ảnh từng lớp bằng Next.js + Fabric.js, lưu dự án và hình mẫu bằng Supabase.

## Triển khai hoàn toàn online (không localhost)
1. Tạo repository GitHub mới `fino-ai-design-studio`.
2. Tải ZIP này, giải nén, upload **nội dung bên trong thư mục** vào repository qua GitHub > Add file > Upload files > Commit changes.
3. Vào https://vercel.com/new > Import Git Repository > chọn repository > Deploy. Framework Next.js sẽ được nhận diện tự động.
4. Mở địa chỉ `https://<ten-du-an>.vercel.app` do Vercel cấp. Bạn đã có editor hoạt động, chưa cần Supabase.
5. Tạo project trên https://supabase.com/dashboard; mở SQL Editor, chạy toàn bộ `supabase/schema.sql`.
6. Trong Supabase > Project Settings / Connect, lấy Project URL và publishable key.
7. Vercel > Project > Settings > Environment Variables: thêm `NEXT_PUBLIC_SUPABASE_URL` và `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY`. Redeploy trong Deployments.
8. Trong Supabase > Authentication > URL Configuration, đặt Site URL là URL Vercel của bạn; bật Email provider. Đăng ký tài khoản trên website, xác nhận email nếu được yêu cầu.

## Lưu ý
- Bản đầu tiên chưa tích hợp API AI sinh ảnh; tập trung vào trình chỉnh sửa chạy được.
- Có thể chỉnh sửa từng lớp được tạo trong editor. Ảnh JPG/PNG nhập vào là một lớp ảnh phẳng, không tự tách chữ.
- Hình mẫu được lưu dạng data URL trong database, giới hạn 2MB/tấm. Bản sau chuyển sang Supabase Storage để tối ưu.
- File JSON dự án chứa dữ liệu hình ảnh; giữ riêng tư.
- Chưa có lịch sử Undo/Redo và chưa có cơ chế chia sẻ cộng tác.
- Không đưa service role key hoặc secret API key vào biến NEXT_PUBLIC_.
