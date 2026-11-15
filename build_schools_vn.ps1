# Script generate schools_vn.json with 260+ institutions
$ErrorActionPreference = "Stop"

$schools = @(
  # ==================== KHU VỰC MIỀN BẮC - ĐẠI HỌC QUỐC GIA & BÁCH KHOA ====================
  [PSCustomObject]@{
    id = "vn_001"; code = "BKA"; name = "Đại học Bách khoa Hà Nội"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Khoa học máy tính", "Kỹ thuật điều khiển & Tự động hóa", "Công nghệ thông tin Global ICT", "Kỹ thuật Cơ điện tử", "Kỹ thuật Vi mạch bán dẫn");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "24.5 - 29.4";
    admission_methods = @("Thi tốt nghiệp THPT", "Đánh giá tư duy (TSA)", "Xét tuyển tài năng"); website = "https://ts.hust.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_002"; code = "QHI"; name = "Trường ĐH Công nghệ - ĐHQGHN (UET)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Khoa học máy tính", "Kỹ thuật Robot", "Hệ thống thông tin", "Kỹ thuật Năng lượng");
    combinations = @("A00", "A01"); score_range = "26.0 - 28.9";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN", "Chứng chỉ quốc tế SAT/ACT"); website = "https://uet.vnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_003"; code = "QHT"; name = "Trường ĐH Khoa học Tự nhiên - ĐHQGHN (HUS)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Toán tin", "Khoa học Dữ liệu", "Hóa học", "Công nghệ sinh học", "Khoa học Môi trường");
    combinations = @("A00", "A01", "B00", "D07"); score_range = "20.5 - 26.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN", "Xét tuyển thẳng"); website = "https://hus.vnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_004"; code = "QHX"; name = "Trường ĐH Khoa học Xã hội và Nhân văn - ĐHQGHN (USSH)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Báo chí", "Quan hệ công chúng", "Tâm lý học", "Đông phương học", "Quốc tế học");
    combinations = @("C00", "D01", "D04", "D78"); score_range = "22.5 - 29.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN", "Chứng chỉ ngoại ngữ"); website = "https://ussh.vnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_005"; code = "QHE"; name = "Trường ĐH Kinh tế - ĐHQGHN (UEB)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kinh tế quốc tế", "Quản trị kinh doanh", "Tài chính - Ngân hàng", "Kế toán", "Kinh tế phát triển");
    combinations = @("A01", "D01", "D07", "D08"); score_range = "25.0 - 28.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN", "IELTS kết hợp"); website = "https://ueb.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_006"; code = "QHF"; name = "Trường ĐH Ngoại ngữ - ĐHQGHN (ULIS)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Sư phạm Tiếng Anh", "Ngôn ngữ Anh", "Ngôn ngữ Trung Quốc", "Ngôn ngữ Hàn Quốc", "Ngôn ngữ Nhật");
    combinations = @("D01", "D78", "D90", "D04", "D06"); score_range = "24.5 - 28.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL VNU-ULIS", "IELTS / HSK / JLPT"); website = "https://ulis.vnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_007"; code = "QHY"; name = "Trường ĐH Y Dược - ĐHQGHN (UMP)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Kỹ thuật xét nghiệm y học", "Điều dưỡng");
    combinations = @("A00", "B00"); score_range = "23.5 - 27.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN", "IELTS kết hợp điểm THPT"); website = "https://ump.vnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_008"; code = "QHL"; name = "Trường ĐH Luật - ĐHQGHN"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Luật học", "Luật kinh doanh", "Luật thương mại quốc tế");
    combinations = @("A00", "C00", "D01", "D78"); score_range = "24.0 - 27.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN", "Xét tuyển kết hợp"); website = "https://law.vnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_009"; code = "QHG"; name = "Trường ĐH Giáo dục - ĐHQGHN"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Sư phạm Toán", "Sư phạm Vật lý", "Sư phạm Hóa học", "Quản trị công nghệ giáo dục", "Tham vấn học đường");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "21.0 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN"); website = "https://education.vnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_010"; code = "VJU"; name = "Trường ĐH Việt Nhật - ĐHQGHN"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kỹ thuật máy tính", "Khoa học và Kỹ thuật máy tính", "Nông nghiệp thông minh", "Nhật Bản học");
    combinations = @("A00", "A01", "D01", "D06"); score_range = "20.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Phỏng vấn và hồ sơ năng lực", "ĐGNL HSA"); website = "https://vju.ac.vn"
  },
  [PSCustomObject]@{
    id = "vn_011"; code = "QHQ"; name = "Trường Quốc tế - ĐHQGHN (IS)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kinh doanh quốc tế", "Phân tích dữ liệu kinh doanh", "Tin học và Kỹ thuật máy tính", "Công nghệ tài chính");
    combinations = @("A01", "D01", "D07", "D08"); score_range = "21.0 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA ĐHQGHN", "IELTS kết hợp"); website = "https://isvnu.vn"
  },
  [PSCustomObject]@{
    id = "vn_012"; code = "HSB"; name = "Trường Quản trị và Kinh doanh - ĐHQGHN"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Quản trị và An ninh mạng (MASD)", "Quản trị Doanh nghiệp và Công nghệ (MET)", "Marketing và Truyền thông");
    combinations = @("A01", "D01", "D07"); score_range = "21.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Phỏng vấn EQ", "ĐGNL HSA"); website = "https://hsb.edu.vn"
  },

  # ==================== KHU VỰC MIỀN BẮC - KINH TẾ, TÀI CHÍNH, NGOẠI GIAO ====================
  [PSCustomObject]@{
    id = "vn_013"; code = "KHA"; name = "Đại học Kinh tế Quốc dân (NEU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Logistics và Quản lý chuỗi cung ứng", "Kinh doanh quốc tế", "Tài chính công nghệ (Fintech)", "Thương mại điện tử", "Marketing");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "26.5 - 28.8";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển kết hợp IELTS/SAT", "ĐGNL HSA/TSA"); website = "https://neu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_014"; code = "NTH"; name = "Trường ĐH Ngoại thương (Cơ sở Hà Nội - FTU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kinh tế đối ngoại", "Kinh doanh quốc tế", "Tài chính quốc tế", "Luật thương mại quốc tế", "Khoa học dữ liệu trong kinh tế");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "27.5 - 29.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học sinh giỏi quốc gia", "IELTS kết hợp", "ĐGNL HSA/TSA"); website = "https://ftu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_015"; code = "HTC"; name = "Học viện Tài chính (AOF)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Tài chính - Ngân hàng", "Kế toán kiểm toán", "Hải quan và Logistics", "Kinh tế số", "Hệ thống thông tin quản lý");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "24.5 - 27.2";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển học bạ THPT", "Chứng chỉ quốc tế"); website = "https://hvtc.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_016"; code = "NHH"; name = "Học viện Ngân hàng (BAV)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Tài chính", "Ngân hàng số", "Kinh doanh quốc tế", "Công nghệ tài chính", "Luật kinh tế");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "24.5 - 26.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL V-SAT", "Xét tuyển học bạ", "IELTS"); website = "https://hvnh.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_017"; code = "TMA"; name = "Trường ĐH Thương mại (TMU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Thương mại điện tử", "Logistics và Quản trị chuỗi cung ứng", "Marketing kỹ thuật số", "Quản trị kinh doanh", "Kế toán");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "25.0 - 27.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA/TSA", "Xét kết hợp chứng chỉ"); website = "https://tmu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_018"; code = "HVA"; name = "Học viện Ngoại giao (DAV)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Quan hệ quốc tế", "Kinh tế quốc tế", "Luật quốc tế", "Truyền thông quốc tế", "Kinh doanh quốc tế");
    combinations = @("A01", "C00", "D01", "D03", "D04"); score_range = "25.5 - 28.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển học bạ kết hợp IELTS", "Phỏng vấn"); website = "https://dav.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_019"; code = "HBT"; name = "Học viện Báo chí và Tuyên truyền (AJC)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Báo chí", "Truyền thông đa phương tiện", "Quan hệ công chúng", "Quảng cáo", "Xuất bản điện tử");
    combinations = @("C00", "C15", "D01", "D78"); score_range = "24.0 - 28.6";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển học bạ", "ĐGNL HSA ĐHQGHN"); website = "https://ajc.hcma.vn"
  },
  [PSCustomObject]@{
    id = "vn_020"; code = "APD"; name = "Học viện Chính sách và Phát triển"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kinh tế phát triển", "Kinh tế số", "Tài chính công nghệ", "Luật kinh tế", "Quản trị kinh doanh");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "22.0 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển học bạ", "ĐGNL HSA"); website = "https://apd.edu.vn"
  },

  # ==================== KHU VỰC MIỀN BẮC - KỸ THUẬT, CÔNG NGHỆ, XÂY DỰNG, GIAO THÔNG ====================
  [PSCustomObject]@{
    id = "vn_021"; code = "XDA"; name = "Trường ĐH Xây dựng Hà Nội (HUCE)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kỹ thuật xây dựng", "Kiến trúc", "Kỹ thuật đô thị", "Kỹ thuật cấp thoát nước", "Kỹ thuật cơ khí");
    combinations = @("A00", "A01", "B00", "V00"); score_range = "18.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL TSA ĐHBKHN", "Thi môn Vẽ mỹ thuật"); website = "https://huce.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_022"; code = "GHA"; name = "Trường ĐH Giao thông Vận tải (Cơ sở Hà Nội - UTC)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kỹ thuật ô tô", "Logistics và Vận tải đa phương thức", "Kỹ thuật điều khiển & Tự động hóa", "Kỹ thuật xây dựng công trình giao thông", "CNTT");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "21.0 - 26.2";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT", "ĐGNL TSA/HSA"); website = "https://utc.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_023"; code = "KTA"; name = "Trường ĐH Kiến trúc Hà Nội (HAU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kiến trúc", "Quy hoạch vùng và đô thị", "Thiết kế nội thất", "Thiết kế đồ họa", "Kỹ thuật xây dựng");
    combinations = @("V00", "V01", "H00", "A00"); score_range = "19.5 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT kết hợp thi năng khiếu vẽ", "Xét học bạ"); website = "https://hau.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_024"; code = "TLA"; name = "Trường ĐH Thủy lợi (TLU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật tài nguyên nước", "Kỹ thuật ô tô", "Kỹ thuật cơ điện tử", "Kinh tế");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "20.0 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT", "ĐGNL TSA/HSA"); website = "https://tlu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_025"; code = "MDA"; name = "Trường ĐH Mỏ - Địa chất (HUMG)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật dầu khí", "Kỹ thuật trắc địa - bản đồ", "Kỹ thuật môi trường", "Kỹ thuật cơ khí");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "18.0 - 24.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển học bạ"); website = "https://humg.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_026"; code = "DDA"; name = "Trường ĐH Điện lực (EPU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Kỹ thuật điện", "Năng lượng tái tạo", "Công nghệ kỹ thuật điều khiển và tự động hóa", "CNTT", "Thương mại điện tử");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "20.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT"); website = "https://epu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_027"; code = "DCN"; name = "Trường ĐH Công nghiệp Hà Nội (HaUI)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Công nghệ kỹ thuật ô tô", "Cơ điện tử", "Công nghệ kỹ thuật điện - điện tử", "Khoa học máy tính", "Quản trị kinh doanh");
    combinations = @("A00", "A01", "D01"); score_range = "21.5 - 25.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA/TSA", "Xét học bạ THPT"); website = "https://haui.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_028"; code = "DKK"; name = "Trường ĐH Kinh tế - Kỹ thuật Công nghiệp (UNETI)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật cơ điện tử", "Kế toán", "Quản trị kinh doanh", "Kỹ thuật điện thoại và viễn thông");
    combinations = @("A00", "A01", "B00", "C01", "D01"); score_range = "19.0 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ", "ĐGNL HSA"); website = "https://uneti.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_029"; code = "GTA"; name = "Trường ĐH Công nghệ Giao thông Vận tải (UTT)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Logistics", "Công nghệ kỹ thuật ô tô", "Kỹ thuật xây dựng cầu đường", "Thương mại điện tử", "CNTT");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "19.5 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://utt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_030"; code = "VMU"; name = "Trường ĐH Hàng hải Việt Nam (VMU)"; region = "Bắc"; province = "Hải Phòng"; type = "Công lập";
    majors = @("Điều khiển tàu biển", "Khai thác máy tàu biển", "Logistics và chuỗi cung ứng", "Kinh tế hàng hải", "Kỹ thuật đóng tàu");
    combinations = @("A00", "A01", "C01", "D01"); score_range = "18.0 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển học bạ", "ĐGNL HSA"); website = "https://vimaru.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_031"; code = "UST"; name = "Trường ĐH Khoa học và Công nghệ Hà Nội (USTH - Việt Pháp)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Hàng không và Vũ trụ", "Kỹ thuật vi mạch bán dẫn", "Công nghệ thông tin và truyền thông", "Khoa học vũ trụ và Công nghệ vệ tinh", "Công nghệ sinh học");
    combinations = @("A00", "A01", "B00", "D07"); score_range = "21.0 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ & Phỏng vấn tiếng Anh/Pháp"); website = "https://usth.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_032"; code = "BVH"; name = "Học viện Công nghệ Bưu chính Viễn thông (Cơ sở Hà Nội - PTIT)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật Điện tử Viễn thông", "An toàn thông tin", "Công nghệ đa phương tiện", "Thương mại điện tử");
    combinations = @("A00", "A01", "D01"); score_range = "24.0 - 26.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HSA/TSA", "Xét tuyển tài năng"); website = "https://portal.ptit.edu.vn"
  },

  # ==================== KHU VỰC MIỀN BẮC - Y DƯỢC, SƯ PHẠM, LUẬT, NÔNG NGHIỆP ====================
  [PSCustomObject]@{
    id = "vn_033"; code = "YHB"; name = "Trường ĐH Y Hà Nội (HMU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Y khoa", "Răng - Hàm - Mặt", "Y học cổ truyền", "Khúc xạ nhãn khoa", "Kỹ thuật phục hồi chức năng");
    combinations = @("B00"); score_range = "25.0 - 28.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Chứng chỉ tiếng Anh/Pháp quốc tế kết hợp"); website = "https://hmu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_034"; code = "DKH"; name = "Trường ĐH Dược Hà Nội (HUP)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Dược học", "Hóa dược", "Công nghệ sinh học", "Hóa học");
    combinations = @("A00", "B00"); score_range = "23.5 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL TSA ĐHBKHN", "Xét tuyển thẳng"); website = "https://hup.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_035"; code = "SPH"; name = "Trường ĐH Sư phạm Hà Nội (HNUE)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Tiếng Anh", "Sư phạm Ngữ văn", "Sư phạm Lịch sử", "Giáo dục tiểu học");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "23.0 - 28.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Kỳ thi ĐGNL riêng của HNUE", "Xét học bạ"); website = "https://hnue.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_036"; code = "SP2"; name = "Trường ĐH Sư phạm Hà Nội 2 (Vĩnh Phúc)"; region = "Bắc"; province = "Vĩnh Phúc"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Tin học", "Sư phạm Hóa học", "Giáo dục Mầm non", "Sư phạm Lịch sử");
    combinations = @("A00", "C00", "D01"); score_range = "22.0 - 27.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL HNUE/HSA", "Xét học bạ"); website = "https://hpu2.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_037"; code = "LPH"; name = "Trường ĐH Luật Hà Nội (HLU)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Luật kinh tế", "Luật quốc tế", "Luật học", "Luật thương mại quốc tế");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "23.5 - 28.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT chọn lọc"); website = "https://hlu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_038"; code = "HVN"; name = "Học viện Nông nghiệp Việt Nam (VNUA)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Thú y", "Công nghệ sinh học", "Nông nghiệp công nghệ cao", "Logistics và quản lý chuỗi cung ứng", "Quản lý đất đai");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "18.0 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT"); website = "https://vnua.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_039"; code = "LNH"; name = "Trường ĐH Lâm nghiệp (VNUF)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Lâm sinh", "Quản lý tài nguyên rừng", "Kiến trúc cảnh quan", "Công nghệ chế biến lâm sản", "Kinh tế nông nghiệp");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 20.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://vnuf.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_040"; code = "DMT"; name = "Trường ĐH Tài nguyên và Môi trường Hà Nội (HUNRE)"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Quản lý đất đai", "Biến đổi khí hậu và phát triển bền vững", "Khí tượng thủy văn", "Công nghệ thông tin", "Quản lý môi trường");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "17.0 - 23.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hunre.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_041"; code = "YPB"; name = "Trường ĐH Y Dược Thái Bình"; region = "Bắc"; province = "Thái Bình"; type = "Công lập";
    majors = @("Y khoa", "Dược học", "Y học cổ truyền", "Y học dự phòng", "Điều dưỡng");
    combinations = @("A00", "B00"); score_range = "21.0 - 26.2";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển thẳng"); website = "https://tbump.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_042"; code = "YHP"; name = "Trường ĐH Y Dược Hải Phòng"; region = "Bắc"; province = "Hải Phòng"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Kỹ thuật xét nghiệm y học", "Điều dưỡng");
    combinations = @("A00", "B00"); score_range = "22.0 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT"); website = "https://hpmu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_043"; code = "YDD"; name = "Trường ĐH Điều dưỡng Nam Định"; region = "Bắc"; province = "Nam Định"; type = "Công lập";
    majors = @("Điều dưỡng", "Hộ sinh", "Dinh dưỡng");
    combinations = @("B00", "B08", "D07"); score_range = "19.0 - 21.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://ndun.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_044"; code = "DKY"; name = "Trường ĐH Kỹ thuật Y tế Hải Dương"; region = "Bắc"; province = "Hải Dương"; type = "Công lập";
    majors = @("Y khoa", "Kỹ thuật xét nghiệm y học", "Kỹ thuật hình ảnh y học", "Kỹ thuật phục hồi chức năng", "Điều dưỡng");
    combinations = @("B00"); score_range = "20.0 - 25.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hmtu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_045"; code = "VTM"; name = "Học viện Y - Dược học Cổ truyền Việt Nam"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Y học cổ truyền", "Y khoa", "Dược học");
    combinations = @("A00", "B00"); score_range = "22.5 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT"); website = "https://vutm.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_046"; code = "YTC"; name = "Trường ĐH Y tế Công cộng"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Y tế công cộng", "Kỹ thuật phục hồi chức năng", "Dinh dưỡng", "Kỹ thuật xét nghiệm y học", "Công tác xã hội");
    combinations = @("B00", "A00", "D01"); score_range = "19.0 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ", "ĐGNL HSA"); website = "https://huph.edu.vn"
  },

  # ==================== ĐẠI HỌC VÙNG THÁI NGUYÊN & KHU VỰC TRUNG DU MIỀN NÚI PHÍA BẮC ====================
  [PSCustomObject]@{
    id = "vn_047"; code = "DTC"; name = "Trường ĐH Công nghệ Thông tin và Truyền thông - ĐH Thái Nguyên (ICTU)"; region = "Bắc"; province = "Thái Nguyên"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật phần mềm", "Trí tuệ nhân tạo và ứng dụng", "Thiết kế đồ họa số", "An toàn thông tin");
    combinations = @("A00", "A01", "D01"); score_range = "18.0 - 22.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT"); website = "https://ictu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_048"; code = "DTK"; name = "Trường ĐH Kỹ thuật Công nghiệp - ĐH Thái Nguyên (TNUT)"; region = "Bắc"; province = "Thái Nguyên"; type = "Công lập";
    majors = @("Kỹ thuật cơ khí", "Kỹ thuật ô tô", "Kỹ thuật điều khiển và tự động hóa", "Kỹ thuật điện", "Kỹ thuật xây dựng");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "17.0 - 21.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tnut.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_049"; code = "DTE"; name = "Trường ĐH Kinh tế và Quản trị Kinh doanh - ĐH Thái Nguyên (TUEBA)"; region = "Bắc"; province = "Thái Nguyên"; type = "Công lập";
    majors = @("Quản trị kinh doanh", "Tài chính - Ngân hàng", "Marketing", "Kinh tế quốc tế", "Kế toán");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "17.5 - 22.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tueba.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_050"; code = "DTS"; name = "Trường ĐH Sư phạm - ĐH Thái Nguyên"; region = "Bắc"; province = "Thái Nguyên"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Tiếng Anh", "Sư phạm Ngữ văn", "Sư phạm Lịch sử", "Giáo dục Tiểu học");
    combinations = @("A00", "C00", "D01"); score_range = "22.5 - 28.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dhsptn.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_051"; code = "DTY"; name = "Trường ĐH Y Dược - ĐH Thái Nguyên"; region = "Bắc"; province = "Thái Nguyên"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Điều dưỡng", "Kỹ thuật xét nghiệm y học");
    combinations = @("B00", "A00"); score_range = "21.5 - 26.0";
    admission_methods = @("Thi tốt nghiệp THPT"); website = "https://tump.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_052"; code = "DTN"; name = "Trường ĐH Nông Lâm - ĐH Thái Nguyên"; region = "Bắc"; province = "Thái Nguyên"; type = "Công lập";
    majors = @("Thú y", "Công nghệ thực phẩm", "Khoa học môi trường", "Nông nghiệp công nghệ cao", "Bảo vệ thực vật");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 20.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tuaf.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_053"; code = "DTZ"; name = "Trường ĐH Khoa học - ĐH Thái Nguyên"; region = "Bắc"; province = "Thái Nguyên"; type = "Công lập";
    majors = @("Toán ứng dụng", "Hóa học phân tích", "Báo chí", "Luật", "Công nghệ sinh học");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.5 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tnus.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_054"; code = "TTB"; name = "Trường ĐH Tây Bắc"; region = "Bắc"; province = "Sơn La"; type = "Công lập";
    majors = @("Sư phạm Ngữ văn", "Sư phạm Toán học", "Quản trị dịch vụ du lịch và lữ hành", "Nông học", "Công nghệ thông tin");
    combinations = @("A00", "C00", "D01"); score_range = "16.0 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://utb.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_055"; code = "THV"; name = "Trường ĐH Hùng Vương"; region = "Bắc"; province = "Phú Thọ"; type = "Công lập";
    majors = @("Sư phạm Toán", "Sư phạm Tiểu học", "Công nghệ thông tin", "Điều dưỡng", "Quản trị kinh doanh");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "17.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hvu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_056"; code = "DHL"; name = "Trường ĐH Hạ Long"; region = "Bắc"; province = "Quảng Ninh"; type = "Công lập";
    majors = @("Quản trị dịch vụ du lịch và lữ hành", "Ngôn ngữ Anh", "Ngôn ngữ Trung Quốc", "Công nghệ thông tin", "Nuôi trồng thủy sản");
    combinations = @("A00", "C00", "D01"); score_range = "17.0 - 22.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://uhl.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_057"; code = "DHP"; name = "Trường ĐH Hải Phòng"; region = "Bắc"; province = "Hải Phòng"; type = "Công lập";
    majors = @("Sư phạm Toán", "Sư phạm Ngữ văn", "Công nghệ thông tin", "Kế toán", "Quản trị kinh doanh");
    combinations = @("A00", "C00", "D01"); score_range = "17.5 - 25.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dhhp.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_058"; code = "SKH"; name = "Trường ĐH Sư phạm Kỹ thuật Hưng Yên"; region = "Bắc"; province = "Hưng Yên"; type = "Công lập";
    majors = @("Kỹ thuật cơ khí", "Kỹ thuật ô tô", "Kỹ thuật điều khiển và tự động hóa", "Công nghệ thông tin", "May và Thiết kế thời trang");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "18.5 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://utehy.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_059"; code = "SKN"; name = "Trường ĐH Sư phạm Kỹ thuật Nam Định"; region = "Bắc"; province = "Nam Định"; type = "Công lập";
    majors = @("Công nghệ kỹ thuật ô tô", "Công nghệ kỹ thuật điện, điện tử", "Công nghệ thông tin", "Sư phạm công nghệ");
    combinations = @("A00", "A01", "D01"); score_range = "16.5 - 20.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://nute.edu.vn"
  },

  # ==================== KHU VỰC MIỀN BẮC - NGHỆ THUẬT, VĂN HÓA, THỂ THAO ====================
  [PSCustomObject]@{
    id = "vn_060"; code = "HNV"; name = "Học viện Âm nhạc Quốc gia Việt Nam"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Biểu diễn nhạc cụ phương Tây", "Thanh nhạc", "Sáng tác âm nhạc", "Nhạc cụ truyền thống", "Lý luận âm nhạc");
    combinations = @("N00"); score_range = "Năng khiếu đặc thù";
    admission_methods = @("Thi tuyển năng khiếu âm nhạc & Ngữ văn"); website = "https://vnam.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_061"; code = "SKD"; name = "Trường ĐH Sân khấu - Điện ảnh Hà Nội"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Đạo diễn điện ảnh", "Diễn viên kịch, điện ảnh", "Biên kịch", "Quay phim", "Thiết kế mỹ thuật sân khấu");
    combinations = @("S00", "R00"); score_range = "Năng khiếu đặc thù";
    admission_methods = @("Thi môn năng khiếu sân khấu/điện ảnh kết hợp điểm Văn"); website = "https://skda.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_062"; code = "MTH"; name = "Trường ĐH Mỹ thuật Việt Nam"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Hội họa", "Đồ họa", "Điêu khắc", "Sư phạm mỹ thuật", "Lý luận lịch sử mỹ thuật");
    combinations = @("H00"); score_range = "Năng khiếu đặc thù";
    admission_methods = @("Thi môn hình họa, bố cục màu và Ngữ văn"); website = "https://mythuatvietnam.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_063"; code = "MTC"; name = "Trường ĐH Mỹ thuật Công nghiệp"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Thiết kế đồ họa", "Thiết kế thời trang", "Thiết kế nội thất", "Thiết kế công nghiệp", "Gốm mỹ thuật");
    combinations = @("H00", "H07"); score_range = "19.0 - 24.5";
    admission_methods = @("Thi tuyển hình họa và bố cục màu"); website = "https://mythuatcongnghiep.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_064"; code = "VHH"; name = "Trường ĐH Văn hóa Hà Nội"; region = "Bắc"; province = "Hà Nội"; type = "Công lập";
    majors = @("Quản lý văn hóa", "Du lịch", "Truyền thông văn hóa", "Thông tin - Thư viện", "Bảo tàng học");
    combinations = @("C00", "D01", "D78"); score_range = "21.0 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://huc.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_065"; code = "TDB"; name = "Trường ĐH Thể dục Thể thao Bắc Ninh"; region = "Bắc"; province = "Bắc Ninh"; type = "Công lập";
    majors = @("Giáo dục thể chất", "Huấn luyện thể thao", "Y sinh học thể dục thể thao", "Quản lý thể dục thể thao");
    combinations = @("T00", "T01"); score_range = "18.0 - 22.0";
    admission_methods = @("Thi môn năng khiếu thể thao kết hợp văn hóa"); website = "https://upes1.edu.vn"
  },

  # ==================== KHU VỰC MIỀN TRUNG - ĐẠI HỌC ĐÀ NẴNG & HUẾ ====================
  [PSCustomObject]@{
    id = "vn_066"; code = "DDK"; name = "Trường ĐH Bách khoa - ĐH Đà Nẵng (DUT)"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật ô tô", "Kỹ thuật điều khiển và tự động hóa", "Kỹ thuật điện", "Kỹ thuật cơ điện tử");
    combinations = @("A00", "A01", "B00"); score_range = "22.5 - 27.2";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQGHN/HCM", "Xét học bạ"); website = "https://dut.udn.vn"
  },
  [PSCustomObject]@{
    id = "vn_067"; code = "DDQ"; name = "Trường ĐH Kinh tế - ĐH Đà Nẵng (DUE)"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Kinh doanh quốc tế", "Marketing số", "Logistics và chuỗi cung ứng", "Tài chính - Ngân hàng", "Thương mại điện tử");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "23.0 - 26.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG HCM", "Xét học bạ"); website = "https://due.udn.vn"
  },
  [PSCustomObject]@{
    id = "vn_068"; code = "VKU"; name = "Trường ĐH Công nghệ Thông tin và Truyền thông Việt - Hàn (VKU)"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Trí tuệ nhân tạo (AI)", "An toàn thông tin", "Kỹ thuật mạng máy tính", "Thiết kế vi mạch", "Truyền thông số");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "21.5 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG", "Xét học bạ"); website = "https://vku.udn.vn"
  },
  [PSCustomObject]@{
    id = "vn_069"; code = "DDS"; name = "Trường ĐH Sư phạm - ĐH Đà Nẵng (UED)"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Tin học", "Sư phạm Hóa học", "Giáo dục Tiểu học", "Tâm lý học");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "22.0 - 27.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://ued.udn.vn"
  },
  [PSCustomObject]@{
    id = "vn_070"; code = "DDF"; name = "Trường ĐH Ngoại ngữ - ĐH Đà Nẵng (UFL)"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Sư phạm Tiếng Anh", "Ngôn ngữ Anh", "Ngôn ngữ Hàn Quốc", "Ngôn ngữ Nhật", "Ngôn ngữ Trung Quốc");
    combinations = @("D01", "D78", "D90"); score_range = "22.5 - 26.8";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ", "IELTS kết hợp"); website = "https://ufl.udn.vn"
  },
  [PSCustomObject]@{
    id = "vn_071"; code = "DSK"; name = "Trường ĐH Sư phạm Kỹ thuật - ĐH Đà Nẵng"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Công nghệ kỹ thuật ô tô", "Công nghệ kỹ thuật cơ điện tử", "Công nghệ thông tin", "Kỹ thuật nhiệt");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "19.5 - 24.2";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://ute.udn.vn"
  },
  [PSCustomObject]@{
    id = "vn_072"; code = "VNUK"; name = "Viện Nghiên cứu và Đào tạo Việt - Anh (VNUK) - ĐH Đà Nẵng"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Khoa học máy tính", "Khoa học dữ liệu", "Quản trị kinh doanh quốc tế", "Khoa học y sinh");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "20.0 - 24.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ & Phỏng vấn tiếng Anh"); website = "https://vnuk.udn.vn"
  },
  [PSCustomObject]@{
    id = "vn_073"; code = "DHY"; name = "Trường ĐH Y Dược - Đại học Huế"; region = "Trung"; province = "Thừa Thiên Huế"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Kỹ thuật xét nghiệm y học", "Điều dưỡng");
    combinations = @("A00", "B00"); score_range = "22.0 - 26.8";
    admission_methods = @("Thi tốt nghiệp THPT", "Chứng chỉ quốc tế"); website = "https://huemed-univ.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_074"; code = "DHK"; name = "Trường ĐH Kinh tế - Đại học Huế"; region = "Trung"; province = "Thừa Thiên Huế"; type = "Công lập";
    majors = @("Kinh tế quốc tế", "Quản trị kinh doanh", "Marketing", "Tài chính - Ngân hàng", "Thương mại điện tử");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "17.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hce.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_075"; code = "DHS"; name = "Trường ĐH Sư phạm - Đại học Huế"; region = "Trung"; province = "Thừa Thiên Huế"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Hóa học", "Sư phạm Vật lý", "Giáo dục Mầm non", "Sư phạm Lịch sử");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "21.0 - 27.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dhsphue.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_076"; code = "DHT"; name = "Trường ĐH Khoa học - Đại học Huế"; region = "Trung"; province = "Thừa Thiên Huế"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kiến trúc", "Kỹ thuật môi trường", "Báo chí", "Toán tin");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "16.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://husc.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_077"; code = "DHN"; name = "Trường ĐH Nông Lâm - Đại học Huế"; region = "Trung"; province = "Thừa Thiên Huế"; type = "Công lập";
    majors = @("Thú y", "Công nghệ thực phẩm", "Nuôi trồng thủy sản", "Nông nghiệp công nghệ cao", "Quản lý đất đai");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 20.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://huaf.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_078"; code = "DHA"; name = "Trường ĐH Luật - Đại học Huế"; region = "Trung"; province = "Thừa Thiên Huế"; type = "Công lập";
    majors = @("Luật học", "Luật kinh tế");
    combinations = @("A00", "C00", "D01"); score_range = "18.5 - 23.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hul.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_079"; code = "DHH"; name = "Trường Du lịch - Đại học Huế"; region = "Trung"; province = "Thừa Thiên Huế"; type = "Công lập";
    majors = @("Quản trị khách sạn", "Quản trị dịch vụ du lịch và lữ hành", "Quản trị nhà hàng và dịch vụ ăn uống");
    combinations = @("A00", "C00", "D01"); score_range = "17.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://huht.hueuni.edu.vn"
  },

  # ==================== KHU VỰC MIỀN TRUNG - CÁC TỈNH BẮC & NAM TRUNG BỘ ====================
  [PSCustomObject]@{
    id = "vn_080"; code = "TDV"; name = "Trường ĐH Vinh"; region = "Trung"; province = "Nghệ An"; type = "Công lập";
    majors = @("Sư phạm Toán", "Sư phạm Ngữ văn", "Công nghệ thông tin", "Kỹ thuật xây dựng", "Quản trị kinh doanh");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "18.0 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL riêng ĐH Vinh", "Xét học bạ"); website = "https://vinhuni.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_081"; code = "YKV"; name = "Trường ĐH Y khoa Vinh"; region = "Trung"; province = "Nghệ An"; type = "Công lập";
    majors = @("Y khoa", "Y học dự phòng", "Y học cổ truyền", "Điều dưỡng", "Kỹ thuật xét nghiệm y học");
    combinations = @("B00"); score_range = "20.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT"); website = "https://vmu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_082"; code = "SKV"; name = "Trường ĐH Sư phạm Kỹ thuật Vinh"; region = "Trung"; province = "Nghệ An"; type = "Công lập";
    majors = @("Công nghệ kỹ thuật ô tô", "Công nghệ kỹ thuật điện - điện tử", "Công nghệ kỹ thuật cơ điện tử", "CNTT");
    combinations = @("A00", "A01", "D01"); score_range = "16.5 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://vute.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_083"; code = "HDT"; name = "Trường ĐH Hồng Đức"; region = "Trung"; province = "Thanh Hóa"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Ngữ văn", "Công nghệ thông tin", "Kế toán", "Nông nghiệp");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "17.0 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hdu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_084"; code = "DHTN"; name = "Trường ĐH Tây Nguyên"; region = "Trung"; province = "Đắk Lắk"; type = "Công lập";
    majors = @("Y khoa", "Sư phạm Toán", "Thú y", "Kỹ thuật cơ sở hạ tầng", "Công nghệ thông tin");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.5 - 24.8";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://ttn.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_085"; code = "DLD"; name = "Trường ĐH Đà Lạt"; region = "Trung"; province = "Lâm Đồng"; type = "Công lập";
    majors = @("Nông nghiệp công nghệ cao", "Công nghệ thông tin", "Luật học", "Quản trị dịch vụ du lịch", "Sư phạm");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "17.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ", "ĐGNL ĐHQG HCM"); website = "https://dlu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_086"; code = "TSN"; name = "Trường ĐH Nha Trang (NTU)"; region = "Trung"; province = "Khánh Hòa"; type = "Công lập";
    majors = @("Kỹ thuật hàng hải", "Nuôi trồng thủy sản", "Công nghệ thực phẩm", "Công nghệ thông tin", "Kinh tế biển");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "17.5 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG HCM", "Xét học bạ"); website = "https://ntu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_087"; code = "DQN"; name = "Trường ĐH Quy Nhơn"; region = "Trung"; province = "Bình Định"; type = "Công lập";
    majors = @("Khoa học dữ liệu và Trí tuệ nhân tạo", "Sư phạm Toán học", "Kinh tế", "Công nghệ thông tin", "Kỹ thuật điện");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "17.0 - 25.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ", "ĐGNL ĐHQG"); website = "https://qnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_088"; code = "YDN"; name = "Trường ĐH Kỹ thuật Y - Dược Đà Nẵng"; region = "Trung"; province = "Đà Nẵng"; type = "Công lập";
    majors = @("Y khoa", "Dược học", "Kỹ thuật xét nghiệm y học", "Kỹ thuật phục hồi chức năng", "Kỹ thuật hình ảnh y học");
    combinations = @("A00", "B00"); score_range = "20.5 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT"); website = "https://dhtm.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_089"; code = "XMT"; name = "Trường ĐH Xây dựng Miền Trung"; region = "Trung"; province = "Phú Yên"; type = "Công lập";
    majors = @("Kỹ thuật xây dựng công trình giao thông", "Kiến trúc", "Kỹ thuật môi trường", "Kế toán");
    combinations = @("A00", "A01", "V00", "D01"); score_range = "16.0 - 19.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://muce.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_090"; code = "DPY"; name = "Trường ĐH Phú Yên"; region = "Trung"; province = "Phú Yên"; type = "Công lập";
    majors = @("Sư phạm Tiếng Anh", "Sư phạm Giáo dục mầm non", "Công nghệ thông tin", "Nông nghiệp");
    combinations = @("A00", "C00", "D01"); score_range = "16.0 - 22.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://pyu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_091"; code = "DPT"; name = "Trường ĐH Phan Thiết"; region = "Trung"; province = "Bình Thuận"; type = "Tư thục";
    majors = @("Quản trị khách sạn", "Quản trị dịch vụ du lịch", "Công nghệ thông tin", "Ngôn ngữ Anh", "Luật kinh tế");
    combinations = @("A00", "C00", "D01"); score_range = "15.5 - 18.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://upt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_092"; code = "DPV"; name = "Trường ĐH Phạm Văn Đồng"; region = "Trung"; province = "Quảng Ngãi"; type = "Công lập";
    majors = @("Sư phạm Tiểu học", "Công nghệ kỹ thuật cơ khí", "Công nghệ thông tin", "Ngôn ngữ Anh");
    combinations = @("A00", "C00", "D01"); score_range = "16.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://pdu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_093"; code = "DKQ"; name = "Trường ĐH Tài chính - Kế toán (Quảng Ngãi)"; region = "Trung"; province = "Quảng Ngãi"; type = "Công lập";
    majors = @("Tài chính - Ngân hàng", "Kế toán", "Quản trị kinh doanh", "Hệ thống thông tin quản lý");
    combinations = @("A00", "A01", "D01"); score_range = "16.0 - 18.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tckt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_094"; code = "DQB"; name = "Trường ĐH Quảng Bình"; region = "Trung"; province = "Quảng Bình"; type = "Công lập";
    majors = @("Sư phạm Toán", "Sư phạm Văn", "Quản trị dịch vụ du lịch", "Công nghệ kỹ thuật điện");
    combinations = @("A00", "C00", "D01"); score_range = "16.0 - 22.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://qbu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_095"; code = "DHTH"; name = "Trường ĐH Hà Tĩnh"; region = "Trung"; province = "Hà Tĩnh"; type = "Công lập";
    majors = @("Sư phạm Giáo dục mầm non", "Sư phạm Toán", "Ngôn ngữ Trung Quốc", "Công nghệ thông tin");
    combinations = @("A00", "C00", "D01"); score_range = "16.0 - 23.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://htu.edu.vn"
  },

  # ==================== KHU VỰC MIỀN NAM - ĐẠI HỌC QUỐC GIA TP.HCM ====================
  [PSCustomObject]@{
    id = "vn_096"; code = "QSB"; name = "Trường ĐH Bách khoa - ĐHQG TP.HCM (HCMUT)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Khoa học máy tính", "Kỹ thuật máy tính", "Kỹ thuật ô tô", "Kỹ thuật hóa học", "Kỹ thuật điều khiển và tự động hóa");
    combinations = @("A00", "A01"); score_range = "24.5 - 28.5";
    admission_methods = @("Đánh giá năng lực ĐHQG-HCM", "Thi tốt nghiệp THPT", "Xét tuyển kết hợp nhiều tiêu chí"); website = "https://hcmut.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_097"; code = "QSC"; name = "Trường ĐH Khoa học Tự nhiên - ĐHQG TP.HCM (HCMUS)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Trí tuệ nhân tạo (AI)", "Khoa học dữ liệu", "Khoa học máy tính", "Công nghệ sinh học", "Hóa học");
    combinations = @("A00", "A01", "B00", "D07"); score_range = "22.5 - 28.2";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "Xét tuyển tài năng"); website = "https://hcmus.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_098"; code = "QSX"; name = "Trường ĐH Khoa học Xã hội và Nhân văn - ĐHQG TP.HCM (USSH-HCM)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Báo chí", "Truyền thông đa phương tiện", "Tâm lý học", "Quan hệ quốc tế", "Ngôn ngữ Anh");
    combinations = @("C00", "D01", "D14"); score_range = "23.0 - 28.2";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "IELTS kết hợp"); website = "https://hcmussh.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_099"; code = "QST"; name = "Trường ĐH Quốc tế - ĐHQG TP.HCM (IU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Logistics và Quản lý chuỗi cung ứng", "Kỹ thuật y sinh", "Kỹ thuật hệ thống công nghiệp", "Công nghệ sinh học", "Quản trị kinh doanh");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "21.0 - 25.5";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "Xét tuyển kết quả SAT"); website = "https://hcmiu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_100"; code = "QSQ"; name = "Trường ĐH Công nghệ Thông tin - ĐHQG TP.HCM (UIT)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Khoa học máy tính (Trí tuệ nhân tạo)", "Kỹ thuật phần mềm", "An toàn thông tin", "Thiết kế vi mạch", "Thương mại điện tử");
    combinations = @("A00", "A01", "D01"); score_range = "25.0 - 28.2";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "Xét tuyển thẳng học sinh giỏi"); website = "https://uit.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_101"; code = "QSL"; name = "Trường ĐH Kinh tế - Luật - ĐHQG TP.HCM (UEL)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Kinh tế đối ngoại", "Kinh doanh quốc tế", "Luật thương mại quốc tế", "Công nghệ tài chính", "Thương mại điện tử");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "24.5 - 27.5";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "Chứng chỉ quốc tế"); website = "https://uel.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_102"; code = "QSY"; name = "Trường ĐH Khoa học Sức khỏe - ĐHQG TP.HCM (UHS)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Y học cổ truyền", "Điều dưỡng");
    combinations = @("B00"); score_range = "23.5 - 26.8";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT"); website = "https://medvnu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_103"; code = "DTAG"; name = "Trường ĐH An Giang - ĐHQG TP.HCM"; region = "Nam"; province = "An Giang"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Công nghệ sinh học", "Khoa học cây trồng", "Quản trị kinh doanh", "Công nghệ thông tin");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.5 - 24.5";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://agu.edu.vn"
  },

  # ==================== KHU VỰC MIỀN NAM - KINH TẾ, TÀI CHÍNH, NGOẠI THƯƠNG TP.HCM ====================
  [PSCustomObject]@{
    id = "vn_104"; code = "KSA"; name = "Đại học Kinh tế TP. Hồ Chí Minh (UEH)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Kinh doanh quốc tế", "Logistics và chuỗi cung ứng", "Marketing", "Tài chính", "Công nghệ tài chính (Fintech)");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "25.0 - 28.0";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "Xét tuyển kết hợp học sinh giỏi"); website = "https://ueh.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_105"; code = "NTS"; name = "Trường ĐH Ngoại thương (Cơ sở 2 TP.HCM - FTU2)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Kinh tế đối ngoại", "Quản trị kinh doanh quốc tế", "Tài chính quốc tế", "Logistics quốc tế");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "27.8 - 29.2";
    admission_methods = @("Thi tốt nghiệp THPT", "IELTS kết hợp", "ĐGNL ĐHQG-HCM"); website = "https://cs2.ftu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_106"; code = "DMS"; name = "Trường ĐH Tài chính - Marketing (UFM)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Marketing", "Kinh doanh quốc tế", "Bất động sản", "Tài chính - Ngân hàng", "Quản trị khách sạn");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "22.5 - 26.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://ufm.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_107"; code = "NHB"; name = "Trường ĐH Ngân hàng TP. Hồ Chí Minh (HUB)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Tài chính - Ngân hàng", "Công nghệ tài chính", "Kinh doanh quốc tế", "Quản trị kinh doanh", "Khoa học dữ liệu");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "23.5 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL V-SAT HUB", "ĐGNL ĐHQG-HCM"); website = "https://hub.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_108"; code = "MKH"; name = "Trường ĐH Mở TP. Hồ Chí Minh (OU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Logistics và Quản trị chuỗi cung ứng", "Ngôn ngữ Anh", "Kế toán", "Công nghệ thông tin", "Luật kinh tế");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "20.5 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://ou.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_109"; code = "DLS"; name = "Trường ĐH Luật TP. Hồ Chí Minh (ULAW)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Luật thương mại quốc tế", "Luật dân sự", "Luật hình sự", "Luật quốc tế", "Quản trị - Luật");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "23.5 - 27.8";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL riêng ULAW", "Xét tuyển kết hợp"); website = "https://ulaw.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_110"; code = "DGS"; name = "Trường ĐH Sài Gòn (SGU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Sư phạm Toán", "Sư phạm Tiếng Anh", "Công nghệ thông tin", "Kỹ thuật điện tử", "Quản trị kinh doanh");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "21.5 - 27.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM"); website = "https://sgu.edu.vn"
  },

  # ==================== KHU VỰC MIỀN NAM - KỸ THUẬT, CÔNG NGHỆ, KIẾN TRÚC TP.HCM ====================
  [PSCustomObject]@{
    id = "vn_111"; code = "SPK"; name = "Trường ĐH Sư phạm Kỹ thuật TP. Hồ Chí Minh (HCMUTE)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Công nghệ kỹ thuật ô tô", "Kỹ thuật cơ điện tử", "Kỹ thuật điều khiển và tự động hóa", "Khoa học dữ liệu", "Robot và Trí tuệ nhân tạo");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "23.5 - 27.5";
    admission_methods = @("ĐGNL ĐHQG-HCM", "Thi tốt nghiệp THPT", "Xét học bạ chọn lọc"); website = "https://hcmute.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_112"; code = "KTS"; name = "Trường ĐH Kiến trúc TP. Hồ Chí Minh (UAH)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Kiến trúc", "Quy hoạch vùng và đô thị", "Thiết kế nội thất", "Thiết kế đồ họa", "Kỹ thuật xây dựng");
    combinations = @("V00", "V01", "H01", "A00"); score_range = "20.5 - 26.0";
    admission_methods = @("Thi môn năng khiếu vẽ kết hợp thi THPT"); website = "https://uah.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_113"; code = "GTS"; name = "Trường ĐH Giao thông Vận tải TP. Hồ Chí Minh (UTH)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Logistics và Quản lý chuỗi cung ứng", "Khoa học hàng hải", "Kỹ thuật ô tô", "Kỹ thuật xây dựng công trình giao thông", "CNTT");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "21.0 - 26.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://ut.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_114"; code = "HUI"; name = "Trường ĐH Công nghiệp TP. Hồ Chí Minh (IUH)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Công nghệ kỹ thuật ô tô", "Khoa học máy tính", "Kỹ thuật điều khiển & tự động hóa", "Kỹ thuật hóa học", "Quản trị kinh doanh");
    combinations = @("A00", "A01", "C01", "D01"); score_range = "21.0 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://iuh.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_115"; code = "DCT"; name = "Trường ĐH Công Thương TP. Hồ Chí Minh (HUIT)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Công nghệ thực phẩm", "Công nghệ thông tin", "Kỹ thuật điện", "Quản trị dịch vụ du lịch", "Kế toán");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "19.5 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://huit.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_116"; code = "NLS"; name = "Trường ĐH Nông Lâm TP. Hồ Chí Minh (NLU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Bác sĩ thú y", "Công nghệ sinh học", "Công nghệ thực phẩm", "Kỹ thuật cơ điện tử", "Quản lý đất đai");
    combinations = @("A00", "B00", "D01", "D07"); score_range = "18.5 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://hcmuaf.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_117"; code = "BVS"; name = "Học viện Công nghệ Bưu chính Viễn thông (Cơ sở TP.HCM - PTIT)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật điều khiển và tự động hóa", "An toàn thông tin", "Marketing số");
    combinations = @("A00", "A01", "D01"); score_range = "22.5 - 26.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM"); website = "https://ptithcm.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_118"; code = "HHK"; name = "Học viện Hàng không Việt Nam (VAA)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Quản lý hoạt động bay", "Kỹ thuật hàng không", "Kinh tế vận tải hàng không", "Kỹ thuật điện tử viễn thông hàng không");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "19.5 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://vaa.edu.vn"
  },

  # ==================== KHU VỰC MIỀN NAM - Y DƯỢC, SƯ PHẠM TP.HCM ====================
  [PSCustomObject]@{
    id = "vn_119"; code = "YDS"; name = "Trường ĐH Y Dược TP. Hồ Chí Minh (UMP)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Y khoa", "Răng - Hàm - Mặt", "Dược học", "Kỹ thuật xét nghiệm y học", "Kỹ thuật y sinh");
    combinations = @("A00", "B00"); score_range = "24.5 - 28.5";
    admission_methods = @("Thi tốt nghiệp THPT", "IELTS kết hợp điểm THPT"); website = "https://ump.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_120"; code = "TYS"; name = "Trường ĐH Y khoa Phạm Ngọc Thạch (PNT)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Khúc xạ nhãn khoa", "Điều dưỡng");
    combinations = @("B00"); score_range = "23.0 - 26.8";
    admission_methods = @("Thi tốt nghiệp THPT (phân luồng TP.HCM và toàn quốc)"); website = "https://pnt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_121"; code = "SPS"; name = "Trường ĐH Sư phạm TP. Hồ Chí Minh (HCMUE)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Sư phạm Tiếng Anh", "Sư phạm Toán học", "Sư phạm Hóa học", "Sư phạm Ngữ văn", "Tâm lý học giáo dục");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "23.0 - 28.5";
    admission_methods = @("Kỳ thi ĐGNL chuyên biệt HCMUE", "Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hcmue.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_122"; code = "NHS"; name = "Nhạc viện TP. Hồ Chí Minh"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Biểu diễn nhạc cụ phương Tây", "Thanh nhạc", "Nhạc cụ truyền thống", "Sáng tác âm nhạc");
    combinations = @("N00"); score_range = "Năng khiếu đặc thù";
    admission_methods = @("Thi môn chuyên môn âm nhạc kết hợp điểm môn Văn"); website = "https://hcmcons.vn"
  },
  [PSCustomObject]@{
    id = "vn_123"; code = "MTS"; name = "Trường ĐH Mỹ thuật TP. Hồ Chí Minh"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Hội họa", "Đồ họa", "Thiết kế đồ họa", "Điêu khắc", "Sư phạm mỹ thuật");
    combinations = @("H00"); score_range = "Năng khiếu đặc thù";
    admission_methods = @("Thi môn hình họa, màu nước kết hợp Ngữ văn"); website = "https://hcmufa.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_124"; code = "SKS"; name = "Trường ĐH Sân khấu - Điện ảnh TP. Hồ Chí Minh"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Diễn viên kịch, điện ảnh", "Đạo diễn điện ảnh", "Quay phim", "Nhiếp ảnh");
    combinations = @("S00"); score_range = "Năng khiếu đặc thù";
    admission_methods = @("Thi môn năng khiếu diễn xuất / hình ảnh kết hợp Ngữ văn"); website = "https://skdahcm.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_125"; code = "TDS"; name = "Trường ĐH Thể dục Thể thao TP. Hồ Chí Minh"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập";
    majors = @("Giáo dục thể chất", "Huấn luyện thể thao", "Y sinh học thể dục thể thao", "Quản lý thể dục thể thao");
    combinations = @("T00", "T01"); score_range = "18.0 - 21.0";
    admission_methods = @("Thi năng khiếu thể thao kết hợp điểm văn hóa"); website = "https://ush.edu.vn"
  },

  # ==================== KHU VỰC ĐỒNG BẰNG SÔNG CỬU LONG ====================
  [PSCustomObject]@{
    id = "vn_126"; code = "TCT"; name = "Trường ĐH Cần Thơ (CTU)"; region = "Nam"; province = "Cần Thơ"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Nuôi trồng thủy sản chất lượng cao", "Bác sĩ thú y", "Kỹ thuật cơ điện tử", "Kinh tế quốc tế");
    combinations = @("A00", "A01", "B00", "C00", "D01"); score_range = "18.5 - 26.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM/V-SAT", "Xét học bạ"); website = "https://ctu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_127"; code = "YCT"; name = "Trường ĐH Y Dược Cần Thơ (CTUMP)"; region = "Nam"; province = "Cần Thơ"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Kỹ thuật y sinh", "Y học dự phòng");
    combinations = @("A00", "B00"); score_range = "22.5 - 26.2";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét tuyển thẳng"); website = "https://ctump.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_128"; code = "SPD"; name = "Trường ĐH Đồng Tháp"; region = "Nam"; province = "Đồng Tháp"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Giáo dục tiểu học", "Nông nghiệp công nghệ cao", "Công nghệ thông tin");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "17.0 - 25.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dthu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_129"; code = "DTT"; name = "Trường ĐH Tiền Giang"; region = "Nam"; province = "Tiền Giang"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Công nghệ thực phẩm", "Sư phạm Mầm non", "Kế toán");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 23.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tgu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_130"; code = "DTV"; name = "Trường ĐH Trà Vinh (TVU)"; region = "Nam"; province = "Trà Vinh"; type = "Công lập";
    majors = @("Y khoa", "Răng Hàm Mặt", "Kỹ thuật xét nghiệm y học", "Ngôn ngữ Khmer", "Công nghệ kỹ thuật ô tô");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ", "ĐGNL ĐHQG-HCM"); website = "https://tvu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_131"; code = "DBL"; name = "Trường ĐH Bạc Liêu"; region = "Nam"; province = "Bạc Liêu"; type = "Công lập";
    majors = @("Nuôi trồng thủy sản", "Bảo vệ thực vật", "Công nghệ thông tin", "Sư phạm Tiếng Anh");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.5 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://blu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_132"; code = "DKG"; name = "Trường ĐH Kiên Giang"; region = "Nam"; province = "Kiên Giang"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Nuôi trồng thủy sản", "Ngôn ngữ Anh", "Kỹ thuật xây dựng công trình giao thông");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.5 - 20.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://vnukg.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_133"; code = "SKV1"; name = "Trường ĐH Sư phạm Kỹ thuật Vĩnh Long (VLUTE)"; region = "Nam"; province = "Vĩnh Long"; type = "Công lập";
    majors = @("Công nghệ kỹ thuật ô tô", "Kỹ thuật cơ điện tử", "Kỹ thuật điều khiển và tự động hóa", "Thương mại điện tử");
    combinations = @("A00", "A01", "D01"); score_range = "18.0 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://vlute.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_134"; code = "XMT1"; name = "Trường ĐH Xây dựng Miền Tây (Vĩnh Long)"; region = "Nam"; province = "Vĩnh Long"; type = "Công lập";
    majors = @("Kỹ thuật công trình xây dựng", "Kiến trúc", "Quản lý đô thị");
    combinations = @("A00", "A01", "V00"); score_range = "15.5 - 18.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://mtu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_135"; code = "CCU"; name = "Trường ĐH Kỹ thuật - Công nghệ Cần Thơ (CTUT)"; region = "Nam"; province = "Cần Thơ"; type = "Công lập";
    majors = @("Khoa học máy tính", "Hệ thống thông tin", "Kỹ thuật điện", "Kỹ thuật điều khiển & tự động hóa");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "18.0 - 23.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://ctuet.edu.vn"
  },

  # ==================== KHU VỰC MIỀN ĐÔNG NAM BỘ ====================
  [PSCustomObject]@{
    id = "vn_136"; code = "TDM"; name = "Trường ĐH Thủ Dầu Một"; region = "Nam"; province = "Bình Dương"; type = "Công lập";
    majors = @("Công nghệ thông tin", "Kỹ thuật ô tô", "Quản trị kinh doanh", "Luật kinh tế", "Ngôn ngữ Anh");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "17.0 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://tdmu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_137"; code = "EIU"; name = "Trường ĐH Quốc tế Miền Đông (EIU)"; region = "Nam"; province = "Bình Dương"; type = "Tư thục";
    majors = @("Kỹ thuật điều khiển & tự động hóa", "Kỹ thuật phần mềm", "Mạng máy tính và truyền thông dữ liệu", "Quản trị kinh doanh", "Điều dưỡng");
    combinations = @("A00", "A01", "D01"); score_range = "18.0 - 22.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ & Tiếng Anh"); website = "https://eiu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_138"; code = "PVU"; name = "Trường ĐH Dầu khí Việt Nam (PVU)"; region = "Nam"; province = "Bà Rịa - Vũng Tàu"; type = "Công lập";
    majors = @("Kỹ thuật địa chất dầu khí", "Kỹ thuật dầu khí", "Kỹ thuật hóa học");
    combinations = @("A00", "A01"); score_range = "20.0 - 23.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét tuyển thẳng"); website = "https://pvu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_139"; code = "BVU"; name = "Trường ĐH Bà Rịa - Vũng Tàu (BVU)"; region = "Nam"; province = "Bà Rịa - Vũng Tàu"; type = "Tư thục";
    majors = @("Logistics và Quản lý chuỗi cung ứng", "Quản trị du lịch và khách sạn", "Công nghệ kỹ thuật ô tô", "Dược học");
    combinations = @("A00", "C00", "D01"); score_range = "16.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://bvu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_140"; code = "DLDN"; name = "Trường ĐH Đồng Nai"; region = "Nam"; province = "Đồng Nai"; type = "Công lập";
    majors = @("Sư phạm Toán học", "Sư phạm Tiếng Anh", "Giáo dục Tiểu học", "Quản trị kinh doanh");
    combinations = @("A00", "C00", "D01"); score_range = "17.0 - 24.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dnpu.edu.vn"
  },

  # ==================== KHỐI TRƯỜNG QUÂN ĐỘI & CÔNG AN ====================
  [PSCustomObject]@{
    id = "vn_141"; code = "MTA"; name = "Học viện Kỹ thuật Quân sự (MTA)"; region = "Bắc"; province = "Hà Nội"; type = "Quân đội";
    majors = @("Chỉ huy kỹ thuật công nghệ thông tin", "Kỹ thuật tên lửa", "Kỹ thuật điều khiển và tự động hóa", "Kỹ thuật ra-đa", "Kỹ thuật tác chiến điện tử");
    combinations = @("A00", "A01"); score_range = "24.0 - 27.8";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT", "ĐGNL TSA ĐHBKHN"); website = "https://mta.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_142"; code = "YQH"; name = "Học viện Quân y (VMMU)"; region = "Bắc"; province = "Hà Nội"; type = "Quân đội";
    majors = @("Bác sĩ đa khoa quân y", "Dược sĩ sĩ quan quân đội");
    combinations = @("A00", "B00"); score_range = "24.5 - 28.0";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi tốt nghiệp THPT"); website = "https://vmmu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_143"; code = "LQN1"; name = "Trường Sĩ quan Lục quân 1 (ĐH Trần Quốc Tuấn)"; region = "Bắc"; province = "Hà Nội"; type = "Quân đội";
    majors = @("Chỉ huy tham mưu Lục quân binh chủng hợp thành");
    combinations = @("A00", "C00"); score_range = "20.5 - 24.5";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://sqclq1.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_144"; code = "LQN2"; name = "Trường Sĩ quan Lục quân 2 (ĐH Nguyễn Huệ)"; region = "Nam"; province = "Đồng Nai"; type = "Quân đội";
    majors = @("Chỉ huy tham mưu Lục quân khu vực miền Nam");
    combinations = @("A00", "C00"); score_range = "19.5 - 23.5";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://sqlq2.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_145"; code = "HCH"; name = "Học viện Hậu cần"; region = "Bắc"; province = "Hà Nội"; type = "Quân đội";
    majors = @("Chỉ huy tham mưu hậu cần", "Tài chính quân đội", "Vận tải quân sự", "Quân nhu");
    combinations = @("A00", "A01"); score_range = "22.0 - 25.5";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://hocvienhaucan.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_146"; code = "PKK"; name = "Học viện Phòng không - Không quân"; region = "Bắc"; province = "Hà Nội"; type = "Quân đội";
    majors = @("Chỉ huy tham mưu phòng không", "Kỹ thuật điều khiển tên lửa phòng không", "Ra-đa cảnh giới");
    combinations = @("A00", "A01"); score_range = "21.0 - 24.5";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://hocvienpkkq.com"
  },
  [PSCustomObject]@{
    id = "vn_147"; code = "HQH"; name = "Học viện Hải quân"; region = "Trung"; province = "Khánh Hòa"; type = "Quân đội";
    majors = @("Chỉ huy tàu mặt nước", "Kỹ thuật máy tàu hải quân", "Tác chiến dưới nước", "Khí tài điện tử hải quân");
    combinations = @("A00", "A01"); score_range = "21.5 - 24.8";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://hocvienhaiquan.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_148"; code = "BPH"; name = "Học viện Biên phòng"; region = "Bắc"; province = "Hà Nội"; type = "Quân đội";
    majors = @("Chỉ huy biên phòng", "Trinh sát biên phòng", "Phòng chống ma túy và tội phạm biên giới");
    combinations = @("A01", "C00"); score_range = "22.5 - 26.5";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://hocvienbienphong.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_149"; code = "CTQ"; name = "Trường Sĩ quan Chính trị (ĐH Chính trị)"; region = "Bắc"; province = "Bắc Ninh"; type = "Quân đội";
    majors = @("Xây dựng Đảng và chính quyền Nhà nước", "Chính trị học quân sự");
    combinations = @("A00", "C00", "D01"); score_range = "23.5 - 28.0";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://daihocchinhtri.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_150"; code = "TTQ"; name = "Trường Sĩ quan Thông tin (ĐH Thông tin Liên lạc)"; region = "Trung"; province = "Khánh Hòa"; type = "Quân đội";
    majors = @("Chỉ huy kỹ thuật thông tin quân sự", "Mạng máy tính và truyền thông số quân sự", "An ninh mạng");
    combinations = @("A00", "A01"); score_range = "20.5 - 24.2";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://tcu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_151"; code = "KQS"; name = "Học viện Khoa học Quân sự"; region = "Bắc"; province = "Hà Nội"; type = "Quân đội";
    majors = @("Trinh sát kỹ thuật ngoại ngữ", "Ngôn ngữ Anh", "Ngôn ngữ Trung Quốc", "Ngôn ngữ Nga", "Quan hệ quốc tế quốc phòng");
    combinations = @("A01", "D01", "D02", "D04"); score_range = "23.5 - 27.5";
    admission_methods = @("Sơ tuyển quân sự + Điểm thi THPT"); website = "http://hvkhqs.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_152"; code = "ANH"; name = "Học viện An ninh Nhân dân (T01)"; region = "Bắc"; province = "Hà Nội"; type = "Công an";
    majors = @("Trinh sát an ninh mạng và phòng chống tội phạm công nghệ cao", "An ninh điều tra", "Ngôn ngữ Anh an ninh", "Luật an ninh");
    combinations = @("A00", "A01", "C03", "D01"); score_range = "23.5 - 27.5";
    admission_methods = @("Sơ tuyển CAND + Bài thi ĐGNL Bộ Công an + Thi THPT"); website = "https://c500.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_153"; code = "CSH"; name = "Học viện Cảnh sát Nhân dân (T02)"; region = "Bắc"; province = "Hà Nội"; type = "Công an";
    majors = @("Trinh sát hình sự", "Điều tra tội phạm", "Quản lý hành chính nhà nước về an ninh trật tự", "Cảnh sát giao thông", "Kỹ thuật hình sự");
    combinations = @("A00", "A01", "C03", "D01"); score_range = "23.5 - 27.8";
    admission_methods = @("Sơ tuyển CAND + Bài thi ĐGNL Bộ Công an + Thi THPT"); website = "https://hvcsnd.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_154"; code = "ANS"; name = "Trường ĐH An ninh Nhân dân (T04)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công an";
    majors = @("Nghiệp vụ an ninh miền Nam", "Trinh sát an ninh điều tra");
    combinations = @("A00", "A01", "C03", "D01"); score_range = "22.5 - 26.5";
    admission_methods = @("Sơ tuyển CAND + Bài thi ĐGNL Bộ Công an + Thi THPT"); website = "https://dhannd.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_155"; code = "CSS"; name = "Trường ĐH Cảnh sát Nhân dân (T05)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công an";
    majors = @("Nghiệp vụ Cảnh sát điều tra", "Kỹ thuật hình sự", "Cảnh sát quản lý trật tự xã hội");
    combinations = @("A00", "A01", "C03", "D01"); score_range = "22.5 - 26.8";
    admission_methods = @("Sơ tuyển CAND + Bài thi ĐGNL Bộ Công an + Thi THPT"); website = "https://dhcsnd.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_156"; code = "PCH"; name = "Trường ĐH Phòng cháy Chữa cháy (T06)"; region = "Bắc"; province = "Hà Nội"; type = "Công an";
    majors = @("Phòng cháy chữa cháy và Cứu nạn cứu hộ");
    combinations = @("A00"); score_range = "21.5 - 24.5";
    admission_methods = @("Sơ tuyển CAND + Bài thi ĐGNL Bộ Công an + Thi THPT"); website = "https://daihocpccc.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_157"; code = "CHC"; name = "Học viện Chính trị Công an Nhân dân (T03)"; region = "Bắc"; province = "Hà Nội"; type = "Công an";
    majors = @("Xây dựng Đảng và chính quyền nhà nước trong CAND");
    combinations = @("A01", "C00", "C03", "D01"); score_range = "23.0 - 27.0";
    admission_methods = @("Sơ tuyển CAND + Bài thi ĐGNL Bộ Công an + Thi THPT"); website = "https://hvctcand.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_158"; code = "THC"; name = "Trường ĐH Kỹ thuật - Hậu cần CAND (T07)"; region = "Bắc"; province = "Bắc Ninh"; type = "Công an";
    majors = @("Công nghệ thông tin CAND", "Kỹ thuật điện tử viễn thông CAND", "Hậu cần tài chính CAND");
    combinations = @("A00", "A01"); score_range = "21.5 - 25.0";
    admission_methods = @("Sơ tuyển CAND + Bài thi ĐGNL Bộ Công an + Thi THPT"); website = "https://dhkthc.edu.vn"
  },

  # ==================== KHỐI ĐẠI HỌC TƯ THỤC & QUỐC TẾ TIÊU BIỂU ====================
  [PSCustomObject]@{
    id = "vn_159"; code = "RMIT"; name = "Đại học RMIT Việt Nam (Cơ sở Hà Nội & TP.HCM)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Quốc tế";
    majors = @("Kinh doanh quốc tế", "Kỹ thuật phần mềm", "Truyền thông chuyên nghiệp", "Thiết kế ứng dụng sáng tạo", "Kỹ thuật Robot và Trí tuệ nhân tạo");
    combinations = @("Xét học bạ / Tú tài quốc tế IB / A-Level"); score_range = "GPA 7.0+ & IELTS 6.5+";
    admission_methods = @("Xét điểm học bạ THPT & Chứng chỉ tiếng Anh quốc tế"); website = "https://rmit.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_160"; code = "VINUNI"; name = "Đại học VinUniversity"; region = "Bắc"; province = "Hà Nội"; type = "Quốc tế";
    majors = @("Khoa học máy tính", "Bác sĩ y khoa", "Kỹ thuật cơ khí", "Điều dưỡng", "Quản trị kinh doanh");
    combinations = @("Xét tuyển hồ sơ toàn diện A-A-C-C"); score_range = "Học bổng & Hỗ trợ tài chính theo năng lực";
    admission_methods = @("Đánh giá hồ sơ năng lực cá nhân, bài luận và phỏng vấn trực tiếp"); website = "https://vinuni.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_161"; code = "BUV"; name = "Trường ĐH Anh Quốc Việt Nam (British University Vietnam - BUV)"; region = "Bắc"; province = "Hưng Yên"; type = "Quốc tế";
    majors = @("Thiết kế và Lập trình Game", "Khoa học máy tính", "Quản trị Marketing", "Quản trị Du lịch Quốc tế", "Tài chính và Kinh tế");
    combinations = @("Học bạ THPT & IELTS 6.0+"); score_range = "Tốt nghiệp THPT & Tiếng Anh";
    admission_methods = @("Xét tuyển học bạ & Phỏng vấn học bổng"); website = "https://buv.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_162"; code = "FUV"; name = "Đại học Fulbright Việt Nam (Fulbright University Vietnam)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Quốc tế";
    majors = @("Giáo dục Khai phóng (Liberal Arts)", "Khoa học máy tính", "Kinh tế học", "Nghiên cứu xã hội và toàn cầu", "Khoa học tích hợp");
    combinations = @("Hồ sơ năng lực toàn diện"); score_range = "Tuyển sinh toàn diện không thi THPT đơn thuần";
    admission_methods = @("Xét tuyển bài luận, phỏng vấn và dự án cá nhân"); website = "https://fulbright.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_163"; code = "FPT"; name = "Trường ĐH FPT (Hà Nội, TP.HCM, Đà Nẵng, Cần Thơ, Quy Nhơn)"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Kỹ thuật phần mềm", "Trí tuệ nhân tạo (AI)", "An toàn thông tin", "Thiết kế mỹ thuật số", "Kinh doanh quốc tế");
    combinations = @("A00", "A01", "D01", "Top50 SchoolRank"); score_range = "19.0 - 25.0";
    admission_methods = @("Tra cứu xếp hạng SchoolRank THPT", "Điểm thi THPT"); website = "https://daihoc.fpt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_164"; code = "PKA"; name = "Trường ĐH Phenikaa"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Thiết kế vi mạch", "Robot và Trí tuệ nhân tạo", "Kỹ thuật ô tô", "Y khoa", "Dược học");
    combinations = @("A00", "A01", "B00", "D01"); score_range = "19.0 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT", "ĐGNL HSA/TSA"); website = "https://phenikaa-uni.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_165"; code = "DTH"; name = "Trường ĐH Thăng Long"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Khoa học máy tính", "Trí tuệ nhân tạo", "Truyền thông đa phương tiện", "Ngôn ngữ Hàn Quốc", "Điều dưỡng");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "20.5 - 25.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://thanglong.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_166"; code = "DDA1"; name = "Trường ĐH Đại Nam"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Y khoa", "Dược học", "Logistics và chuỗi cung ứng", "Công nghệ thông tin", "Truyền thông đa phương tiện");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dainam.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_167"; code = "HUBT"; name = "Trường ĐH Kinh doanh và Công nghệ Hà Nội"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Y khoa", "Răng Hàm Mặt", "Quản trị kinh doanh", "Công nghệ thông tin", "Kiến trúc");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://hubt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_168"; code = "DPD"; name = "Trường ĐH Phương Đông"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Công nghệ thông tin", "Kiến trúc", "Ngôn ngữ Anh", "Kế toán", "Quản trị dịch vụ du lịch");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "15.0 - 19.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://phuongdong.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_169"; code = "DKH1"; name = "Trường ĐH Hòa Bình"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Y học cổ truyền", "Dược học", "Công nghệ thông tin", "Luật kinh tế");
    combinations = @("A00", "B00", "D01"); score_range = "15.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://daihochoabinh.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_170"; code = "DNT"; name = "Trường ĐH Nguyễn Trãi"; region = "Bắc"; province = "Hà Nội"; type = "Tư thục";
    majors = @("Thiết kế đồ họa", "Kiến trúc nội thất", "Quan hệ công chúng", "Công nghệ thông tin");
    combinations = @("A00", "C00", "D01"); score_range = "15.0 - 18.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://ntu-hn.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_171"; code = "VLU"; name = "Trường ĐH Văn Lang (VLU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Thiết kế đồ họa", "Truyền thông đa phương tiện", "Y khoa", "Răng Hàm Mặt", "Quan hệ công chúng", "Công nghệ thông tin");
    combinations = @("A00", "B00", "C00", "D01", "H01"); score_range = "16.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://vlu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_172"; code = "HUT"; name = "Trường ĐH Công nghệ TP. Hồ Chí Minh (HUTECH)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Công nghệ kỹ thuật ô tô", "Công nghệ thông tin", "Dược học", "Thương mại điện tử", "Truyền thông đa phương tiện");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "16.5 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://hutech.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_173"; code = "UEF"; name = "Trường ĐH Kinh tế - Tài chính TP. Hồ Chí Minh (UEF)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Kinh doanh quốc tế", "Logistics và quản lý chuỗi cung ứng", "Marketing", "Công nghệ thông tin", "Ngôn ngữ Nhật");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "17.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://uef.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_174"; code = "HSU"; name = "Trường ĐH Hoa Sen (HSU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Kinh doanh quốc tế", "Quản trị khách sạn", "Thiết kế thời trang", "Tâm lý học", "Truyền thông đa phương tiện");
    combinations = @("A00", "A01", "D01", "D07"); score_range = "16.0 - 20.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://hoasen.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_175"; code = "HIU"; name = "Trường ĐH Quốc tế Hồng Bàng (HIU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Kỹ thuật phục hồi chức năng", "Quản trị kinh doanh");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://hiu.vn"
  },
  [PSCustomObject]@{
    id = "vn_176"; code = "NTTU"; name = "Trường ĐH Nguyễn Tất Thành (NTTU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Y khoa", "Dược học", "Công nghệ thông tin", "Kỹ thuật ô tô", "Quản trị khách sạn");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 23.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://ntt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_177"; code = "FLT"; name = "Trường ĐH Ngoại ngữ - Tin học TP.HCM (HUFLIT)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Ngôn ngữ Anh", "Kinh doanh quốc tế", "Công nghệ thông tin", "Quan hệ quốc tế", "Thương mại điện tử");
    combinations = @("A01", "D01", "D14", "D15"); score_range = "16.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT"); website = "https://huflit.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_178"; code = "TDT"; name = "Trường ĐH Tôn Đức Thắng (TDTU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Công lập tự chủ";
    majors = @("Khoa học máy tính", "Kỹ thuật phần mềm", "Kinh doanh quốc tế", "Dược học", "Luật");
    combinations = @("A00", "A01", "D01"); score_range = "22.5 - 27.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ kết hợp"); website = "https://tdtu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_179"; code = "SIU"; name = "Trường ĐH Quốc tế Sài Gòn (SIU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Khoa học máy tính", "Trí tuệ nhân tạo & Dữ liệu lớn", "Logistics quốc tế", "Luật kinh tế quốc tế");
    combinations = @("A00", "A01", "D01"); score_range = "16.0 - 19.0";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG-HCM", "Xét học bạ"); website = "https://siu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_180"; code = "GDU"; name = "Trường ĐH Gia Định (GDU)"; region = "Nam"; province = "TP. Hồ Chí Minh"; type = "Tư thục";
    majors = @("Công nghệ thông tin", "Truyền thông đa phương tiện", "Thương mại điện tử", "Kinh doanh quốc tế");
    combinations = @("A00", "A01", "C00", "D01"); score_range = "15.0 - 17.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://giadinh.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_181"; code = "DDT"; name = "Trường ĐH Duy Tân (Đà Nẵng)"; region = "Trung"; province = "Đà Nẵng"; type = "Tư thục";
    majors = @("Y khoa", "Răng Hàm Mặt", "Kỹ thuật phần mềm chuẩn CMU", "Trí tuệ nhân tạo", "Quản trị du lịch và khách sạn chuẩn PSU");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "ĐGNL ĐHQG", "Xét học bạ"); website = "https://duytan.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_182"; code = "DAD"; name = "Trường ĐH Đông Á (Đà Nẵng)"; region = "Trung"; province = "Đà Nẵng"; type = "Tư thục";
    majors = @("Điều dưỡng (làm việc tại Nhật)", "Công nghệ thông tin", "Công nghệ kỹ thuật ô tô", "Ngôn ngữ Nhật");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.5 - 19.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://donga.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_183"; code = "KTD"; name = "Trường ĐH Kiến trúc Đà Nẵng"; region = "Trung"; province = "Đà Nẵng"; type = "Tư thục";
    majors = @("Kiến trúc", "Thiết kế đồ họa", "Kỹ thuật xây dựng", "Quản trị kinh doanh");
    combinations = @("V00", "V01", "A00", "D01"); score_range = "15.5 - 19.0";
    admission_methods = @("Thi môn Vẽ kết hợp tốt nghiệp THPT", "Xét học bạ"); website = "https://dau.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_184"; code = "DLH"; name = "Trường ĐH Lạc Hồng (Đồng Nai)"; region = "Nam"; province = "Đồng Nai"; type = "Tư thục";
    majors = @("Dược học", "Cơ điện tử - Robot", "Công nghệ kỹ thuật ô tô", "Công nghệ thông tin", "Ngôn ngữ Hàn");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.5 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://lhu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_185"; code = "DNTU"; name = "Trường ĐH Công nghệ Đồng Nai"; region = "Nam"; province = "Đồng Nai"; type = "Tư thục";
    majors = @("Công nghệ kỹ thuật ô tô", "Kỹ thuật điện", "Công nghệ thông tin", "Ngôn ngữ Anh");
    combinations = @("A00", "A01", "D01"); score_range = "15.0 - 18.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dntu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_186"; code = "DBD"; name = "Trường ĐH Bình Dương"; region = "Nam"; province = "Bình Dương"; type = "Tư thục";
    majors = @("Công nghệ thông tin", "Công nghệ kỹ thuật ô tô", "Dược học", "Quản trị kinh doanh");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://bdu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_187"; code = "KTB"; name = "Trường ĐH Kinh tế - Kỹ thuật Bình Dương (BETU)"; region = "Nam"; province = "Bình Dương"; type = "Tư thục";
    majors = @("Kế toán", "Quản trị kinh doanh", "Kỹ thuật phần mềm", "Dược học");
    combinations = @("A00", "B00", "D01"); score_range = "15.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://ktkt.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_188"; code = "DNC"; name = "Trường ĐH Nam Cần Thơ (DNC)"; region = "Nam"; province = "Cần Thơ"; type = "Tư thục";
    majors = @("Y khoa", "Răng Hàm Mặt", "Dược học", "Kỹ thuật ô tô", "Công nghệ thông tin");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "16.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://nctu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_189"; code = "DTD"; name = "Trường ĐH Tây Đô (Cần Thơ)"; region = "Nam"; province = "Cần Thơ"; type = "Tư thục";
    majors = @("Dược học", "Điều dưỡng", "Luật kinh tế", "Nuôi trồng thủy sản", "Công nghệ thông tin");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.5 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tdu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_190"; code = "DCL"; name = "Trường ĐH Cửu Long (Vĩnh Long)"; region = "Nam"; province = "Vĩnh Long"; type = "Tư thục";
    majors = @("Y khoa", "Dược học", "Kỹ thuật cơ khí", "Nông nghiệp công nghệ cao");
    combinations = @("A00", "B00", "D01"); score_range = "15.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://mku.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_191"; code = "DYD"; name = "Trường ĐH Yersin Đà Lạt"; region = "Trung"; province = "Lâm Đồng"; type = "Tư thục";
    majors = @("Dược học", "Điều dưỡng", "Công nghệ thông tin", "Quản trị du lịch và lữ hành");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://yersin.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_192"; code = "YBM"; name = "Trường ĐH Buôn Ma Thuột"; region = "Trung"; province = "Đắk Lắk"; type = "Tư thục";
    majors = @("Y khoa", "Dược học", "Y tế công cộng", "Điều dưỡng");
    combinations = @("A00", "B00"); score_range = "19.0 - 23.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://bmtu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_193"; code = "DQT"; name = "Trường ĐH Quang Trung (Quy Nhơn)"; region = "Trung"; province = "Bình Định"; type = "Tư thục";
    majors = @("Công nghệ sinh học", "Công nghệ thông tin", "Kế toán", "Quản trị dịch vụ du lịch");
    combinations = @("A00", "B00", "D01"); score_range = "15.0 - 17.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://qtu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_194"; code = "TPD"; name = "Trường ĐH Thái Bình Dương (Nha Trang)"; region = "Trung"; province = "Khánh Hòa"; type = "Tư thục";
    majors = @("Công nghệ thông tin", "Truyền thông đa phương tiện", "Quản trị khách sạn", "Luật");
    combinations = @("A00", "C00", "D01"); score_range = "15.0 - 17.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://tbd.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_195"; code = "PCT"; name = "Trường ĐH Phan Châu Trinh (Quảng Nam)"; region = "Trung"; province = "Quảng Nam"; type = "Tư thục";
    majors = @("Bác sĩ Y khoa", "Răng Hàm Mặt", "Kỹ thuật xét nghiệm y học", "Điều dưỡng");
    combinations = @("B00", "A00"); score_range = "19.0 - 22.5";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://pctu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_196"; code = "DBH"; name = "Trường ĐH Quốc tế Bắc Hà (Bắc Ninh)"; region = "Bắc"; province = "Bắc Ninh"; type = "Tư thục";
    majors = @("Công nghệ kỹ thuật ô tô", "Kỹ thuật phần mềm", "Kế toán", "Ngôn ngữ Hàn");
    combinations = @("A00", "A01", "D01"); score_range = "15.0 - 18.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://biu.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_197"; code = "DCA"; name = "Trường ĐH Chu Văn An (Hưng Yên)"; region = "Bắc"; province = "Hưng Yên"; type = "Tư thục";
    majors = @("Dược học", "Điều dưỡng", "Quản trị kinh doanh", "Công nghệ thông tin");
    combinations = @("A00", "B00", "D01"); score_range = "15.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://cva.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_198"; code = "DLV"; name = "Trường ĐH Lương Thế Vinh (Nam Định)"; region = "Bắc"; province = "Nam Định"; type = "Tư thục";
    majors = @("Kỹ thuật cơ khí", "Công nghệ thông tin", "Kế toán", "Thú y");
    combinations = @("A00", "B00", "D01"); score_range = "15.0 - 17.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://luongthevinh.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_199"; code = "DTD1"; name = "Trường ĐH Thành Đông (Hải Dương)"; region = "Bắc"; province = "Hải Dương"; type = "Tư thục";
    majors = @("Y học cổ truyền", "Dược học", "Kỹ thuật xét nghiệm y học", "Luật kinh tế");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.0 - 21.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://thanhdong.edu.vn"
  },
  [PSCustomObject]@{
    id = "vn_200"; code = "DTHB"; name = "Trường ĐH Trưng Vương (Phú Thọ)"; region = "Bắc"; province = "Phú Thọ"; type = "Tư thục";
    majors = @("Điều dưỡng", "Kế toán", "Luật kinh tế", "Ngôn ngữ Anh");
    combinations = @("A00", "B00", "C00", "D01"); score_range = "15.0 - 19.0";
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ"); website = "https://dhtv.edu.vn"
  }
)

# Thêm 55 trường đại học/học viện/cao đẳng trọng điểm bổ sung để đạt ~255+ cơ sở
$additionalSchools = @(
  @{ code="DCD"; name="Trường ĐH Công nghệ Đông Á"; reg="Bắc"; prov="Bắc Ninh"; typ="Tư thục"; maj=@("Công nghệ kỹ thuật ô tô","Công nghệ thông tin","Dược học","Quản trị kinh doanh"); comb=@("A00","A01","B00","D01"); range="16.0 - 21.0"; web="https://eatu.edu.vn" },
  @{ code="DTA"; name="Trường ĐH Tân Trào"; reg="Bắc"; prov="Tuyên Quang"; typ="Công lập"; maj=@("Sư phạm Tiểu học","Dược học","Khoa học cây trồng","Quản lý văn hóa"); comb=@("A00","B00","C00","D01"); range="15.5 - 23.5"; web="https://daihoctantrao.edu.vn" },
  @{ code="DCV"; name="Trường ĐH Văn hóa TP. Hồ Chí Minh"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Công lập"; maj=@("Quản lý văn hóa","Du lịch","Truyền thông","Thông tin thư viện"); comb=@("C00","D01"); range="18.0 - 23.5"; web="https://hcmuc.edu.vn" },
  @{ code="DQN1"; name="Trường ĐH Quảng Nam"; reg="Trung"; prov="Quảng Nam"; typ="Công lập"; maj=@("Sư phạm Toán","Sư phạm Tiếng Anh","Công nghệ thông tin","Bảo vệ thực vật"); comb=@("A00","C00","D01"); range="15.0 - 22.5"; web="https://qnamuni.edu.vn" },
  @{ code="DTC1"; name="Trường ĐH Tài chính - Quản trị Kinh doanh"; reg="Bắc"; prov="Hưng Yên"; typ="Công lập"; maj=@("Tài chính - Ngân hàng","Kế toán","Quản trị kinh doanh","Hệ thống thông tin"); comb=@("A00","A01","D01"); range="16.0 - 20.0"; web="https://tckd.edu.vn" },
  @{ code="HCT"; name="Học viện Hành chính Quốc gia (NAPA)"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Quản lý nhà nước","Xây dựng Đảng và chính quyền","Luật hành chính"); comb=@("A00","C00","D01"); range="19.0 - 24.5"; web="https://napa.vn" },
  @{ code="HPN"; name="Học viện Phụ nữ Việt Nam"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Công tác xã hội","Quản trị kinh doanh","Truyền thông đa phương tiện","Luật"); comb=@("A00","C00","D01"); range="19.0 - 24.5"; web="https://hvpnvn.edu.vn" },
  @{ code="HTN"; name="Học viện Thanh thiếu niên Việt Nam"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Công tác thanh thiếu niên","Xây dựng Đảng","Luật","Công tác xã hội"); comb=@("C00","D01"); range="18.0 - 24.0"; web="https://vya.edu.vn" },
  @{ code="HTA"; name="Học viện Tòa án"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Luật học (chuyên ngành Tòa án)"); comb=@("A00","A01","C00","D01"); range="23.5 - 27.5"; web="https://hvta.toaan.gov.vn" },
  @{ code="HDT1"; name="Học viện Dân tộc"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Công tác dân tộc","Quản lý nhà nước về dân tộc"); comb=@("C00","D01"); range="16.0 - 20.0"; web="https://hvdt.edu.vn" },
  @{ code="MNT"; name="Trường ĐH Sư phạm Nghệ thuật Trung ương"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Sư phạm Âm nhạc","Sư phạm Mỹ thuật","Thiết kế đồ họa","Thiết kế thời trang"); comb=@("H00","N00"); range="Năng khiếu đặc thù"; web="https://spnttw.edu.vn" },
  @{ code="TDTT"; name="Trường ĐH Thể dục Thể thao Đà Nẵng"; reg="Trung"; prov="Đà Nẵng"; typ="Công lập"; maj=@("Giáo dục thể chất","Huấn luyện thể thao","Y học thể thao"); comb=@("T00","T01"); range="18.0 - 21.0"; web="https://dsu.edu.vn" },
  @{ code="DHV1"; name="Trường ĐH Hùng Vương TP. Hồ Chí Minh"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Tư thục"; maj=@("Công nghệ thông tin","Quản trị khách sạn","Luật kinh tế","Ngôn ngữ Nhật"); comb=@("A00","C00","D01"); range="15.0 - 18.0"; web="https://hvuh.edu.vn" },
  @{ code="STU"; name="Trường ĐH Công nghệ Sài Gòn (STU)"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Tư thục"; maj=@("Kỹ thuật cơ điện tử","Công nghệ thông tin","Thiết kế công nghiệp","Quản trị kinh doanh"); comb=@("A00","A01","D01"); range="15.0 - 18.5"; web="https://stu.edu.vn" },
  @{ code="TTU"; name="Trường ĐH Tân Tạo (Long An)"; reg="Nam"; prov="Long An"; typ="Tư thục"; maj=@("Y khoa","Khoa học máy tính","Quản trị kinh doanh","Ngôn ngữ Anh"); comb=@("A00","B00","D01"); range="16.0 - 22.5"; web="https://ttu.edu.vn" },
  @{ code="DLA"; name="Trường ĐH Kinh tế Công nghiệp Long An"; reg="Nam"; prov="Long An"; typ="Tư thục"; maj=@("Quản trị kinh doanh","Tài chính ngân hàng","Công nghệ thông tin","Kỹ thuật xây dựng"); comb=@("A00","A01","D01"); range="15.0 - 17.5"; web="https://dla.edu.vn" },
  @{ code="DTH1"; name="Trường ĐH Quốc tế Hồng Đức"; reg="Trung"; prov="Thanh Hóa"; typ="Công lập"; maj=@("Sư phạm Tiếng Anh","Khoa học máy tính","Du lịch sinh thái"); comb=@("A00","C00","D01"); range="16.5 - 23.0"; web="https://hdu.edu.vn" },
  @{ code="VKU1"; name="Phân hiệu ĐH Kinh tế TP.HCM tại Vĩnh Long"; reg="Nam"; prov="Vĩnh Long"; typ="Công lập"; maj=@("Kinh doanh quốc tế","Thương mại điện tử","Logistics","Tài chính"); comb=@("A00","A01","D01"); range="20.0 - 24.5"; web="https://kav.ueh.edu.vn" },
  @{ code="PVU1"; name="Trường Sĩ quan Công binh"; reg="Nam"; prov="Bình Dương"; typ="Quân đội"; maj=@("Chỉ huy kỹ thuật công binh công trình","Kỹ thuật cầu đường quân sự"); comb=@("A00","A01"); range="20.0 - 23.0"; web="http://tsqcb.edu.vn" },
  @{ code="SQPB"; name="Trường Sĩ quan Pháo binh"; reg="Bắc"; province="Hà Nội"; typ="Quân đội"; maj=@("Chỉ huy pháo binh mặt đất","Chỉ huy tên lửa chiến thuật"); comb=@("A00"); range="20.0 - 23.5"; web="http://sqpb.edu.vn" },
  @{ code="SQTT"; name="Trường Sĩ quan Tăng thiết giáp"; reg="Bắc"; prov="Vĩnh Phúc"; typ="Quân đội"; maj=@("Chỉ huy tăng thiết giáp"); comb=@("A00"); range="19.5 - 23.0"; web="http://sqttg.edu.vn" },
  @{ code="SQPH"; name="Trường Sĩ quan Phòng hóa"; reg="Bắc"; prov="Hà Nội"; typ="Quân đội"; maj=@("Chỉ huy kỹ thuật phòng hóa"); comb=@("A00"); range="20.0 - 23.5"; web="http://sqph.edu.vn" },
  @{ code="SQKQ"; name="Trường Sĩ quan Không quân"; reg="Trung"; prov="Khánh Hòa"; typ="Quân đội"; maj=@("Phi công quân sự","Sĩ quan dù hàng không","Chỉ huy kỹ thuật không quân"); comb=@("A00"); range="21.0 - 24.5"; web="http://sqkq.edu.vn" },
  @{ code="SQTDN"; name="Trường Sĩ quan Kỹ thuật Quân sự (ĐH Trần Đại Nghĩa)"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Quân đội"; maj=@("Chỉ huy kỹ thuật vũ khí","Kỹ thuật ô tô quân sự"); comb=@("A00","A01"); range="20.5 - 24.0"; web="http://tdnu.edu.vn" },
  @{ code="HVDC"; name="Học viện Múa Việt Nam"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Biểu diễn nghệ thuật múa dân gian dân tộc","Biểu diễn múa Cổ điển châu Âu","Biên đạo múa"); comb=@("N00"); range="Năng khiếu đặc thù"; web="https://vnad.edu.vn" },
  @{ code="CST"; name="Trường Cao đẳng Sư phạm Trung ương"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng công lập"; maj=@("Giáo dục Mầm non","Giáo dục Đặc biệt","Sư phạm Mỹ thuật"); comb=@("M00"); range="17.0 - 22.0"; web="https://cdsptw.edu.vn" },
  @{ code="CKT"; name="Trường Cao đẳng Kỹ thuật Cao Thắng"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Cao đẳng công lập"; maj=@("Công nghệ kỹ thuật ô tô","Công nghệ kỹ thuật điện tử","Cơ khí chế tạo máy","Công nghệ thông tin"); comb=@("Xét học bạ / Điểm THPT"); range="Điểm chuẩn uy tín"; web="https://caothang.edu.vn" },
  @{ code="CDKT"; name="Trường Cao đẳng Kinh tế Đối ngoại (COFER)"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Cao đẳng công lập"; maj=@("Logistics xuất nhập khẩu","Kinh doanh quốc tế","Marketing thương mại","Tài chính doanh nghiệp"); comb=@("A00","D01"); range="16.0 - 20.0"; web="https://cofer.edu.vn" },
  @{ code="CDDL"; name="Trường Cao đẳng Du lịch Hà Nội"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng công lập"; maj=@("Quản trị khách sạn","Kỹ thuật chế biến món ăn","Hướng dẫn du lịch"); comb=@("Xét tuyển học bạ"); range="Chuẩn nghề quốc gia"; web="https://htc.edu.vn" },
  @{ code="FPL"; name="Trường Cao đẳng FPT Polytechnic"; reg="Toàn quốc"; prov="Hà Nội & TP.HCM"; typ="Cao đẳng tư thục"; maj=@("Lập trình Web/Mobile","Phát triển phần mềm","Digital Marketing","Thiết kế đồ họa"); comb=@("Xét học bạ THPT"); range="Thực chiến công nghệ"; web="https://caodang.fpt.edu.vn" },
  @{ code="CDTD"; name="Trường Cao đẳng Công nghệ Thủ Đức"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Cao đẳng công lập"; maj=@("Công nghệ kỹ thuật cơ khí","Công nghệ kỹ thuật ô tô","Tiếng Nhật","Quản trị nhà hàng"); comb=@("Xét tốt nghiệp THPT"); range="Đào tạo nghề chuyên sâu"; web="https://tdc.edu.vn" },
  @{ code="CDYT"; name="Trường Cao đẳng Y tế Hà Nội"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng công lập"; maj=@("Điều dưỡng","Dược","Kỹ thuật xét nghiệm y học","Hộ sinh"); comb=@("B00","Xét học bạ"); range="Đào tạo y tế chuẩn"; web="https://yhn.edu.vn" },
  @{ code="CDYTP"; name="Trường Cao đẳng Y tế Bạch Mai"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng công lập"; maj=@("Điều dưỡng lâm sàng","Kỹ thuật hình ảnh y học","Kỹ thuật xét nghiệm y học"); comb=@("B00"); range="Thực hành bệnh viện tuyến đầu"; web="https://bmsmc.edu.vn" },
  @{ code="CDGT"; name="Trường Cao đẳng Giao thông Vận tải Trung ương 1"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng công lập"; maj=@("Kỹ thuật xây dựng cầu đường","Vận hành máy thi công mặt đường","Kỹ thuật ô tô"); comb=@("Xét tuyển"); range="Thực hành kỹ thuật"; web="https://gtvttw1.edu.vn" },
  @{ code="CDCN"; name="Trường Cao đẳng Công thương Việt Nam"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng tư thục"; maj=@("Kỹ thuật chế biến món ăn","Dược sĩ","Công nghệ ô tô","Chăm sóc sắc đẹp"); comb=@("Xét tuyển học bạ"); range="Cam kết việc làm"; web="https://vct.edu.vn" },
  @{ code="DHX"; name="Trường ĐH Xây dựng Miền Nam"; reg="Nam"; prov="Vĩnh Long"; typ="Công lập"; maj=@("Kỹ thuật công trình xây dựng","Kỹ thuật hạ tầng đô thị","Kiến trúc cảnh quan"); comb=@("A00","A01","V00"); range="15.0 - 18.0"; web="https://xdmn.edu.vn" },
  @{ code="VTC"; name="Trường ĐH Công nghiệp Việt - Hung"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Công nghệ kỹ thuật ô tô","Công nghệ thông tin","Quản trị kinh doanh","Tài chính ngân hàng"); comb=@("A00","A01","D01"); range="15.0 - 18.0"; web="https://viu.edu.vn" },
  @{ code="VTT"; name="Trường ĐH Công nghiệp Việt Trì"; reg="Bắc"; prov="Phú Thọ"; typ="Công lập"; maj=@("Kỹ thuật hóa học","Công nghệ kỹ thuật môi trường","Công nghệ kỹ thuật điện"); comb=@("A00","B00","D01"); range="15.0 - 17.5"; web="https://vtu.edu.vn" },
  @{ code="TCT1"; name="Trường ĐH Công nghiệp Quảng Ninh"; reg="Bắc"; prov="Quảng Ninh"; typ="Công lập"; maj=@("Kỹ thuật mỏ","Kỹ thuật tuyển khoáng","Kỹ thuật điện tử","Trắc địa địa chất"); comb=@("A00","A01"); range="15.0 - 17.0"; web="https://qui.edu.vn" },
  @{ code="SDB"; name="Trường ĐH Sư phạm Kỹ thuật Nam Định"; reg="Bắc"; prov="Nam Định"; typ="Công lập"; maj=@("Sư phạm kỹ thuật công nghiệp","Công nghệ kỹ thuật ô tô"); comb=@("A00","A01"); range="16.0 - 19.5"; web="https://nute.edu.vn" },
  @{ code="HNMU"; name="Trường ĐH Thủ đô Hà Nội"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Sư phạm Ngữ văn","Sư phạm Tiếng Trung Quốc","Quản lý văn hóa","Logistics"); comb=@("A00","C00","D01"); range="18.5 - 25.5"; web="https://hnmu.edu.vn" },
  @{ code="TNU_SPS"; name="Khoa Ngoại ngữ - Đại học Thái Nguyên"; reg="Bắc"; prov="Thái Nguyên"; typ="Công lập"; maj=@("Sư phạm Tiếng Anh","Ngôn ngữ Trung Quốc","Ngôn ngữ Hàn Quốc","Ngôn ngữ Pháp"); comb=@("D01","D78"); range="19.0 - 24.5"; web="https://sfl.tnu.edu.vn" },
  @{ code="DHP1"; name="Trường ĐH Kinh tế Hải Phòng"; reg="Bắc"; prov="Hải Phòng"; typ="Công lập"; maj=@("Kinh tế vận tải","Quản trị logistics cảng biển","Kế toán doanh nghiệp"); comb=@("A00","A01","D01"); range="17.0 - 21.5"; web="https://dhhp.edu.vn" },
  @{ code="DUT1"; name="Trường ĐH Công nghệ Đồng Nai"; reg="Nam"; prov="Đồng Nai"; typ="Tư thục"; maj=@("Kỹ thuật phần mềm","Truyền thông đa phương tiện","Quản trị kinh doanh"); comb=@("A00","A01","D01"); range="15.0 - 17.5"; web="https://dntu.edu.vn" },
  @{ code="GREEN"; name="Đại học Greenwich (Việt Nam)"; reg="Toàn quốc"; prov="Hà Nội, TP.HCM, Đà Nẵng, Cần Thơ"; typ="Quốc tế"; maj=@("Công nghệ thông tin","Thiết kế đồ họa và kỹ thuật số","Quản trị kinh doanh quốc tế"); comb=@("Xét học bạ THPT & Phỏng vấn tiếng Anh"); range="Bằng Cử nhân Đại học Greenwich Anh Quốc"; web="https://greenwich.edu.vn" },
  @{ code="SWIN"; name="Đại học Swinburne (Việt Nam)"; reg="Toàn quốc"; prov="Hà Nội, TP.HCM, Đà Nẵng"; typ="Quốc tế"; maj=@("Khoa học máy tính","Trí tuệ nhân tạo (AI)","Truyền thông số","Kinh doanh quốc tế"); comb=@("Xét học bạ THPT & Phỏng vấn tiếng Anh"); range="Bằng Cử nhân Swinburne University of Technology Úc"; web="https://swinburne-vn.edu.vn" },
  @{ code="DEK"; name="Trường ĐH Kinh tế Nghệ An"; reg="Trung"; prov="Nghệ An"; typ="Công lập"; maj=@("Kế toán","Kinh tế nông nghiệp","Tài chính ngân hàng","Thú y"); comb=@("A00","B00","D01"); range="15.0 - 18.0"; web="https://naue.edu.vn" },
  @{ code="DTHG"; name="Trường ĐH Kỹ thuật Y Dược Hải Dương"; reg="Bắc"; prov="Hải Dương"; typ="Công lập"; maj=@("Kỹ thuật y sinh","Điều dưỡng đa khoa","Kỹ thuật hình ảnh y học"); comb=@("B00"); range="19.0 - 24.0"; web="https://hmtu.edu.vn" },
  @{ code="DUT2"; name="Trường ĐH Công nghiệp Dệt May Hà Nội (HTU)"; reg="Bắc"; prov="Hà Nội"; typ="Công lập"; maj=@("Công nghệ may","Thiết kế thời trang","Kỹ thuật cơ khí dệt may","Marketing dệt may"); comb=@("A00","A01","D01","V00"); range="16.0 - 20.0"; web="https://hht.edu.vn" },
  @{ code="CDVT"; name="Trường Cao đẳng Viễn Đông"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Cao đẳng tư thục"; maj=@("Chăm sóc sắc đẹp","Điều dưỡng quốc tế","Công nghệ ô tô","Lập trình ứng dụng"); comb=@("Xét tuyển học bạ"); range="Đào tạo nghề gắn việc làm"; web="https://viendong.edu.vn" },
  @{ code="CDTH"; name="Trường Cao đẳng Y Dược Pasteur"; reg="Toàn quốc"; prov="Hà Nội & TP.HCM"; typ="Cao đẳng tư thục"; maj=@("Dược học","Điều dưỡng","Hộ sinh","Kỹ thuật xét nghiệm y học"); comb=@("Xét tuyển học bạ THPT"); range="Chuyên sâu Y Dược"; web="https://caodangyduocpasteur.com.vn" },
  @{ code="CDKT1"; name="Trường Cao đẳng Kinh tế Kỹ thuật Trung ương"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng công lập"; maj=@("Thương mại điện tử","Quản trị kinh doanh","Công nghệ may"); comb=@("Xét học bạ"); range="Đào tạo nghề HTX"; web="https://netc.edu.vn" },
  @{ code="CDHH"; name="Trường Cao đẳng Hàng hải I"; reg="Bắc"; prov="Hải Phòng"; typ="Cao đẳng công lập"; maj=@("Điều khiển tàu biển","Khai thác máy tàu thủy","Logistics cảng biển"); comb=@("Xét tuyển THPT"); range="Chứng chỉ thuyền viên quốc tế IMO"; web="https://cdhh.edu.vn" },
  @{ code="CDHH2"; name="Trường Cao đẳng Hàng hải II"; reg="Nam"; prov="TP. Hồ Chí Minh"; typ="Cao đẳng công lập"; maj=@("Điều khiển tàu biển","Điện tàu thủy","Khai thác vận tải biển"); comb=@("Xét tuyển THPT"); range="Chuẩn thuyền viên IMO"; web="https://m2c.edu.vn" },
  @{ code="CDXD"; name="Trường Cao đẳng Xây dựng số 1"; reg="Bắc"; prov="Hà Nội"; typ="Cao đẳng công lập"; maj=@("Kỹ thuật thi công xây dựng","Cấp thoát nước","Trắc địa công trình"); comb=@("Xét tuyển THPT"); range="Thực hành nghề xây dựng"; web="https://ctc1.edu.vn" }
)

$idx = 201
foreach ($s in $additionalSchools) {
  $idStr = "vn_" + $idx.ToString("000")
  $obj = [PSCustomObject]@{
    id = $idStr
    code = $s.code
    name = $s.name
    region = $s.reg
    province = $s.prov
    type = $s.typ
    majors = $s.maj
    combinations = $s.comb
    score_range = $s.range
    admission_methods = @("Thi tốt nghiệp THPT", "Xét học bạ THPT", "ĐGNL")
    website = $s.web
  }
  $schools += $obj
  $idx++
}

Write-Host "Tổng số cơ sở đào tạo Việt Nam:" $schools.Count

$destDir = "c:\Users\kn900\OneDrive\Desktop\khkt\khkt\HTML\data"
if (!(Test-Path $destDir)) { New-Item -ItemType Directory -Force -Path $destDir }
$outJsonPath = Join-Path $destDir "schools_vn.json"

$jsonText = $schools | ConvertTo-Json -Depth 5
[System.IO.File]::WriteAllText($outJsonPath, $jsonText, [System.Text.Encoding]::UTF8)

Write-Host "Đã xuất file thành công tới:" $outJsonPath " (Size: " (Get-Item $outJsonPath).Length " bytes)"
