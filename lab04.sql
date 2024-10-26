SELECT vt.mavt , vt.tenVT,  sum(pxct.soluongxuat) as totalvt
from Vattu vt
join PhieuXuatChiTiet pxct on vt.maVt = pxct.maVt
Group by vt.mavt, vt.tenVT
order by totalvt desc;

SELECT vt.mavt , vt.tenVT,  sum(pnct.soluongxuat) as totalvt
from Vattu vt
join PhieuNhapChiTiet pnct on vt.maVt = pxct.maVt
Group by vt.mavt, vt.tenVT
order by totalvt desc;

select ncc.maNcc, ncc.tenNcc, nccDiaChi, nccSDT
from nhacungcap ncc
join dondathang ddh on ncc.maNCC = ddh.maNCC
WHERE ddh.ngayDH BETWEEN '2024-02-12' AND '2024-02-22';

SELECT DISTINCT vt.maVT, vt.tenVT
FROM VatTu vt
JOIN ChiTietDonDatHang ctdh ON vt.maVT = ctdh.maVT
JOIN DonDatHang ddh ON ctdh.soDH = ddh.soDH
WHERE ddh.ngayDH BETWEEN '2024-01-11' AND '2024-02-22';
