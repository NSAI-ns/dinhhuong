# Script generate schools_global_top1000.json
$ErrorActionPreference = "Stop"

$globalSchools = @(
  # ==================== TOP WORLDWIDE & MỸ (USA) ====================
  [PSCustomObject]@{
    id = "global_001"; rank = 1; name = "Massachusetts Institute of Technology (MIT)";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Cambridge, Massachusetts";
    strengths = @("Khoa học máy tính", "Kỹ thuật", "Vật lý", "Kinh tế", "Trí tuệ nhân tạo");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1520+, GPA 3.9+";
    scholarship_info = "Need-blind tài chính toàn phần cho sinh viên quốc tế"; website = "https://mit.edu"
  },
  [PSCustomObject]@{
    id = "global_002"; rank = 2; name = "Stanford University";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Stanford, California";
    strengths = @("Khoa học máy tính", "Kỹ thuật", "Kinh doanh & Khởi nghiệp", "Y khoa", "Luật");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1500+, GPA 3.9+";
    scholarship_info = "Hỗ trợ tài chính theo nhu cầu (Need-based aid)"; website = "https://stanford.edu"
  },
  [PSCustomObject]@{
    id = "global_003"; rank = 3; name = "Harvard University";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Cambridge, Massachusetts";
    strengths = @("Kinh tế", "Luật học", "Y sinh", "Khoa học chính trị", "Khoa học máy tính");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1510+, GPA 3.9+";
    scholarship_info = "Need-blind toàn diện 100% chi phí cho gia đình thu nhập dưới $85,000/năm"; website = "https://harvard.edu"
  },
  [PSCustomObject]@{
    id = "global_004"; rank = 4; name = "University of Oxford";
    continent = "Châu Âu"; country = "Anh"; city = "Oxford, Oxfordshire";
    strengths = @("Y học", "Triết học - Chính trị - Kinh tế (PPE)", "Luật", "Khoa học máy tính", "Toán học");
    requirements = "IELTS 7.5 (không kỹ năng dưới 7.0), A-Level A*A*A hoặc IB 39+";
    scholarship_info = "Học bổng Rhodes, Clarendon Fund tài trợ 100% học phí & sinh hoạt"; website = "https://ox.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_005"; rank = 5; name = "University of Cambridge";
    continent = "Châu Âu"; country = "Anh"; city = "Cambridge, Cambridgeshire";
    strengths = @("Toán học", "Kỹ thuật", "Khoa học tự nhiên", "Kinh tế", "Khoa học máy tính");
    requirements = "IELTS 7.5 (tối thiểu 7.0 từng kỹ năng), A-Level A*A*A, bài thi đầu vào STEP/TMUA";
    scholarship_info = "Học bổng Gates Cambridge, Cambridge Trust"; website = "https://cam.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_006"; rank = 6; name = "Imperial College London";
    continent = "Châu Âu"; country = "Anh"; city = "London";
    strengths = @("Kỹ thuật công nghệ", "Khoa học máy tính", "Y học", "Kinh doanh công nghệ");
    requirements = "IELTS 7.0+ (từng kỹ năng >= 6.5), A-Level A*A*A, SAT/AP";
    scholarship_info = "President's Undergraduate Scholarships"; website = "https://imperial.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_007"; rank = 7; name = "ETH Zurich (Swiss Federal Institute of Technology)";
    continent = "Châu Âu"; country = "Thụy Sĩ"; city = "Zurich";
    strengths = @("Kỹ thuật cơ khí", "Khoa học máy tính", "Vật lý", "Kiến trúc", "Kỹ thuật điện");
    requirements = "IELTS 7.0+ / TOEFL 100+, Tiếng Đức C1 (bậc Cử nhân) hoặc tiếng Anh (Thạc sĩ)";
    scholarship_info = "Excellence Scholarship & Opportunity Programme (ESOP)"; website = "https://ethz.ch"
  },
  [PSCustomObject]@{
    id = "global_008"; rank = 8; name = "National University of Singapore (NUS)";
    continent = "Châu Á"; country = "Singapore"; city = "Singapore";
    strengths = @("Kỹ thuật & Công nghệ", "Khoa học máy tính", "Kinh doanh quốc tế", "Luật", "Y khoa");
    requirements = "IELTS 6.5+ / TOEFL 92+, Điểm thi THPT Quốc gia xuất sắc (Toán, Lý/Hóa >= 9.0)";
    scholarship_info = "Học bổng ASEAN, NUS Global Merit Scholarship (toàn phần 100%)"; website = "https://nus.edu.sg"
  },
  [PSCustomObject]@{
    id = "global_009"; rank = 9; name = "University College London (UCL)";
    continent = "Châu Âu"; country = "Anh"; city = "London";
    strengths = @("Kiến trúc", "Giáo dục", "Y học", "Khoa học máy tính", "Tâm lý học");
    requirements = "IELTS 7.0+, A-Level AAA - A*A*A";
    scholarship_info = "UCL Global Undergraduate Scholarship"; website = "https://ucl.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_010"; rank = 10; name = "California Institute of Technology (Caltech)";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Pasadena, California";
    strengths = @("Vật lý", "Thiên văn học", "Kỹ thuật hàng không vũ trụ", "Khoa học máy tính");
    requirements = "TOEFL 105+, SAT 1530+, GPA 3.9+, Giải thưởng Olympic khoa học";
    scholarship_info = "Need-based financial aid cho sinh viên quốc tế"; website = "https://caltech.edu"
  },
  [PSCustomObject]@{
    id = "global_011"; rank = 11; name = "University of Pennsylvania (UPenn)";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Philadelphia, Pennsylvania";
    strengths = @("Tài chính & Kinh doanh (Wharton)", "Y sinh", "Luật", "Khoa học máy tính");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1500+, GPA 3.9+";
    scholarship_info = "Hỗ trợ tài chính theo nhu cầu 100% demonstrated need"; website = "https://upenn.edu"
  },
  [PSCustomObject]@{
    id = "global_012"; rank = 12; name = "University of California, Berkeley (UC Berkeley)";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Berkeley, California";
    strengths = @("Kỹ thuật điện & Khoa học máy tính (EECS)", "Kinh tế", "Hóa học", "Môi trường");
    requirements = "IELTS 7.0+ / TOEFL 90+, GPA 3.9+, Hoạt động ngoại khóa lãnh đạo xuất sắc";
    scholarship_info = "Regents' and Chancellor's Scholarship"; website = "https://berkeley.edu"
  },
  [PSCustomObject]@{
    id = "global_013"; rank = 13; name = "The University of Melbourne";
    continent = "Châu Úc"; country = "Úc"; city = "Melbourne, Victoria";
    strengths = @("Kinh doanh", "Luật", "Y khoa", "Khoa học máy tính", "Kỹ thuật y sinh");
    requirements = "IELTS 6.5 (không kỹ năng dưới 6.0), Điểm thi THPT Việt Nam >= 8.5/10 hoặc ATAR 85+";
    scholarship_info = "Melbourne International Undergraduate Scholarship (lên đến 100% học phí)"; website = "https://unimelb.edu.au"
  },
  [PSCustomObject]@{
    id = "global_014"; rank = 14; name = "Nanyang Technological University (NTU)";
    continent = "Châu Á"; country = "Singapore"; city = "Singapore";
    strengths = @("Trí tuệ nhân tạo", "Kỹ thuật vật liệu", "Kỹ thuật hóa học", "Kinh doanh công nghệ");
    requirements = "IELTS 6.5+, Điểm thi tốt nghiệp THPT top đầu các môn tự nhiên";
    scholarship_info = "Nanyang Scholarship (toàn phần 100% học phí, trợ cấp sinh hoạt)"; website = "https://ntu.edu.sg"
  },
  [PSCustomObject]@{
    id = "global_015"; rank = 15; name = "The University of Sydney";
    continent = "Châu Úc"; country = "Úc"; city = "Sydney, New South Wales";
    strengths = @("Dược & Y học", "Luật", "Kiến trúc", "Tài chính", "Khoa học dữ liệu");
    requirements = "IELTS 6.5 - 7.0, Điểm trung bình lớp 12 trường THPT chuyên >= 8.0 - 8.5";
    scholarship_info = "Sydney International Student Award (giảm 20% học phí toàn khóa)"; website = "https://sydney.edu.au"
  },
  [PSCustomObject]@{
    id = "global_016"; rank = 16; name = "University of New South Wales (UNSW Sydney)";
    continent = "Châu Úc"; country = "Úc"; city = "Sydney, New South Wales";
    strengths = @("Kỹ thuật công nghệ", "Năng lượng mặt trời", "Kế toán tài chính", "Khoa học máy tính");
    requirements = "IELTS 6.5 (không kỹ năng dưới 6.0), GPA lớp 12 >= 8.0";
    scholarship_info = "International Scientia Coursework Scholarship"; website = "https://unsw.edu.au"
  },
  [PSCustomObject]@{
    id = "global_017"; rank = 17; name = "University of Toronto";
    continent = "Châu Mỹ"; country = "Canada"; city = "Toronto, Ontario";
    strengths = @("Trí tuệ nhân tạo (Học sâu)", "Khoa học máy tính", "Kinh tế", "Y học", "Kỹ thuật");
    requirements = "IELTS 6.5 (không band nào dưới 6.0), GPA THPT >= 8.5/10";
    scholarship_info = "Lester B. Pearson International Scholarship (100% học phí, ăn ở 4 năm)"; website = "https://utoronto.ca"
  },
  [PSCustomObject]@{
    id = "global_018"; rank = 18; name = "Tsinghua University (Đại học Thanh Hoa)";
    continent = "Châu Á"; country = "Trung Quốc"; city = "Bắc Kinh";
    strengths = @("Kỹ thuật", "Khoa học máy tính", "Vật liệu", "Kiến trúc", "Kinh tế quản trị");
    requirements = "IELTS 6.5+ hoặc HSK 5 (tối thiểu 210 điểm), GPA 3.5+";
    scholarship_info = "Học bổng Chính phủ Trung Quốc CSC, Học bổng Schwarzman Scholars"; website = "https://tsinghua.edu.cn"
  },
  [PSCustomObject]@{
    id = "global_019"; rank = 19; name = "Peking University (Đại học Bắc Kinh)";
    continent = "Châu Á"; country = "Trung Quốc"; city = "Bắc Kinh";
    strengths = @("Khoa học tự nhiên", "Xã hội học", "Kinh tế học", "Ngôn ngữ văn học", "Luật");
    requirements = "HSK 6 hoặc IELTS 7.0+ (chương trình tiếng Anh), GPA 3.6+";
    scholarship_info = "Học bổng Yenching Academy, Học bổng CSC"; website = "https://pku.edu.cn"
  },
  [PSCustomObject]@{
    id = "global_020"; rank = 20; name = "The University of Tokyo (Đại học Tokyo)";
    continent = "Châu Á"; country = "Nhật Bản"; city = "Tokyo";
    strengths = @("Vật lý", "Kỹ thuật công nghệ", "Hóa học", "Khoa học sinh học", "Kinh tế");
    requirements = "IELTS 7.0+ (PEAK program) hoặc EJU + JLPT N1, GPA 3.7+";
    scholarship_info = "Học bổng MEXT Chính phủ Nhật Bản (toàn phần 100%), PEAK Scholarship"; website = "https://u-tokyo.ac.jp"
  },
  [PSCustomObject]@{
    id = "global_021"; rank = 21; name = "Columbia University";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "New York, New York";
    strengths = @("Báo chí & Truyền thông", "Kinh tế", "Luật", "Khoa học máy tính", "Khoa học thần kinh");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1510+, GPA 3.9+";
    scholarship_info = "Need-based financial aid cho sinh viên quốc tế"; website = "https://columbia.edu"
  },
  [PSCustomObject]@{
    id = "global_022"; rank = 22; name = "Princeton University";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Princeton, New Jersey";
    strengths = @("Toán học lý thuyết", "Vật lý", "Kinh tế học", "Khoa học máy tính", "Chính sách công");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1520+, GPA 3.95+";
    scholarship_info = "Need-blind 100% học phí và sinh hoạt phí không cần vay nợ (no-loan policy)"; website = "https://princeton.edu"
  },
  [PSCustomObject]@{
    id = "global_023"; rank = 23; name = "Yale University";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "New Haven, Connecticut";
    strengths = @("Luật học", "Khoa học chính trị", "Nghệ thuật kịch nghệ", "Lịch sử", "Sinh học");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1500+, GPA 3.9+";
    scholarship_info = "Need-blind toàn diện cho sinh viên quốc tế"; website = "https://yale.edu"
  },
  [PSCustomObject]@{
    id = "global_024"; rank = 24; name = "Cornell University";
    continent = "Châu Mỹ"; country = "Mỹ"; city = "Ithaca, New York";
    strengths = @("Quản trị khách sạn", "Kỹ thuật máy tính", "Nông nghiệp & Khoa học đời sống", "Kiến trúc");
    requirements = "IELTS 7.5+ / TOEFL 100+, SAT 1490+, GPA 3.85+";
    scholarship_info = "Tata Scholarship & Cornell Financial Aid"; website = "https://cornell.edu"
  },
  [PSCustomObject]@{
    id = "global_025"; rank = 25; name = "The University of Edinburgh";
    continent = "Châu Âu"; country = "Anh"; city = "Edinburgh, Scotland";
    strengths = @("Trí tuệ nhân tạo", "Y học", "Văn học Anh", "Tin học", "Ngôn ngữ học");
    requirements = "IELTS 6.5 - 7.0, A-Level AAA";
    scholarship_info = "Edinburgh Global Undergraduate Mathematics Scholarships"; website = "https://ed.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_026"; rank = 26; name = "Australian National University (ANU)";
    continent = "Châu Úc"; country = "Úc"; city = "Canberra, ACT";
    strengths = @("Khoa học chính trị", "Quan hệ quốc tế", "Khoa học môi trường", "Vật lý lý thuyết");
    requirements = "IELTS 6.5 (không kỹ năng dưới 6.0), GPA lớp 12 >= 8.5";
    scholarship_info = "ANU Chancellor’s International Scholarship (25% - 50% học phí)"; website = "https://anu.edu.au"
  },
  [PSCustomObject]@{
    id = "global_027"; rank = 27; name = "McGill University";
    continent = "Châu Mỹ"; country = "Canada"; city = "Montreal, Quebec";
    strengths = @("Y khoa", "Khoa học máy tính", "Thần kinh học", "Luật", "Âm nhạc");
    requirements = "IELTS 6.5+ (từng kỹ năng >= 6.0), GPA THPT >= 8.8/10";
    scholarship_info = "Major Entrance Scholarships (lên đến $12,000/năm cấp lại 4 năm)"; website = "https://mcgill.ca"
  },
  [PSCustomObject]@{
    id = "global_028"; rank = 28; name = "University of British Columbia (UBC)";
    continent = "Châu Mỹ"; country = "Canada"; city = "Vancouver, British Columbia";
    strengths = @("Khoa học dữ liệu", "Quản trị kinh doanh (Sauder)", "Lâm nghiệp", "Môi trường");
    requirements = "IELTS 6.5 (không kỹ năng dưới 6.0), GPA THPT >= 8.5";
    scholarship_info = "International Major Entrance Scholarship (IMES), Karen McKellin Leader of Tomorrow"; website = "https://ubc.ca"
  },
  [PSCustomObject]@{
    id = "global_029"; rank = 29; name = "Technical University of Munich (TUM)";
    continent = "Châu Âu"; country = "Đức"; city = "Munich, Bavaria";
    strengths = @("Kỹ thuật cơ khí", "Khoa học máy tính", "Kỹ thuật ô tô & Hàng không", "Trí tuệ nhân tạo");
    requirements = "Tiếng Đức TestDaF 4 / DSH 2 hoặc IELTS 6.5+ (chương trình quốc tế), chứng chỉ APS";
    scholarship_info = "Miễn học phí hoặc học phí danh nghĩa công lập Đức (~150€/kỳ sinh hoạt phí quản lý)"; website = "https://tum.de"
  },
  [PSCustomObject]@{
    id = "global_030"; rank = 30; name = "Seoul National University (SNU - Đại học Quốc gia Seoul)";
    continent = "Châu Á"; country = "Hàn Quốc"; city = "Seoul";
    strengths = @("Kỹ thuật bán dẫn", "Khoa học máy tính", "Quản trị kinh doanh", "Y khoa", "Ngoại giao");
    requirements = "TOPIK cấp 4+ hoặc IELTS 6.5+ / TOEFL 90+, GPA THPT >= 8.5/10";
    scholarship_info = "SNU Global Scholarship, Học bổng Chính phủ Hàn Quốc GKS (toàn phần 100%)"; website = "https://en.snu.ac.kr"
  },
  [PSCustomObject]@{
    id = "global_031"; rank = 31; name = "KAIST (Korea Advanced Institute of Science and Technology)";
    continent = "Châu Á"; country = "Hàn Quốc"; city = "Daejeon";
    strengths = @("Kỹ thuật điện & Bán dẫn", "Khoa học máy tính", "Kỹ thuật cơ khí", "Vật liệu nano");
    requirements = "IELTS 6.5+ / TOEFL 83+, Giảng dạy 100% bằng tiếng Anh, GPA Toán-Lý >= 9.0";
    scholarship_info = "KAIST International Student Scholarship: 100% học phí + trợ cấp sinh hoạt hàng tháng"; website = "https://kaist.ac.kr"
  },
  [PSCustomObject]@{
    id = "global_032"; rank = 32; name = "Kyoto University (Đại học Kyoto)";
    continent = "Châu Á"; country = "Nhật Bản"; city = "Kyoto";
    strengths = @("Hóa học (Nhiều giải Nobel)", "Y học tái tạo (Tế bào iPS)", "Toán học", "Kỹ thuật");
    requirements = "EJU + JLPT N1 hoặc IELTS 6.5+ (IUP program), GPA 3.7+";
    scholarship_info = "Kyoto iUP Scholarship: Miễn học phí 100% + 120,000 JPY/tháng"; website = "https://kyoto-u.ac.jp"
  },
  [PSCustomObject]@{
    id = "global_033"; rank = 33; name = "University of Waterloo";
    continent = "Châu Mỹ"; country = "Canada"; city = "Waterloo, Ontario";
    strengths = @("Khoa học máy tính (Chương trình Co-op lớn nhất thế giới)", "Kỹ thuật phần mềm", "Toán học tính toán", "Khoa học lượng tử");
    requirements = "IELTS 6.5 (Writing/Speaking 6.5), GPA THPT Toán >= 9.0";
    scholarship_info = "President's Scholarship of Distinction, Thu nhập từ kỳ thực tập Co-op ($40,000 - $80,000)"; website = "https://uwaterloo.ca"
  },
  [PSCustomObject]@{
    id = "global_034"; rank = 34; name = "The University of Manchester";
    continent = "Châu Âu"; country = "Anh"; city = "Manchester";
    strengths = @("Khoa học vật liệu Graphene", "Kỹ thuật hóa học", "Kinh tế", "Khoa học máy tính");
    requirements = "IELTS 6.5 - 7.0, A-Level AAA";
    scholarship_info = "Global Futures Scholarship"; website = "https://manchester.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_035"; rank = 35; name = "Monash University";
    continent = "Châu Úc"; country = "Úc"; city = "Melbourne, Victoria";
    strengths = @("Dược học (Top 2 thế giới)", "Kỹ thuật", "Kinh doanh & Kinh tế", "Giáo dục");
    requirements = "IELTS 6.5 (không kỹ năng dưới 6.0), GPA lớp 12 THPT chuyên >= 8.2";
    scholarship_info = "Monash International Leadership Scholarship (100% học phí)"; website = "https://monash.edu"
  },
  [PSCustomObject]@{
    id = "global_036"; rank = 36; name = "The University of Queensland (UQ)";
    continent = "Châu Úc"; country = "Úc"; city = "Brisbane, Queensland";
    strengths = @("Khoa học sinh học & Vắc xin", "Khai khoáng", "Khoa học môi trường", "Kinh doanh");
    requirements = "IELTS 6.5 (không ban nào dưới 6.0), GPA lớp 12 >= 8.0";
    scholarship_info = "UQ International Excellence Scholarship (giảm 25% học phí/năm)"; website = "https://uq.edu.au"
  },
  [PSCustomObject]@{
    id = "global_037"; rank = 37; name = "Delft University of Technology (TU Delft)";
    continent = "Châu Âu"; country = "Hà Lan"; city = "Delft";
    strengths = @("Kỹ thuật hàng không vũ trụ", "Kỹ thuật xây dựng dân dụng", "Kiến trúc", "Kỹ thuật máy tính");
    requirements = "IELTS 7.0 (tối thiểu 6.5 từng band), Điểm Toán-Lý THPT >= 8.5";
    scholarship_info = "Justus & Louise van Effen Excellence Scholarship"; website = "https://tudelft.nl"
  },
  [PSCustomObject]@{
    id = "global_038"; rank = 38; name = "University of Amsterdam (UvA)";
    continent = "Châu Âu"; country = "Hà Lan"; city = "Amsterdam";
    strengths = @("Truyền thông số & Báo chí (Top 1 thế giới)", "Tâm lý học", "Kinh tế lượng", "Khoa học máy tính");
    requirements = "IELTS 6.5 - 7.0, Tốt nghiệp THPT và hoàn thành năm 1 ĐH hoặc chứng chỉ IB/A-Level";
    scholarship_info = "Amsterdam Merit Scholarship (AMS)"; website = "https://uva.nl"
  },
  [PSCustomObject]@{
    id = "global_039"; rank = 39; name = "The University of Auckland";
    continent = "Châu Úc"; country = "New Zealand"; city = "Auckland";
    strengths = @("Kỹ thuật công nghệ", "Tâm lý học", "Kinh doanh", "Luật", "Khoa học máy tính");
    requirements = "IELTS 6.0 - 6.5, Điểm THPT Quốc gia >= 8.0/10";
    scholarship_info = "University of Auckland International Student Excellence Scholarship (lên đến NZD $10,000)"; website = "https://auckland.ac.nz"
  },
  [PSCustomObject]@{
    id = "global_040"; rank = 40; name = "National Taiwan University (Đại học Quốc gia Đài Loan - NTU)";
    continent = "Châu Á"; country = "Đài Loan"; city = "Đài Bắc";
    strengths = @("Kỹ thuật điện & Thiết kế bán dẫn (gắn liền TSMC)", "Khoa học máy tính", "Y học", "Quản trị kinh doanh");
    requirements = "IELTS 6.5+ hoặc TOCFL cấp 4+, GPA 3.5+";
    scholarship_info = "Học bổng MOE Đài Loan, NTU Outstanding International Graduate/Undergraduate Scholarship"; website = "https://ntu.edu.tw"
  },
  [PSCustomObject]@{
    id = "global_041"; rank = 41; name = "King's College London (KCL)";
    continent = "Châu Âu"; country = "Anh"; city = "London";
    strengths = @("Y khoa & Răng hàm mặt", "Luật", "Khoa học chính trị & Quan hệ quốc tế", "Tâm lý học");
    requirements = "IELTS 7.0 (không kỹ năng dưới 6.5), A-Level AAA";
    scholarship_info = "King's International Scholarship"; website = "https://kcl.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_042"; rank = 42; name = "London School of Economics and Political Science (LSE)";
    continent = "Châu Âu"; country = "Anh"; city = "London";
    strengths = @("Kinh tế học", "Tài chính", "Chính trị học", "Xã hội học", "Luật");
    requirements = "IELTS 7.0 (tối thiểu 7.0 từng kỹ năng), A-Level A*AA, TMUA cho ngành Kinh tế";
    scholarship_info = "LSE Undergraduate Support Scheme (lên tới toàn phần)"; website = "https://lse.ac.uk"
  },
  [PSCustomObject]@{
    id = "global_043"; rank = 43; name = "Ludwig Maximilian University of Munich (LMU Munich)";
    continent = "Châu Âu"; country = "Đức"; city = "Munich, Bavaria";
    strengths = @("Vật lý lượng tử", "Y học", "Khoa học sinh học", "Luật", "Kinh tế");
    requirements = "Tiếng Đức C1 (DSH-2 / TestDaF 4x4) hoặc tiếng Anh IELTS 7.0+";
    scholarship_info = "Miễn 100% học phí công lập Đức"; website = "https://lmu.de"
  },
  [PSCustomObject]@{
    id = "global_044"; rank = 44; name = "Heidelberg University (Đại học Heidelberg)";
    continent = "Châu Âu"; country = "Đức"; city = "Heidelberg, Baden-Württemberg";
    strengths = @("Y khoa (Lâu đời nhất nước Đức)", "Khoa học đời sống", "Vật lý", "Hóa học");
    requirements = "Chứng chỉ tiếng Đức C1, chứng nhận APS, GPA THPT >= 8.5";
    scholarship_info = "Miễn học phí cơ bản, học bổng DAAD"; website = "https://uni-heidelberg.de"
  },
  [PSCustomObject]@{
    id = "global_045"; rank = 45; name = "Sorbonne University";
    continent = "Châu Âu"; country = "Pháp"; city = "Paris";
    strengths = @("Toán học (Giải thưởng Fields)", "Vật lý", "Khoa học máy tính", "Văn học Pháp");
    requirements = "Tiếng Pháp DELF B2 / DALF C1 hoặc IELTS 6.5+";
    scholarship_info = "Học bổng Đại sứ quán Pháp (Học bổng Eiffel, France Excellence)"; website = "https://sorbonne-universite.fr"
  },
  [PSCustomObject]@{
    id = "global_046"; rank = 46; name = "Université PSL (Paris Sciences & Lettres)";
    continent = "Châu Âu"; country = "Pháp"; city = "Paris";
    strengths = @("Toán học", "Vật lý lý thuyết", "Kỹ thuật mỏ (Mines Paris)", "Kinh tế học");
    requirements = "DALF C1 / TCF hoặc IELTS 7.0+, bài thi kiểm tra tư duy logic toán";
    scholarship_info = "PSL Excellence Scholarship"; website = "https://psl.eu"
  },
  [PSCustomObject]@{
    id = "global_047"; rank = 47; name = "The University of Hong Kong (HKU)";
    continent = "Châu Á"; country = "Hồng Kông (Trung Quốc)"; city = "Hong Kong";
    strengths = @("Nha khoa (Top 2 thế giới)", "Tài chính ngân hàng", "Kiến trúc", "Luật", "Khoa học máy tính");
    requirements = "IELTS 6.5 (không kỹ năng dưới 6.0), Điểm thi tốt nghiệp THPT Việt Nam >= 9.0/10";
    scholarship_info = "HKU Foundation Entrance Scholarship (lên đến 100% học phí và sinh hoạt phí)"; website = "https://hku.hk"
  },
  [PSCustomObject]@{
    id = "global_048"; rank = 48; name = "Yonsei University";
    continent = "Châu Á"; country = "Hàn Quốc"; city = "Seoul";
    strengths = @("Kinh doanh quốc tế (Underwood International College)", "Truyền thông", "Kỹ thuật y sinh");
    requirements = "IELTS 6.5+ (cho hệ quốc tế UIC) hoặc TOPIK 4, GPA THPT >= 8.2";
    scholarship_info = "UIC Merit-based Scholarship (50% - 100% học phí 4 năm)"; website = "https://yonsei.ac.kr"
  },
  [PSCustomObject]@{
    id = "global_049"; rank = 49; name = "Korea University";
    continent = "Châu Á"; country = "Hàn Quốc"; city = "Seoul";
    strengths = @("Luật", "Quản trị kinh doanh", "Khoa học máy tính", "Kỹ thuật mạng");
    requirements = "IELTS 6.5+ hoặc TOPIK 4, GPA THPT >= 8.2";
    scholarship_info = "Korea University Global Leader Scholarship"; website = "https://korea.edu"
  },
  [PSCustomObject]@{
    id = "global_050"; rank = 50; name = "Tokyo Institute of Technology (Tokyo Tech)";
    continent = "Châu Á"; country = "Nhật Bản"; city = "Tokyo";
    strengths = @("Kỹ thuật điện tử viễn thông", "Khoa học vật liệu", "Kỹ thuật cơ khí", "Hóa học ứng dụng");
    requirements = "IELTS 6.5+ (chương trình GSEP bằng tiếng Anh) hoặc EJU Nhật Bản";
    scholarship_info = "Học bổng MEXT chỉ định trường, hỗ trợ nghiên cứu sinh"; website = "https://titech.ac.jp"
  }
)

# Thêm 50 trường đại học danh tiếng thế giới tiếp theo (Rank 51-100+)
$moreGlobal = @(
  @{ r=51; n="Johns Hopkins University"; c="Châu Mỹ"; cntry="Mỹ"; city="Baltimore, Maryland"; s=@("Y học & Y sinh (Top 1)", "Sức khỏe cộng đồng", "Kỹ thuật y sinh", "Quan hệ quốc tế"); req="IELTS 7.5+ / TOEFL 100+, SAT 1510+"; sch="Need-based financial aid"; web="https://jhu.edu" },
  @{ r=52; n="University of California, Los Angeles (UCLA)"; c="Châu Mỹ"; cntry="Mỹ"; city="Los Angeles, California"; s=@("Điện ảnh & Truyền hình", "Kinh tế", "Khoa học máy tính", "Tâm lý học"); req="IELTS 7.0+ / TOEFL 100+, GPA 3.9+"; sch="Học bổng sinh viên quốc tế chọn lọc"; web="https://ucla.edu" },
  @{ r=53; n="University of Chicago"; c="Châu Mỹ"; cntry="Mỹ"; city="Chicago, Illinois"; s=@("Kinh tế học (Trường phái Chicago)", "Toán học", "Xã hội học", "Chính sách công"); req="IELTS 7.5+ / TOEFL 100+, SAT 1520+"; sch="Odyssey Scholarship Program"; web="https://uchicago.edu" },
  @{ r=54; n="Carnegie Mellon University (CMU)"; c="Châu Mỹ"; cntry="Mỹ"; city="Pittsburgh, Pennsylvania"; s=@("Khoa học máy tính (Top 1)", "Trí tuệ nhân tạo", "Kỹ thuật phần mềm", "Kịch nghệ & Thiết kế"); req="IELTS 7.5+ / TOEFL 102+, SAT 1520+"; sch="CMU Institutional Aid"; web="https://cmu.edu" },
  @{ r=55; n="Georgia Institute of Technology (Georgia Tech)"; c="Châu Mỹ"; cntry="Mỹ"; city="Atlanta, Georgia"; s=@("Kỹ thuật công nghiệp", "Kỹ thuật cơ khí", "Khoa học máy tính", "Hàng không vũ trụ"); req="IELTS 7.0+ / TOEFL 95+, SAT 1480+"; sch="Georgia Tech International Scholarships"; web="https://gatech.edu" },
  @{ r=56; n="University of Washington (UW)"; c="Châu Mỹ"; cntry="Mỹ"; city="Seattle, Washington"; s=@("Khoa học máy tính (Allen School)", "Y sinh", "Khoa học dữ liệu", "Hải dương học"); req="IELTS 7.0+ / TOEFL 92+, GPA 3.8+"; sch="Purple & Gold Scholarship"; web="https://washington.edu" },
  @{ r=57; n="University of Illinois Urbana-Champaign (UIUC)"; c="Châu Mỹ"; cntry="Mỹ"; city="Urbana-Champaign, Illinois"; s=@("Kỹ thuật điện & máy tính", "Khoa học máy tính", "Vật lý", "Kế toán"); req="IELTS 7.0+, SAT 1480+"; sch="Undergraduate Global Scholarship"; web="https://illinois.edu" },
  @{ r=58; n="The University of Western Australia (UWA)"; c="Châu Úc"; cntry="Úc"; city="Perth, Western Australia"; s=@("Khai khoáng & Dầu khí", "Khoa học nông nghiệp", "Khoa học biển", "Kỹ thuật"); req="IELTS 6.5 (không môn nào dưới 6.0), GPA 8.0+"; sch="Global Excellence Scholarship (lên đến AUD $48,000)"; web="https://uwa.edu.au" },
  @{ r=59; n="The University of Adelaide"; c="Châu Úc"; cntry="Úc"; city="Adelaide, South Australia"; s=@("Công nghệ rượu vang & Nông nghiệp", "Kỹ thuật cơ điện tử", "Nha khoa", "Trí tuệ nhân tạo"); req="IELTS 6.5, GPA THPT >= 8.0"; sch="Global Academic Excellence Scholarship (giảm 50% học phí)"; web="https://adelaide.edu.au" },
  @{ r=60; n="University of Technology Sydney (UTS)"; c="Châu Úc"; cntry="Úc"; city="Sydney, New South Wales"; s=@("Khoa học máy tính & AI", "Thiết kế & Kiến trúc", "Điều dưỡng (Top 1 Úc)", "Truyền thông"); req="IELTS 6.5, GPA THPT >= 8.0"; sch="UTS International Undergraduate Scholarship (20% - 25% học phí)"; web="https://uts.edu.au" },
  @{ r=61; n="RMIT University Australia"; c="Châu Úc"; cntry="Úc"; city="Melbourne, Victoria"; s=@("Nghệ thuật & Thiết kế", "Kỹ thuật phần mềm", "Truyền thông & Báo chí", "Quản trị kinh doanh"); req="IELTS 6.5 (không kỹ năng dưới 6.0)"; sch="Future Leaders Scholarship (giảm 20% học phí toàn khóa)"; web="https://rmit.edu.au" },
  @{ r=62; n="University of Alberta"; c="Châu Mỹ"; cntry="Canada"; city="Edmonton, Alberta"; s=@("Trí tuệ nhân tạo (Amii)", "Kỹ thuật dầu khí", "Lâm nghiệp", "Y sinh học"); req="IELTS 6.5 (tối thiểu 6.0 từng phần), GPA >= 8.5"; sch="President's International Distinction Scholarship (lên đến $120,000)"; web="https://ualberta.ca" },
  @{ r=63; n="University of Bristol"; c="Châu Âu"; cntry="Anh"; city="Bristol"; s=@("Kỹ thuật hàng không vũ trụ", "Kỹ thuật dân dụng", "Khoa học máy tính", "Luật"); req="IELTS 6.5 - 7.0, A-Level AAA"; sch="Think Big Undergraduate Scholarship (lên đến £13,000/năm)"; web="https://bristol.ac.uk" },
  @{ r=64; n="University of Warwick"; c="Châu Âu"; cntry="Anh"; city="Coventry"; s=@("Kinh tế & Quản trị kinh doanh (WBS)", "Toán học", "Thống kê", "Khoa học sản xuất"); req="IELTS 7.0, A-Level A*AA"; sch="Warwick Undergraduate Global Excellence Scholarship"; web="https://warwick.ac.uk" },
  @{ r=65; n="Trinity College Dublin (TCD)"; c="Châu Âu"; cntry="Ireland"; city="Dublin"; s=@("Công nghệ thông tin (Hub châu Âu của Google/Meta)", "Dược học", "Văn học", "Miễn dịch học"); req="IELTS 6.5 (không band nào dưới 6.0), GPA >= 8.5"; sch="Global Excellence Undergraduate Scholarship (€5,000/năm)"; web="https://tcd.ie" },
  @{ r=66; n="KU Leuven"; c="Châu Âu"; cntry="Bỉ"; city="Leuven"; s=@("Kỹ thuật nano & Bán dẫn (hợp tác IMEC)", "Y sinh", "Luật quốc tế", "Triết học"); req="IELTS 6.5 - 7.0, GPA THPT >= 8.0"; sch="Học phí công lập ưu đãi châu Âu (~€1,100 - €4,000/năm)"; web="https://kuleuven.be" },
  @{ r=67; n="RWTH Aachen University"; c="Châu Âu"; cntry="Đức"; city="Aachen, North Rhine-Westphalia"; s=@("Kỹ thuật cơ khí hàng đầu châu Âu", "Kỹ thuật ô tô", "Luyện kim & Vật liệu", "Khoa học máy tính"); req="Tiếng Đức C1 (TestDaF 4), GPA Toán-Lý >= 8.5"; sch="Miễn học phí đại học công lập Đức"; web="https://rwth-aachen.de" },
  @{ r=68; n="Humboldt University of Berlin"; c="Châu Âu"; cntry="Đức"; city="Berlin"; s=@("Triết học", "Vật lý", "Khoa học tự nhiên", "Lịch sử"); req="Tiếng Đức DSH 2 / TestDaF 4"; sch="Miễn học phí"; web="https://hu-berlin.de" },
  @{ r=69; n="KTH Royal Institute of Technology"; c="Châu Âu"; cntry="Thụy Điển"; city="Stockholm"; s=@("Công nghệ thông tin", "Kỹ thuật điện", "Năng lượng bền vững", "Kiến trúc"); req="IELTS 6.5 (không kỹ năng dưới 5.5)"; sch="KTH Scholarship (miễn 100% học phí)"; web="https://kth.se" },
  @{ r=70; n="Lund University"; c="Châu Âu"; cntry="Thụy Điển"; city="Lund"; s=@("Kỹ thuật y sinh", "Kinh tế phát triển", "Khoa học môi trường", "Công nghệ nano"); req="IELTS 6.5+, GPA xuất sắc"; sch="Lund University Global Scholarship Programme"; web="https://lunduniversity.lu.se" },
  @{ r=71; n="Osaka University (Đại học Osaka)"; c="Châu Á"; cntry="Nhật Bản"; city="Osaka"; s=@("Miễn dịch học", "Robot hình người", "Kỹ thuật hóa học", "Nha khoa"); req="EJU hoặc IELTS 6.5+; GPA 3.5+"; sch="Học bổng MEXT, JASSO"; web="https://osaka-u.ac.jp" },
  @{ r=72; n="Tohoku University (Đại học Tohoku)"; c="Châu Á"; cntry="Nhật Bản"; city="Sendai, Miyagi"; s=@("Khoa học vật liệu (Top thế giới)", "Vật lý bán dẫn", "Kỹ thuật hàng không"); req="IELTS 6.5+ (FGL English Program), GPA 3.6+"; sch="President Fellowship MEXT"; web="https://tohoku.ac.jp" },
  @{ r=73; n="Waseda University (Đại học Waseda)"; c="Châu Á"; cntry="Nhật Bản"; city="Tokyo"; s=@("Khoa học chính trị & Kinh tế (SPSE)", "Kinh doanh quốc tế (SILS)", "Khoa học máy tính"); req="IELTS 6.5 - 7.0 / TOEFL 90+, SAT 1380+"; sch="Waseda University Partial/Full Tuition Scholarship"; web="https://waseda.jp" },
  @{ r=74; n="Keio University (Đại học Keio)"; c="Châu Á"; cntry="Nhật Bản"; city="Tokyo"; s=@("Y học", "Kinh tế (PEARL program)", "Chính sách môi trường (GIGA program)"); req="IELTS 6.5+, SAT, bài luận cá nhân"; sch="Keio University Scholarship for International Students"; web="https://keio.ac.jp" },
  @{ r=75; n="Sungkyunkwan University (SKKU)"; c="Châu Á"; cntry="Hàn Quốc"; city="Seoul & Suwon"; s=@("Kỹ thuật bán dẫn (Tài trợ bởi Samsung)", "Kỹ thuật phần mềm", "Dược học"); req="TOPIK 4 hoặc IELTS 6.5+; GPA THPT >= 8.0"; sch="Samsung Global Scholarship, SKKU Merit Scholarship"; web="https://skku.edu" },
  @{ r=76; n="POSTECH (Pohang University of Science and Technology)"; c="Châu Á"; cntry="Hàn Quốc"; city="Pohang"; s=@("Khoa học vật liệu", "Kỹ thuật hóa học", "Khoa học máy tính", "Vật lý"); req="IELTS 6.5+, GPA Toán-Lý >= 9.0"; sch="Học bổng toàn phần POSCO bao gồm học phí & sinh hoạt phí"; web="https://postech.ac.kr" },
  @{ r=77; n="Hanyang University"; c="Châu Á"; cntry="Hàn Quốc"; city="Seoul"; s=@("Kỹ thuật ô tô", "Kỹ thuật cơ khí", "Thiết kế thời trang", "Kinh doanh"); req="TOPIK 3-4 hoặc IELTS 6.0+"; sch="Hanyang International Excellence Awards (HIEA 50% - 100%)"; web="https://hanyang.ac.kr" },
  @{ r=78; n="Fudan University (Đại học Phục Đán)"; c="Châu Á"; cntry="Trung Quốc"; city="Thượng Hải"; s=@("Báo chí quốc tế", "Y học quốc tế", "Quan hệ quốc tế", "Kinh tế vi mô"); req="HSK 5-6 hoặc IELTS 6.5+"; sch="Học bổng Chính quyền Thượng Hải SGS, CSC"; web="https://fudan.edu.cn" },
  @{ r=79; n="Shanghai Jiao Tong University (Đại học Giao thông Thượng Hải)"; c="Châu Á"; cntry="Trung Quốc"; city="Thượng Hải"; s=@("Kỹ thuật cơ khí & Đóng tàu", "Kỹ thuật y sinh", "Khoa học máy tính"); req="HSK 5 (200 điểm) hoặc IELTS 6.5+"; sch="Học bổng SJTU Scholarship, CSC"; web="https://sjtu.edu.cn" },
  @{ r=80; n="Zhejiang University (Đại học Chiết Giang)"; c="Châu Á"; cntry="Trung Quốc"; city="Hàng Châu"; s=@("Trí tuệ nhân tạo (Hợp tác Alibaba)", "Kỹ thuật nông nghiệp", "Khoa học máy tính"); req="HSK 5 hoặc IELTS 6.5+"; sch="Học bổng CSC toàn phần"; web="https://zju.edu.cn" },
  @{ r=81; n="The Chinese University of Hong Kong (CUHK)"; c="Châu Á"; cntry="Hồng Kông (Trung Quốc)"; city="Hong Kong"; s=@("Kinh doanh & Tài chính", "Kỹ thuật thông tin", "Dịch thuật", "Y khoa"); req="IELTS 6.5, Điểm THPT Quốc gia >= 8.8"; sch="University Admissions Scholarship (toàn phần)"; web="https://cuhk.edu.hk" },
  @{ r=82; n="The Hong Kong University of Science and Technology (HKUST)"; c="Châu Á"; cntry="Hồng Kông (Trung Quốc)"; city="Hong Kong"; s=@("Khoa học máy tính & Dữ liệu", "Kỹ thuật điện", "Quản trị kinh doanh"); req="IELTS 6.5, Điểm thi THPT >= 8.8"; sch="HKUST International Undergraduate Scholarship"; web="https://hkust.edu.hk" },
  @{ r=83; n="National Tsing Hua University (NTHU)"; c="Châu Á"; cntry="Đài Loan"; city="Tân Trúc"; s=@("Kỹ thuật hạt nhân", "Khoa học vật liệu bán dẫn", "Khoa học máy tính"); req="TOCFL cấp 3-4 hoặc IELTS 6.0+"; sch="NTHU International Student Scholarship (miễn học phí + trợ cấp hàng tháng)"; web="https://nthu.edu.tw" },
  @{ r=84; n="National Yang Ming Chiao Tung University (NYCU)"; c="Châu Á"; cntry="Đài Loan"; city="Tân Trúc"; s=@("Thiết kế vi mạch IC", "Kỹ thuật y sinh", "Mạng máy tính và IoT"); req="TOCFL hoặc IELTS 6.0+; GPA >= 8.0"; sch="Học bổng NYCU Toàn phần"; web="https://nycu.edu.tw" },
  @{ r=85; n="University of Otago"; c="Châu Úc"; cntry="New Zealand"; city="Dunedin"; s=@("Y học & Nha khoa (Top 1 New Zealand)", "Khoa học sức khỏe", "Tâm lý học", "Du lịch"); req="IELTS 6.0 (không môn dưới 5.5), GPA THPT >= 8.0"; sch="Vice-Chancellor's International Scholarship (NZD $10,000)"; web="https://otago.ac.nz" },
  @{ r=86; n="Victoria University of Wellington"; c="Châu Úc"; cntry="New Zealand"; city="Wellington"; s=@("Luật", "Khoa học chính trị", "Thiết kế kỹ xảo điện ảnh (Weta Digital)", "Kiến trúc"); req="IELTS 6.0 - 6.5"; sch="Tongarewa Scholarship (NZD $5,000 - $10,000)"; web="https://wgtn.ac.nz" },
  @{ r=87; n="University of Canterbury"; c="Châu Úc"; cntry="New Zealand"; city="Christchurch"; s=@("Kỹ thuật công trình", "Khoa học lâm nghiệp", "Địa chất", "Kỹ thuật phần mềm"); req="IELTS 6.0, GPA THPT >= 8.0"; sch="UC International First Year Scholarship"; web="https://canterbury.ac.nz" },
  @{ r=88; n="University of Zurich"; c="Châu Âu"; cntry="Thụy Sĩ"; city="Zurich"; s=@("Kinh tế học", "Thần kinh học", "Miễn dịch học", "Luật"); req="Tiếng Đức C1 hoặc IELTS 7.0+ (chương trình sau ĐH)"; sch="Học bổng xuất sắc liên bang Thụy Sĩ (Swiss Government Excellence)"; web="https://uzh.ch" },
  @{ r=89; n="University of Vienna (Đại học Vienna)"; c="Châu Âu"; cntry="Áo"; city="Vienna"; s=@("Toán học", "Vật lý lượng tử", "Luật quốc tế", "Ngôn ngữ học"); req="Tiếng Đức B2-C1, chứng nhận APS"; sch="Học phí ưu đãi cho sinh viên quốc tế (~€726/học kỳ)"; web="https://univie.ac.at" },
  @{ r=90; n="Politecnico di Milano"; c="Châu Âu"; cntry="Ý"; city="Milan"; s=@("Kiến trúc", "Thiết kế công nghiệp", "Kỹ thuật xây dựng", "Kỹ thuật ô tô"); req="IELTS 6.5+, bài thi đầu vào TIL/TOL"; sch="Invest Your Talent in Italy, DSU Scholarship (miễn học phí + ăn ở)"; web="https://polimi.it" },
  @{ r=91; n="University of Helsinki"; c="Châu Âu"; cntry="Phần Lan"; city="Helsinki"; s=@("Khoa học máy tính (Nơi sinh của Linux)", "Giáo dục học", "Khoa học môi trường"); req="IELTS 6.5 (Writing >= 6.0), GPA >= 8.5"; sch="Finland Scholarship (100% học phí + €5,000 trợ cấp sinh hoạt)"; web="https://helsinki.fi" },
  @{ r=92; n="Aalto University"; c="Châu Âu"; cntry="Phần Lan"; city="Espoo"; s=@("Thiết kế sáng tạo", "Công nghệ thông tin", "Khởi nghiệp công nghệ (Slush)", "Kinh doanh"); req="IELTS 6.5+, SAT môn Toán"; sch="Aalto University Scholarship Programme (giảm 50% - 100% học phí)"; web="https://aalto.fi" },
  @{ r=93; n="University of Birmingham"; c="Châu Âu"; cntry="Anh"; city="Birmingham"; s=@("Kỹ thuật cơ khí", "Vật lý", "Khoa học máy tính", "Kinh doanh"); req="IELTS 6.5 (không kỹ năng dưới 6.0), A-Level AAB"; sch="Global Masters/Undergraduate Scholarship"; web="https://birmingham.ac.uk" },
  @{ r=94; n="University of Southampton"; c="Châu Âu"; cntry="Anh"; city="Southampton"; s=@("Kỹ thuật âm thanh", "Điện tử viễn thông & Quang tử", "Khoa học máy tính", "Hàng hải"); req="IELTS 6.5, A-Level AAA"; sch="Southampton International Merit Scholarship"; web="https://southampton.ac.uk" },
  @{ r=95; n="University of Leeds"; c="Châu Âu"; cntry="Anh"; city="Leeds"; s=@("Truyền thông & Báo chí", "Kỹ thuật hóa học", "Môi trường", "Luật"); req="IELTS 6.0 - 6.5, A-Level AAB"; sch="International Excellence Scholarship"; web="https://leeds.ac.uk" },
  @{ r=96; n="University of Glasgow"; c="Châu Âu"; cntry="Anh"; city="Glasgow, Scotland"; s=@("Kỹ thuật hàng không", "Y khoa", "Thú y", "Kinh tế học Adam Smith"); req="IELTS 6.5, A-Level AAA"; sch="Undergraduate Excellence Scholarship"; web="https://gla.ac.uk" },
  @{ r=97; n="Durham University"; c="Châu Âu"; cntry="Anh"; city="Durham"; s=@("Luật", "Khảo cổ học", "Văn học Anh", "Vật lý thiên văn"); req="IELTS 6.5 - 7.0, A-Level A*AA"; sch="Durham International Scholarship"; web="https://durham.ac.uk" },
  @{ r=98; n="University of Sheffield"; c="Châu Âu"; cntry="Anh"; city="Sheffield"; s=@("Kỹ thuật luyện kim & Vật liệu", "Khoa học máy tính", "Kiến trúc", "Tự động hóa"); req="IELTS 6.5, A-Level AAB"; sch="International Undergraduate Merit Scholarship (50% học phí)"; web="https://sheffield.ac.uk" },
  @{ r=99; n="Macquarie University"; c="Châu Úc"; cntry="Úc"; city="Sydney, New South Wales"; s=@("Kế toán & Tài chính", "Khoa học thống kê tính toán (Actuarial Studies)", "Ngôn ngữ học", "Marketing"); req="IELTS 6.5, GPA THPT >= 8.0"; sch="ASEAN Early Acceptance Scholarship (AUD $10,000/năm)"; web="https://mq.edu.au" },
  @{ r=100; n="Curtin University"; c="Châu Úc"; cntry="Úc"; city="Perth, Western Australia"; s=@("Kỹ thuật khoáng sản & Khai mỏ (Top 2 thế giới)", "Kỹ thuật dầu khí", "Kiến trúc", "Dược"); req="IELTS 6.5, GPA THPT >= 8.0"; sch="Curtin International Merit Scholarship (giảm 25% học phí năm đầu)"; web="https://curtin.edu.au" }
)

$idx = 51
foreach ($s in $moreGlobal) {
  $idStr = "global_" + $idx.ToString("000")
  $obj = [PSCustomObject]@{
    id = $idStr
    rank = $s.r
    name = $s.n
    continent = $s.c
    country = $s.cntry
    city = $s.city
    strengths = $s.s
    requirements = $s.req
    scholarship_info = $s.sch
    website = $s.web
  }
  $globalSchools += $obj
  $idx++
}

Write-Host "Tổng số trường đại học quốc tế hàng đầu:" $globalSchools.Count

$destDir = "c:\Users\kn900\OneDrive\Desktop\khkt\khkt\HTML\data"
if (!(Test-Path $destDir)) { New-Item -ItemType Directory -Force -Path $destDir }
$outJsonPath = Join-Path $destDir "schools_global_top1000.json"

$jsonText = $globalSchools | ConvertTo-Json -Depth 5
[System.IO.File]::WriteAllText($outJsonPath, $jsonText, [System.Text.Encoding]::UTF8)

Write-Host "Đã xuất file thành công tới:" $outJsonPath " (Size: " (Get-Item $outJsonPath).Length " bytes)"
