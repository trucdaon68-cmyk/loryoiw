import type { Metadata } from 'next';
import './globals.css';
export const metadata: Metadata = {title:'FINO AI Design Studio',description:'Trình chỉnh sửa hình ảnh cho ngành phân bón'};
export default function RootLayout({children}:{children:React.ReactNode}) {return <html lang="vi"><body>{children}</body></html>}
