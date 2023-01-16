CREATE DATABASE MusicPlayer
USE MusicPlayer

create table MUSIC
(
	music_id char(4), -- id mv
	music_name nvarchar(100), -- ten bai hat
	music_author nvarchar(100), -- ten tac gia
	singer_name nvarchar(100), -- ten ca si
	music_country varchar(40), -- quoc gia
	music_category nvarchar(40), -- the loai
	music_time nvarchar(20), -- thoi luong
	music_release nvarchar(20), -- nam phat hanh
	music_freq int, -- luot xem
	music_lyric nvarchar(4000), -- lyric
	music_love_status int, -- trang thai yeu thich
	music_stars int, -- danh gia
)
-- TABLE HISTORY
create table HISTORY_MUSIC_LIST (
	history_music_id char(4), -- id history
	history_music_time datetime, -- id time
)

insert into HISTORY_MUSIC_LIST values('mv01', '2022-12-16 12:40:22')
insert into HISTORY_MUSIC_LIST values('mv02', '2022-12-14 11:40:22')
insert into HISTORY_MUSIC_LIST values('mv02', '2022-12-15 11:40:22')

SELECT * FROM HISTORY_MUSIC_LIST
SELECT [history_music_id], [music_name], [singer_name], [history_music_time] FROM HISTORY_MUSIC_LIST inner join MUSIC on history_music_id = music_id order by history_music_time desc

DROP TABLE HISTORY_MUSIC_LIST

-- TABLE PLAYLIST
create table PLAYLIST (
	playlist_id char(4),
	playlist_name nvarchar(100),
	playlist_time datetime,
	playlist_logo char(4)
	constraint PK_PLAYLIST primary key (playlist_id)
)

DROP TABLE PLAYLIST
create table PLAYLIST_DETAIL (
	playlist_id char(4),
	music_id char(4),
	music_playlist_time datetime,
	constraint PK_PLAYLIST_DETAIL primary key (playlist_id, music_id)
)
DROP TABLE PLAYLIST_DETAIL
-- INSERT VALUE PLAYLIST
insert into PLAYLIST values('pl01', 'PLAYLIST 01', '2022-12-14 11:29:22', 'lg01')
insert into PLAYLIST values('pl02', 'PLAYLIST 02', '2022-12-13 11:19:22', 'lg02')

insert into PLAYLIST values('pl03', 'PLAYLIST 03', '2022-12-14 11:10:22', 'lg03')
insert into PLAYLIST values('pl04', 'PLAYLIST 04', '2022-11-11 11:20:22', 'lg04')
insert into PLAYLIST values('pl05', 'PLAYLIST 05', '2022-10-04 11:30:22', 'lg05')

insert into PLAYLIST_DETAIL values('pl01', 'mv01', '2022-12-14 11:40:22')
insert into PLAYLIST_DETAIL values('pl01', 'mv02', '2022-12-15 11:40:22')

SELECT * FROM PLAYLIST
SELECT * FROM PLAYLIST_DETAIL
SELECT * FROM PLAYLIST_DETAIL inner join PLAYLIST on PLAYLIST_DETAIL.playlist_id = PLAYLIST.playlist_id
SELECT * FROM PLAYLIST_DETAIL inner join MUSIC on PLAYLIST_DETAIL.music_id = MUSIC.music_id

-- DROP TABLE MUSIC
DROP TABLE MUSIC
SELECT * FROM MUSIC
SELECT [music_id] , [music_name], [music_freq], [singer_name] FROM MUSIC Order by music_freq desc
-- Nhập dữ liệu cho MUSIC
insert into MUSIC values('mv35',N'Chúng Ta Của Hiện Tại',N'Duy Duc Nguyen / Thanh Tung Nguyen',N'Sơn Tùng M-TP', 'Vietnam', 'pop', '14:51', '2020', 0, N'Mùa thu mang giấc mơ quay về
Vẫn nguyên vẹn như hôm nào
Lá bay theo gió xôn xao
Chốn xưa em chờ
Đoạn đường ngày nào nơi ta từng đón đưa
Còn vấn vương không phai mờ
Giấu yêu thương trong vần thơ
Chúng ta...
Là áng mây bên trời vội vàng ngang qua
Chúng ta...
Chẳng thể nâng niu những câu thề
Cứ như vậy thôi, không một lời, lặng lẽ thế chia xa
Chiều mưa bên hiên vắng buồn,
Còn ai thương ai, mong ai?
Điều anh luôn giữ kín trong tim
Thương em đôi mắt ướt nhòa
Điều anh luôn giữ kín trong tim này
Thương em đâu đó khóc òa
Điều anh luôn giữ kín trong tim này
Ngày mai nắng gió, sương hao gầy
Có ai thương, lắng lo cho em?
(Whoo-whoo-whoo)
Điều anh luôn giữ kín trong tim
Thương em, anh mãi xin là
Điều anh luôn giữ kín trong tim này
Thương em vì thương thôi mà
Điều anh luôn giữ kín trong tim này
Dù cho nắng tắt, xuân thay màu
Héo khô đi tháng năm xưa kia
(Anh nguyện ghi mãi trong tim)
"Nắng vương trên cành héo khô những kỉ niệm xưa kia
Ngày mai, người luyến lưu về giấc mơ từng có, liệu có ta?"
Có anh nơi đó không?
Có anh nơi đó không?
(Liệu có ta?)
Chúng ta...
Là áng mây bên trời vội vàng ngang qua
Chúng ta...
Chẳng thể nâng niu những câu thề
Cứ như vậy thôi, không một lời, lặng lẽ thế chia xa
Chiều mưa bên hiên vắng buồn,
Còn ai thương ai, mong ai?
Điều anh luôn giữ kín trong tim
Thương em đôi mắt ướt nhòa
Điều anh luôn giữ kín trong tim này
Thương em đâu đó khóc òa
Điều anh luôn giữ kín trong tim này
Ngày mai nắng gió, sương hao gầy
Có ai thương, lắng lo cho em?
(Whoo-whoo-whoo)
Điều anh luôn giữ kín trong tim
Thương em, anh mãi xin là
Điều anh luôn giữ kín trong tim này
Thương em vì thương thôi mà
Điều anh luôn giữ kín trong tim này
Dù cho nắng tắt, xuân thay màu
Héo khô đi tháng năm xưa kia
(Anh nguyện ghi mãi trong tim)
No, no, no
No, no, no
Điều anh luôn giữ kín trong tim (Giữ kín trong tim này)
Giữ mãi trong tim này (Giữ mãi trong tim này)
Giữ mãi trong tim mình (Giữ mãi trong tim mình)
Giữ...
Có anh nơi đó không?
Có anh nơi đó không?
(Whoo-whoo-whoo-whoo)
Điều anh luôn giữ kín trong tim (No, No)
Điều anh luôn giữ kín trong tim này (No, No)
Điều anh luôn giữ kín trong tim này
(Ngày mai, nắng gió, sương hao gầy)
(Có ai thương, lắng lo cho em?)
Điều anh luôn giữ kín trong tim (No, No)
Điều anh luôn giữ kín trong tim này (No, No)
Điều anh luôn giữ kín trong tim này
(Dù cho nắng tắt, xuân thay màu)
(Héo khô đi tháng năm xưa kia)
(Anh nguyện ghi mãi trong tim)
Điều anh luôn giữ kín trong tim
Thương em đôi mắt ướt nhòa
Điều anh luôn giữ kín trong tim này
Thương em đâu đó khóc òa
Điều anh luôn giữ kín trong tim này
Ngày mai nắng gió, sương hao gầy
Có ai thương, lắng lo cho em?
(Whoo-whoo-whoo)
Điều anh luôn giữ kín trong tim
Thương em, anh mãi xin là
Điều anh luôn giữ kín trong tim này
Thương em vì thương thôi mà
Điều anh luôn giữ kín trong tim này
Dù cho nắng tắt, xuân thay màu
Héo khô đi tháng năm xưa kia
(Anh nguyện ghi mãi trong tim)', 0, 0)

insert into MUSIC values('mv34',N'Tết Đông Đầy',N'Kay Trần x Nguyễn Khoa x Duck V',N'Kay Trần x Nguyễn Khoa x Duck V', 'Vietnam', 'rap', '04:04', '2019', 0, N'Ngoài đường đông vui tràn ngập bao tiếng ca, xuân năm nay đã đến rồi em ơi 
Người người bên nhau tạm biệt năm cũ qua xuân yên vui về khắp bên mọi nhà 
Xuân năm nay đến, bao nhiêu câu chúc, chúc gia đình nhà nhà luôn hạnh phúc 
Hoa mai đua sắc cùng rạo rực đón xuân hy vọng một năm mới luôn bình an

Mẹ nấu bánh chưng xanh, làn gió khẽ lay đưa 
Cùng tiếng múa lân vang tùng cheng tùng cheng thích mê chưa 
Đàn cháu chúc ông bà nhiều sức khỏe vui tươi, nồng ấm cứ đong đầy, 
Cùng nhau chào xuân đến bên ta 
Tết đong đầy

Xuân năm nay vui hơn năm qua, phúc lộc tài về với muôn mọi nhà 
Tay trong tay anh và em luôn vui ca, phúc đong đầy là cái tết sum vầy 
Lá la là lá la là lá la la tết đong đầy 
Lá la là lá la là lá la la tết đong đầy

Thịt kho hột vịt năm nào nhìn mà không phát ngán 
Thêm bánh tét bánh chưng rồi các kiểu ăn xong đừng hỏi tại sao mập quá đáng 
Chú Tám bàn bên lại đứng lên, cô Tư cô Sáu ở kế bên 
Nhạc quẩy tưng bừng và năm cũ đã qua rồi năm mới anh em chúng ta lại lên

Xuân năm nay đến (lên luôn em ơi) 
Bao nhiêu câu chúc (lên luôn em ơi) 
Chúc gia đình nhà nhà luôn hạnh phúc (xuống làm gì rồi lại phải lên) 
Hoa mai đua sắc cùng rạo rực đón xuân hy vọng một năm mới luôn bình an (lên là lên là lên là lên)

Mẹ nấu bánh chưng xanh, làn gió khẽ lay đưa 
Cùng tiếng múa lân vang tùng cheng tùng cheng thích mê chưa 
Đàn cháu chúc ông bà nhiều sức khỏe vui tươi, nồng ấm cứ đong đầy 
Cùng nhau chào xuân đến bên ta 
Tết đong đầy

Xuân năm nay vui hơn năm qua, phúc lộc tài về với muôn mọi nhà 
Tay trong tay anh và em luôn vui ca, phúc đong đầy là cái tết sum vầy 
Lá la là lá la là lá la la tết đong đầy 
Lá la là lá la là lá la la tết đong đầy

Xuân năm nay đến, bao nhiêu câu chúc, chúc gia đình nhà nhà luôn hạnh phúc 
Hoa mai đua sắc cùng rạo rực đón xuân hy vọng một năm mới luôn bình an

Mẹ nấu bánh chưng xanh, làn gió khẽ lay đưa 
Cùng tiếng múa lân vang tùng cheng tùng cheng thích mê chưa 
Đàn cháu chúc ông bà nhiều sức khỏe vui tươi, nồng ấm cứ đong đầy 
Cùng nhau chào xuân đến bên ta 
Tết đong đầy

Xuân năm nay vui hơn năm qua, phúc lộc tài về với muôn mọi nhà. 
Tay trong tay anh và em luôn vui ca, phúc đong đầy là cái tết sum vầy. 
Lá la là lá la là lá la la tết đong đầy 
Lá la là lá la là lá la la tết đong đầy
', 0, 0)
insert into MUSIC values('mv33',N'Lớn Rồi Còn Khóc Nhè',N'Trúc Nhân',N'Trúc Nhân', 'Vietnam', 'pop', '05:04', '2019', 0, N'Ngày thơ bé có cánh đồng trưa nắng bên bờ sông
Thời tôi chưa biết vâng lời chỉ biết chơi và cười
Lời mẹ nói không nghe cho rằng luôn khắt khe
Mẹ nói con trai đừng khóc nhè
Ngu ngơ chạy theo đám bạn tôi đàn ca
Ấy thế mà khiếu văn nghệ nhất nhà
Bạn bè cố bao che câu nào cũng dễ nghe
Nó nói hay hơn lời của Mẹ
Uhm
Tôi ôm đàn và hát
Đi xa cùng bè bạn
Ước mơ con là vòng quanh thế gian
Tôi vô tình là thế
Hay quên gọi về mẹ
Ước mơ của mẹ là thấy con về
Tôi ôm đàn và hát
Đi xa cùng bè bạn
Ước mơ con là vòng quanh thế gian
Tôi vô tình là thế
Hay quên gọi về mẹ
Ước mơ của mẹ là thấy con về
Rồi tôi xơ xác đi nhiều khi mới quen người yêu
Thời tôi mới biết đi làm em cứ hay càm ràm
Người yêu nói tôi nghe tuy lời hơi khó nghe
Em nói hay hơn lời của mẹ
Thấm thoát lại thấy tôi chẳng thiếu điều chi
Lắm lúc lại thấy tôi chẳng có gì
Phải chăng lớn khôn hơn hay càng ngu ngốc hơn
Tôi muốn nghe thêm lời của mẹ
Uhm
Tôi ôm đàn và hát
Đi xa cùng bè bạn
Ước mơ con là vòng quanh thế gian
Tôi vô tình là thế
Hay quên gọi về mẹ
Ước mơ của mẹ là thấy con về
Tôi ôm đàn và hát
Đi xa cùng bè bạn
Ước mơ con là vòng quanh thế gian
Tôi vô tình là thế
Hay quên gọi về mẹ
Ước mơ của mẹ là thấy con về
Uhm
Giờ tôi nhớ những cánh đồng trưa nắng bên bờ sông
Giờ tôi mới biết vâng lời thương lắm khi mẹ cười
Giờ tôi muốn lắng nghe cho dù lời khắt khe
Không biết bao lâu còn có mẹ
Ngày thơ bé ngu ngơ ai chẳng hay khóc nhè
Nay lớn cớ sao lại khóc nhè

', 0, 0)
insert into MUSIC values('mv32',N'Đi Về Nhà',N' Đen Vâu, JustaTee',N' Đen Vâu, JustaTee', 'Vietnam', 'rap', '03:26', '2020', 0, N'… Đường về nhà là vào tim ta
Dẫu nắng mưa gần xa
Thất bát vang danh
Nhà vẫn luôn chờ ta
Đường về nhà là vào tim ta
Dẫu có muôn trùng qua
Vật đổi sao dời
Nhà vẫn luôn là nhà (đi về nhà)
… Ya lao vào đời và kiếm cơm lao vào đời tìm cơ hội
Những thành thị thường lấp lánh còn đêm thành thị thường trơ trọi
Như mọi đứa trẻ khác lớn lên muốn đi xa hoài (xa hoài)
Nhà thì vẫn ở yên đó đợi những đứa con đang ra ngoài
… Bước ra ngoài mới biết không ở đâu bằng ở nhà (ở nhà)
Biết có gì để mất trước khi sẵn sàng mở quà (mở quà)
Không phải là võ sĩ nhưng mà phải giỏi đấu đá
Nhiều khi kiệt sức chỉ vì gắng giữ mình không xấu xa
… Đôi lúc bỗng thấy đồng cảm với Mai An Tiêm
Bước chân ra là sóng gió chỉ có nhà mãi an yên
Ngoài kia phức tạp như rễ má và dây mơ (dây mơ)
Về nhà để có lúc cho phép mình được ngây thơ
… Mang theo bao náo nức lên chiếc xe này
Trọn một niềm thao thức xuân níu đêm ngày
Cùng dòng người trên phố mang sắc mai hương đào
Tìm về nơi ấm êm
… Đường về nhà là vào tim ta
Dẫu nắng mưa gần xa
Thất bát vang danh
Nhà vẫn luôn chờ ta
Đường về nhà là vào tim ta
Dẫu có muôn trùng qua (dẫu muôn trùng qua)
Vật đổi sao dời (vật đổi sao dời)
Nhà vẫn luôn là nhà
… Về ngôi nhà có góc vườn nhiều chó nhiều gà
Đám bạn nói con khó chiều
Mà lại thích gió trời hơn gió điều hoà ah
Về ăn cơm mẹ nấu về mặc áo mẹ may
Về đưa ba ra chợ mua cây đào cây mai về bày
… Cả năm trời làm việc nhiều khi rã rời như cái máy oh
Về nhà thấy áp lực nhẹ như bấc thổi cái là bay (thổi cái là bay)
Ấm êm hơn bếp lửa ngọt bùi hơn lúa non
Nhà vẫn luôn ở đó mong chờ những đứa con
… Dẫu cho mưa cho nắng vẫn không bao giờ nề hà
Hạnh phúc chỉ đơn giản là còn được về nhà oh
Hạnh phúc đi về nhà
Cô đơn đi về nhà
Thành công đi về nhà
Thất bại đi về nhà
… Mệt quá đi về nhà
Mông lung đi về nhà
Chênh vênh đi về nhà
Không có việc gì vậy thì đi về nhà
Không có việc gì vậy thì đi về nhà
Đi về nhà đi về nhà
… Đường về nhà là vào tim ta
Dẫu nắng mưa gần xa
Thất bát vang danh
Nhà vẫn luôn chờ ta
Đường về nhà là vào tim ta
Dẫu có muôn trùng qua
Vật đổi sao dời
Nhà vẫn luôn là nhà
… Nhà có thể lớn có thể nhỏ có thể không khang trang
Cha mẹ nào cũng muốn con được sống đàng hoàng
Lớn lên làm người mong một tương lai sáng lạng
Cặm cụi cả đời không bao giờ thấy than vãn
… Đường về nhà là vào tim ta
Dẫu nắng mưa gần xa
Thất bát vang danh
Nhà vẫn luôn chờ ta
Đường về nhà là vào tim ta
Dẫu có muôn trùng qua
Vật đổi sao dời
Nhà vẫn luôn là nhà
', 0, 0)
-- 
insert into MUSIC values('mv30',N'Nơi Này Có Anh',N'Sơn Tùng M-TP',N'Sơn Tùng M-TP', 'Vietnam', 'pop', '04:38', '2017', 0, N'Em là ai từ đâu bước đến nơi đây dịu dàng chân phương
Em là ai tựa như ánh nắng ban mai ngọt ngào trong sương
Ngắm em thật lâu
Con tim anh yếu mềm
Đắm say từ phút đó
Từng giây trôi yêu thêm
Bao ngày qua bình minh đánh thức xua tan bộn bề nơi anh
Bao ngày qua niềm thương nỗi nhớ bay theo bầu trời trong xanh
Liếc đôi hàng mi
Mong manh anh thẫn thờ
Muốn hôn nhẹ mái tóc
Bờ môi em anh mơ
Cầm tay anh dựa vai anh
Kề bên anh nơi này có anh
Gió mang câu tình ca
Ngàn ánh sao vụt qua nhẹ ôm lấy em
(Yêu em thương em con tim anh chân thành)
Cầm tay anh dựa vai anh
Kề bên anh nơi này có anh
Khép đôi mi thật lâu
Nguyện mãi bên cạnh nhau
Yêu say đắm như ngày đầu
Mùa xuân đến bình yên
Cho anh những giấc mơ
Hạ lưu giữ ngày mưa
Ngọt ngào nên thơ
Mùa thu lá vàng rơi
Đông sang anh nhớ em
Tình yêu bé nhỏ xin
Dành tặng riêng em
Còn đó tiếng nói ấy bên tai
Vấn vương bao ngày qua
Ánh mắt bối rối
Nhớ thương bao ngày qua
Yêu em anh thẫn thờ
Con tim bâng khuâng đâu có ngờ
Chẳng bao giờ phải mong chờ
Đợi ai trong chiều hoàng hôn mờ
Đắm chìm hòa vào vần thơ
Ngắm nhìn khờ dại mộng mơ
Đừng bước vội vàng rồi làm ngơ
Lạnh lùng đó làm bộ dạng thờ ơ
Nhìn anh đi em nha
Hướng nụ cười cho riêng anh nha
Đơn giản là yêu
Con tim anh lên tiếng thôi
Cầm tay anh dựa vai anh
Kề bên anh nơi này có anh
Gió mang câu tình ca
Ngàn ánh sao vụt qua nhẹ ôm lấy em
(Yêu em thương em con tim anh chân thành)
Cầm tay anh dựa vai anh
Kề bên anh nơi này có anh
Khép đôi mi thật lâu
Nguyện mãi bên cạnh nhau
Yêu say đắm như ngày đầu
Mùa xuân đến bình yên
Cho anh những giấc mơ
Hạ lưu giữ ngày mưa
Ngọt ngào nên thơ
Mùa thu lá vàng rơi
Đông sang anh nhớ em
Tình yêu bé nhỏ xin
Dành tặng riêng em
Oh nhớ thương em
Oh nhớ thương em lắm
Ah phía sau chân trời
Có ai băng qua lối về
Cùng em đi trên đoạn đường dài
Cầm tay anh dựa vai anh
Kề bên anh nơi này có anh
Gió mang câu tình ca
Ngàn ánh sao vụt qua nhẹ ôm lấy em
(Yêu em thương em con tim anh chân thành)
Cầm tay anh dựa vai anh
Kề bên anh nơi này có anh
Khép đôi mi thật lâu
Nguyện mãi bên cạnh nhau
Yêu say đắm như ngày đầu
Mùa xuân đến bình yên
Cho anh những giấc mơ
Hạ lưu giữ ngày mưa
Ngọt ngào nên thơ
Mùa thu lá vàng rơi
Đông sang anh nhớ em
Tình yêu bé nhỏ xin
Dành tặng riêng em', 0, 0)
insert into MUSIC values('mv29',N'Muộn Rồi Mà Sao Còn',N'Sơn Tùng M-TP',N'Sơn Tùng M-TP', 'Vietnam', 'pop', '04:48', '2021', 0, N'Muộn rồi mà sao còn
Nhìn lên trần nhà rồi quay ra, lại quay vào
Nằm trằn trọc vậy đến sáng mai
Ôm tương tư nụ cười của ai đó
Làm con tim ngô nghê như muốn khóc oà
Vắt tay lên trên trán mơ mộng
Được đứng bên em trong nắng xuân hồng
Một giờ sáng (một giờ sáng)
Trôi qua trôi nhanh kéo theo ưu phiền miên man
Âm thầm gieo tên em vẽ lên hi vọng
Đúng là yêu thật rồi
Còn không thì hơi phí này
Cứ thế loanh quanh, loanh quanh, loanh quanh
Lật qua lật lại hai giờ
Những ngôi sao trên cao (cao)
Là người bạn tâm giao (giao)
Lắng nghe anh luyên thuyên
Về một tình đầu đẹp tựa chiêm bao
Có nghe thôi đã thấy ngọt ngào
Đủ biết anh si mê em nhường nào
Ít khi văn thơ anh dạt dào
Bụng đói nhưng vui quên luôn cồn cào
Nắm đôi tay kiêu sa (sa)
Được một lần không ta? (Haizz)
Nghĩ qua thôi con tim trong anh
Đập tung lên rung nóc rung nhà
Hoá ra yêu đơn phương một người
Hoá ra khi tơ vương một người
Ba giờ đêm vẫn ngồi cười
Cứ ôm anh đi
Ôm anh đi, ôm anh đi, ôm anh đi
Ôm trong cơn mơ
Trong cơn mơ, trong cơn mơ, trong cơn mơ
Có thế cũng khiến anh vui điên lên (lá la là)
Ngỡ như em đang bên (lá la là)
Chấp bút đôi ba câu thơ ngọt ngào, muốn em đặt tên
Cứ ôm anh đi
Ôm anh đi, ôm anh đi, ôm anh đi
Ôm trong giấc mơ
Trong cơn mơ, trong cơn mơ, trong cơn mơ
Yêu đến vậy thôi, phát điên rồi làm sao giờ?
Haizz, chịu! (yah)
Đêm nay không ngủ (không ngủ, yah)
Tay kê lên tủ (yah)
Miên man anh tranh thủ
Chơi vơi suy tư bao nhiêu cho đủ (nà na ná)
Yêu em ngu ngơ mình tôi (tôi)
Yêu không quan tâm ngày trôi (trôi)
Yêu thương ánh mắt bờ môi (môi)
Yêu đơn phương vậy thôi (yah)
Lại còn chối (chối)
Con tim thẹn thùng đập lạc lối liên hồi
Đừng chày cối (cối)
Miệng cười cả ngày vậy là chết toi rồi
Ngày càng nhiều thêm (thêm)
Tình yêu cho em ngày càng nhiều thêm (thêm)
Muốn nắm đôi bàn tay đó một lần
Du dương chìm sâu trong từng câu ca dịu êm
Những ngôi sao trên cao (cao)
Là người bạn tâm giao (giao)
Lắng nghe anh luyên thuyên
Về một tình đầu đẹp tựa chiêm bao
Có nghe thôi đã thấy ngọt ngào
Đủ biết anh si mê em nhường nào
Ít khi văn thơ anh dạt dào
Bụng đói nhưng vui quên luôn cồn cào
Nắm đôi tay kiêu sa (sa)
Được một lần không ta? (Haizz)
Nghĩ qua thôi con tim trong anh
Đập tung lên rung nóc rung nhà
Hoá ra yêu đơn phương một người
Hoá ra khi tơ vương một người
Ba giờ đêm vẫn ngồi cười
Cứ ôm anh đi
Ôm anh đi, ôm anh đi, ôm anh đi
Ôm trong cơn mơ
Trong cơn mơ, trong cơn mơ, trong cơn mơ
Có thế cũng khiến anh vui điên lên (lá la là)
Ngỡ như em đang bên (lá la là)
Chấp bút đôi ba câu thơ ngọt ngào, muốn em đặt tên
Cứ ôm anh đi
Ôm anh đi, ôm anh đi, ôm anh đi
Ôm trong giấc mơ
Trong cơn mơ, trong cơn mơ, trong cơn mơ
Yêu đến vậy thôi, phát điên rồi, làm sao giờ?
Em xinh như một thiên thần (ya)
Như một thiên thần (ah-ah)
Như một thiên thần (thiên thần)
Ngỡ như em là thiên thần (thiên thần)
Xinh như một thiên thần (uh-huh)
Như một thiên thần (ah-hah-hah-ah-hah-ah)
Em xinh như một thiên thần (yeah)
Như một thiên thần (ah-ah)
Như một thiên thần
Ngỡ như em là thiên thần
Ngỡ như, ngỡ như, ngỡ như, ngỡ như, ngỡ như
Cứ ôm anh đi
Ôm anh đi, ôm anh đi, ôm anh đi
Ôm trong cơn mơ
Trong cơn mơ, trong cơn mơ, trong cơn mơ
Có thế cũng khiến anh vui điên lên (hey, lá la là)
Ngỡ như em đang bên (hey, lá la là)
Chấp bút đôi ba câu thơ ngọt ngào, muốn em đặt tên
Cứ ôm anh đi
Ôm anh đi, ôm anh đi, ôm anh đi
Ôm trong giấc mơ
Trong cơn mơ, trong cơn mơ, trong cơn mơ
Yêu đến vậy thôi, phát điên rồi làm sao giờ?

', 0, 0)
insert into MUSIC values('mv27',N'Đâu Ai Dám Hứa',N'Czee',N'Czee', 'Vietnam', 'pop', '03:44', '2021', 0, N'Chiều dần buông tan trường anh đến để chờ nàng thơ đi học ra
Thì ra em đang ngồi trên chiếc xe đạp của ai không phải anh
Anh như muốn tắt luôn công tắc gật đầu (tắt luôn công tắt gật đầu)
Vì trông thấy em đang cười đùa cùng ai khác
Cũng chẳng thể trách em chọn ai đó, hai mình đã có cái gì đâu
Người ta duyên, nhiều tiền, cao to, muôn phần hơn anh
Ôi giồi ôi, chán luôn!
Làm sao anh có thể có được người yêu xinh? (như em đó)
Làm sao anh có thể biết cảm giác em lúc này?
Chỉ anh mới thấy phút yếu đuối trong mắt em thơ ngây
Rất nhiều lần, mỗi ngày
Bên em là hạnh phúc, sao ai kia không quan tâm?
Thằng kia có hứa sẽ chăm lo, sẽ đón em mỗi chiều?
Dù cho việc đó có khó đến mức để em trông ngóng nhiều ngày
Rất nhiều ngày
Chỉ cần được nắm tay em đến muôn nơi
Đâu ai dám hứa
Đâu ai dám hứa
Hứa-ưa-ưa, hứa
Cũng chẳng thể trách em chọn ai đó, hai mình đã có cái gì đâu
Người ta duyên, nhiều tiền, cao to, muôn phần hơn anh
Ôi giồi ôi, chán luôn!
Làm sao anh có thể có được người yêu xinh?
Làm sao anh có thể biết cảm giác em lúc này?
Chỉ anh mới thấy phút yếu đuối trong mắt em thơ ngây
Rất nhiều lần, mỗi ngày
Bên em là hạnh phúc, sao ai kia không quan tâm?
Thằng kia có hứa sẽ chăm lo, sẽ đón em mỗi chiều?
Dù cho việc đó có khó đến mức để em trông ngóng nhiều ngày
Rất nhiều ngày
Chỉ cần được nắm tay em đến muôn nơi
Anh tuy nghèo thật
Không có nhiều tiền để lo cho em cuộc sống mới, no
Hôm nay là vậy
Liệu rằng ngày mai anh có được tất cả
Em có trở về bên anh?
Làm sao anh có thể biết cảm giác em lúc này?
Chỉ anh mới thấy phút yếu đuối trong mắt em thơ ngây (no, no)
Rất nhiều lần, mỗi ngày (em có trở về bên anh?)
Bên em là hạnh phúc sao ai kia không quan tâm?
Thằng kia có hứa sẽ chăm lo, sẽ đón em mỗi chiều?
Dù cho việc đó có khó đến mức để em trông ngóng nhiều ngày
Rất nhiều ngày
Chỉ cần được nắm tay em đến muôn nơi
Đâu ai dám hứa
Đâu ai dám hứa
Hứa oh-hoh

', 0, 0)
insert into MUSIC values('mv26',N'Bỏ Em Vào Ba Lô',N'Tân Trần',N'Tân Trần', 'Vietnam', 'pop', '03:07', '2021', 0, N'Đón em về nhà sau buổi chiều tăng ca
Đoạn đường vẫn thế sao hôm nay xa quá
Rồi bỗng nhiên em không muốn về nhà
Rồi bỗng nhiên anh cũng muốn đi xa
Mình sống giữa lòng Hà Nội nhộn nhịp em ơi
Mà đôi khi thấy lòng mình chơi vơi
Dòng người đảo điên đôi khi khiến ta rối bời
Hay là cứ theo anh mình đi đến nơi
Bỏ em vào balo đưa em ra khỏi thủ đô
Mình cùng rời thành phố tránh những làn khói ô tô
Xây một căn nhà gỗ ở mãi xa tận ngoại ô
Vứt hết những bão tố giữa chốn Hà Nội đông đúc xô bồ
Gạt bỏ muộn phiền đằng sau mình sống như là Đen Vâu
Về mình nuôi thêm cá buồn quá mình trồng thêm rau
Anh chẳng ngại điều gì đâu
Nước mắt mình tự mình lau
Tình cảm dù trước dù sau chỉ cần được có nhau
Đón em về nhà sau buổi chiều tăng ca
Đoạn đường vẫn thế sao hôm nay xa quá (sao hôm nay)
Rồi bỗng nhiên em không muốn về nhà (rồi bỗng nhiên em không muốn)
Rồi bỗng nhiên anh cũng muốn đi xa
Mình sống giữa lòng Hà Nội nhộn nhịp em ơi
Mà đôi khi thấy lòng mình chơi vơi
Dòng người đảo điên đôi khi khiến ta rối bời
Hay là cứ theo anh mình đi đến nơi
Bỏ em vào balo đưa em ra khỏi thủ đô
Mình cùng rời thành phố tránh những làn khói ô tô
Xây một căn nhà gỗ ở mãi xa tận ngoại ô
Vứt hết những bão tố giữa chốn Hà Nội đông đúc xô bồ
Gạt bỏ muộn phiền đằng sau mình sống như là Đen Vâu
Về mình nuôi thêm cá buồn quá mình trồng thêm rau
Anh chẳng ngại điều gì đâu
Nước mắt mình tự mình lau
Tình cảm dù trước dù sau chỉ cần được có nhau
Bỏ em vào balo đưa em ra khỏi thủ đô
Mình cùng rời thành phố tránh những làn khói ô tô
Xây một căn nhà gỗ ở mãi xa tận ngoại ô
Vứt hết những bão tố giữa chốn Hà Nội đông đúc xô bồ (đông đúc)
Gạt bỏ muộn phiền đằng sau mình sống như là Đen Vâu
Về mình nuôi thêm cá buồn quá mình trồng thêm rau
Anh chẳng ngại điều gì đâu
Nước mắt mình tự mình lau
Tình cảm dù trước dù sau chỉ cần được có nhau
Chỉ cần được có nhau

', 0, 0)
insert into MUSIC values('mv25',N'Chạy Khỏi Thế Giới Này Remix',N'Da LAB, Phương Ly',N'Da LAB, Phương Ly', 'Vietnam', 'remix', '04:55', '2022', 0, N'Nắm lấy tay em kệ những nỗi đau
Đôi chân chạy nhanh băng qua bao núi cao vực sâu
Xung quanh như phủ kín bóng đêm, sa mạc đã khoác lên
Một trời u tối khiến ta bỗng chốc như lạc lối
Ta sẽ không buông tay cho dù mai
Mặt trời rồi chẳng lên chiếu sáng đoạn đường không bóng ai
Em sẽ luôn kề bên anh
Cùng anh chạy khỏi thế giới này
Và Trái Đất hóa thành những giấc mơ êm
Chỉ cần được đi bên em mỗi đêm
Phía trước con đường kia dù trời giông tố mây đen kéo về
Chỉ cần có anh cầm chặt tay em
Đưa em bay vào những khung trời bình yên
Và ngàn nỗi đau sẽ tan biến mau
Chạy thoát ra khỏi nơi đây anh cùng em đến những vùng trời trôi theo áng mây
Cùng giơ cánh tay, tưởng tượng rằng mình tung cánh bay
Đừng chần chờ hãy tới đây cùng anh mình chạy khỏi thế giới này
Bỏ hết sau lưng những nỗi âu lo
Gạt hết suy tư, vấn vương, so đo
Mặc kệ nơi cuộc sống ai kia đổi thay
Và cùng tìm về một nơi xa, bay cùng gió
Mãi mãi là anh, yêu em không lý do
Anh sẽ luôn kề bên em, chạy về phía bên kia bầu trời
Nắm lấy tay em kệ những nỗi đau
Đôi chân chạy nhanh băng qua bao núi cao vực sâu
Xung quanh như phủ kín bóng đêm, sa mạc đã khoác lên
Một trời u tối khiến ta bỗng chốc như lạc lối
Ta sẽ không buông tay cho dù mai
Mặt trời rồi chẳng lên chiếu sáng đoạn đường không bóng ai
Em sẽ luôn kề bên anh
Cùng anh chạy khỏi thế giới này
Mỗi khi anh đang thấy chán
Em ở với anh chỉ yên lặng có được không?
Đưa ra bàn tay nhỏ xinh để anh bám
Để anh không thấy như chìm sâu dưới biển rộng
Bên ngoài cửa sổ cảnh vật đi ngang qua
Bên trong thế giới chỉ của riêng hai ta
Chẳng cần để ý rằng con phố cũ ngày nào vẫn ồn ào hôm nay sẽ đưa mình đi bao xa
Bên em từng phút với anh là vàng là ngọc
Kiếp người phù vân, còn nhân sinh là mộng
Mọi thứ sẽ qua, còn hai chúng ta
Chạy trốn thế giới qua đường ngang sang đường dọc
Ở bên cạnh nhau khi thế giới này sau lưng
Nắm chặt tay nhau cho đến khi Trái Đất dừng
Anh không quan tâm nếu bão dông nay chưa ngưng
Vì anh đã có nắng ấm trong mắt nâu em chứa đựng, ya
Anh sẽ nhắc em nhớ đến những cơn mơ em đã từng chờ
Vì đời cuốn trôi, ta đi biết đâu ai ngờ (cuốn trôi ta đi)
Ta sẽ nhắc nhau nhớ, ta sẽ không quên lý do tồn tại
Tựa vào vai anh, ta trốn khỏi thế giới này
Nắm lấy tay em kệ những nỗi đau
Đôi chân chạy nhanh băng qua bao núi cao vực sâu
Xung quanh như phủ kín bóng đêm, sa mạc đã khoác lên
Một trời u tối khiến ta bỗng chốc như lạc lối
Ta sẽ không buông tay cho dù mai
Mặt trời rồi chẳng lên chiếu sáng đoạn đường không bóng ai
Em sẽ luôn kề bên anh
Cùng anh chạy khỏi thế giới này
Nắm lấy tay anh, cùng nhau đi qua bao vực sâu (đã từng có những ngày cả thế giới đều như đang chống lại anh)
(Nhưng khi nhìn lại, đều luôn có em ở bên)
Sẽ luôn bên em, chạy khỏi thế giới này (nắm chặt đôi bàn tay anh, hmm)
(Đó là lúc anh biết, rồi mọi thứ sẽ ổn thôi, yeah)
Nguồn tin: Musixmatch
', 0, 0)
insert into MUSIC values('mv24',N'Tát Nước Đầu Đình Remix',N'Lynk Lee Ft.Binz (Sol X Cowvy Mix)',N'Lynk Lee Ft.Binz (Sol X Cowvy Mix)', 'Vietnam', 'remix', '03:37', '2019', 0, N'Binz:
Hôm qua anh tát nước đầu đình
Hôm qua anh thấy em một mình
Hôm qua em đi ngang qua xóm
Anh gọi to em ơiiii
Nhưng sao em làm thinh
Nói thật là em đẹp không cần chút son phấn nà
Em đẹp như là 1 bài dân ca
Thật ra anh cố tình bỏ áo lại 
Nếu em có nhặt được thì cho anh xin nha.

Lynk Lee:
Hôm qua tát nước đầu đình
Bỏ quên cái áo trên cành hoa sen
Em được thì cho anh xin
Hay là em để làm tin trong nhà
Áo anh sứt chỉ đường tà
Vợ anh chưa có, mẹ già chưa khâu
Áo anh sứt chỉ đã lâu
Mai mượn cô ấy về khâu cho cùng.

Khâu rồi anh sẽ trả công
Đến khi lấy chồng, anh sẽ giúp cho
Giúp em năm thúng xôi vò
Ba con lợn béo, một vò rượu tăm
Giúp em đôi chiếu em nằm
Đôi chăn em đắp, đôi chằm em đeo
Giúp cho quan tám tiền cheo,
Quan năm tiền cưới, lại đèo buồng cau

Binz:
Hey anh vô tình quên chiếc áo áo
Anh cố tình quên chiếc áo
Hey anh vô tình quên chiếc áo áo
Anh cố tình quên chiếc áo
Hey anh vô tình , vô tình, vô tình
Hay anh cố tình, cố tình, cố tình
Ý anh vô tình, vô tình, vô tình
Hay a cố tình, cố tình, cố tình.

Hôm qua anh tát nước đầu đình
Ngay khúc nối hai làng mình
Dô hò là hò dô ta
Không nơi nào mà đẹp bằng quê ta
Vắng người anh đứng đó hát ca
Nắng lên nóng quá anh cởi áo ra 
Um áo anh đã sứt chỉ đường tà
Vợ anh làm gì có, biết kiếm ở đâu ra
Em thì có thể không chút son phấn
Nhưng sự mộc mạc cũng là điều anh thích
Da anh thì có thể cháy nắng
Nhưng biết đâu được con tim anh vẫn còn trinh 
Anh không thể nào hát nhạc sến được như Chế Linh
Nhưng mà dân ca thì anh có thể thử 
Áo anh lỡ quên lại trên cành 
Em đi ngang có thấy nhặt dùm anh được chứ?
Để anh còn gặp em…..

Lynk Lee:
Khâu rồi anh sẽ trả công
Đến khi lấy chồng, anh sẽ giúp cho
Giúp em năm thúng xôi vò
Ba con lợn béo, một vò rượu tăm
Giúp em đôi chiếu em nằm
Đôi chăn em đắp, đôi chằm em đeo
Giúp cho quan tám tiền cheo
Quan năm tiền cưới, lại đèo buồng cau.

Binz:
Hey anh vô tình quên chiếc áo áo
Anh cố tình quên chiếc áo
Hey anh vô tình quên chiếc áo áo
Anh cố tình quên chiếc áo
Hey anh vô tình , vô tình, vô tình
Hay anh cố tình, cố tình, cố tình
Ý anh vô tình, vô tình, vô tình
Hay a cố tình, cố tình, cố tình.

Mấy đứa trẻ rong chơi đôi chân đất kìa
Và con người nơi đây họ chân thật
Có khi nào ta nhặt được chút duyên nè 
Có khi nào ta trở thành thân mật yeah 
Vì nếu không mai đây em lấy chồng 
Anh buồn như con chuồn chuồn kia em thấy không? 
Nên bây giờ anh muốn ngỏ lời trước
Anh tặng em cả tấm lòng này em lấy không?
Nói thiệt!!!!!!!!!!

Lynk Lee:
Hôm qua tát nước đầu đình
Bỏ quên cái áo trên cành hoa sen
', 0, 0)
insert into MUSIC values('mv23',N'Người Em Cố Đô Remix',N' Rum x Đaa x Toann',N' Rum x Đaa x Toann', 'Vietnam', 'remix', '02:46', '2021', 0, N'Ngẩn ngơ từ khi còn chân đất
Nằm mơ dòng thư tình ai cất
Ngậm ngùi khúc ca dao
Thương em anh xem
Ngàn mây làm cánh diều trông ngóng
Hồn say từ khi cài khăn đóng
Mẹ cha vun vén cho đôi tình nhân một ngày tương phùng
Lá vẫn chưa tàn
(Đông sang)
Gió vẫn mơ màng
Cho đàn em hát ca, vui mừng
(Xuân đến)
Nắng ngất ngây lòng người
Mang nụ cười cô gái cố đô về nơi quê hương thanh bình
Em dịu dàng bước đến bên tôi trao vị ngọt đôi môi
Có chút thương âm thầm xa xôi
Tôi đứng đó gieo hồn vào từng lời thơ
Hàn Mặc Tử về trên phố mơ
Em dịu dàng bước đến
Có chút thương âm thầm xa xôi
Tôi đứng đó
Hàn Mặc Tử về trên phố mơ
Bóng dáng thướt tha trong chiều thơ mộng
Ai về qua phố ghé lại bên sông
Thuyền trôi bèo dạt về mô có ngoái trông
Mà chừ mình ta thương nhớ mặc cho cảnh vật hững hờ
Nhạc buồn lệ sầu dễ rơi nơi hàng mi khi mùa mưa tới
Nhưng tình ta phơi phới, đẹp tựa lúc đôi mươi
Yêu em có lẽ là điều tuyệt vời nhất
Vì hình hài em đó vương vấn nghìn trùng sông Hương
Đôi ba lời ấm êm, có khiến em say mê
Tựa như muôn khúc hát dưới tiếng chuông chiều vang trong giấc mơ xa
Đồi thông cứ đứng im ơ thờ, trong nét bút đài trang
Em bước đi như vì sao sáng yêu kiều
Em dịu dàng bước đến bên tôi trao vị ngọt đôi môi
Có chút thương âm thầm xa xôi
Tôi đứng đó gieo hồn vào từng lời thơ
Hàn Mặc Tử về trên phố mơ
Em dịu dàng bước đến
Em dịu dàng bước đến bên tôi trao vị ngọt đôi môi
Có chút thương âm thầm xa xôi
Hey, na-na-na-na-na
Hey, na-na-na-na-na
Hàn Mặc Tử về trên phố mơ
Trăng thanh rọi bóng sông yên ắng
Tiếng ru ai hờn vờn tóc mây
Em về lại đây ôm trời mây
Duyên này cung phụng chốn nhân thế
Để lòng quyến luyến dù trăm bề
Ngàn năm vẫn còn kể
', 0, 0)
insert into MUSIC values('mv22',N'Mắt Nice Cha Cha Tune Remix',N'Duy Lion, Ssahita',N'Duy Lion, Ssahita', 'Vietnam', 'remix', '03:05', '2022', 0, N'Này em yêu ơi em đẹp xinh nhất đời
Vì trong tim anh em đẹp nhất thế gian
Lại đây bên anh người đẹp nhất là em
Mình vẫn bên nhau mình cùng đi ăn cà rem
Baby boo, love your eyes
Xinh đẹp như đôi mắt nice
Nghiện em như nicotine
Cưới em nha, không thể cai
Mãi nhìn em, quên ngày đêm
Như vì sao, có mình em
Em làm anh, điên vì em
Say vì em, chỉ là em
Babe (babe), love you (love you)
Vì sao mãi trong tim anh chỉ có đôi mắt nai
Đó là em (đó là em), chính là em (chính là em)
Từ lâu mãi trong tim anh chỉ có đôi mắt nai, its you
Một nụ hồng, một nụ hồng tặng cho mắt nai
Em thơ ngây bước đi trên con đường về
Một nụ hồng, một nụ hồng tặng cho mắt nai
Trông xinh xinh em thướt tha màu áo trắng tinh
Mới có hôm nào em còn thơ ngây
Bước trên con đường quen thuộc tới trường
Thế nhưng bây giờ em đã khôn lớn
Và đáng yêu, đáng yêu, đáng yêu
Từng nhịp, từng nhịp, từng nhịp theo bước chân
Em tung tăng hát ca trên con phố này
Để một người, một người ngồi mơ thẫn thờ
Và ngày ngày đợi chờ bóng em đi qua
Mới có hôm nào em còn nơi đây
Thế nhưng bây giờ em đã xa rồi
Để tôi một mình
Mãi ngồi nơi đây chờ bóng ai ai ai ai
Mắt nai ơi xin đừng đi nhé em
Mắt nai ơi xin đừng xa cách tôi
Dù cho ngày tháng có đi qua
Có những phong ba
Tôi vẫn ngồi mãi nơi đây
Mắt nai ơi xin đừng đi cha cha
Hát vang lên ô la la cha cha
Nào ta cùng bước cha cha cha
Nào ta cùng hát cha cha cha
Cùng vui ngày tháng mộng mơ
', 0, 0)
insert into MUSIC values('mv21',N'Em Iu Remix',N' Andree, Wxrdie, Bình Gold, V.A',N' Andree, Wxrdie, Bình Gold, V.A', 'Vietnam', 'remix', '02:37', '2022', 0, N'2pillz on the track yah

Thích nghe nhạc trap
Cô ấy bảo rằng cô ấy muốn làm ***
Cô ấy bảo cô ấy đã chán làm fan
Cô bảo trông mấy em kia rất là ghen
Tao thốt lên là damn
Cô ấy cứ cố mút nó là kem
Cô ấy cứ cuốn lấy tao như là nem
Vỗ 1 phát cô ấy kêu lên là slatt
Ok

Cô ấy thích tạo clone
Tự pr để follow lên cao hơn
Cô ấy dùng để chửi tao nghĩ tao non
Dí tao mấy quả phốt nghe xạo l... shhhhh
Cô ấy thích bạo mồm
Mấy con ảnh chỉnh còn méo hết cả hồn
Tao chỉ gặp cô ấy đúng 1 hôm
Cô ấy ướt đến mức tao tưởng là nồm
Ôi giời, anh biết là hôm đó em rất mệt
Nhưng anh biết là chắc chắn em muốn phệt
Anh là vị thi sĩ đang thưởng thức sắc đẹp
Những bộ phận này khiến anh mắc kẹt
Anh là vô địch sân đất nện
Cổng vào sân vận động của em chắc hẹp
Tham quan nội thất max đẹp
5 ngón tay anh vỗ đến khi nó sắp xẹp

Thích nghe nhạc trap
Cô ấy bảo rằng cô ấy muốn làm ***
Cô ấy bảo cô ấy đã chán làm fan
Cô bảo trông mấy em kia rất là ghen
Tao thốt lên là damnn
Cô ấy cứ cố mút nó như là kem
Cô cứ cuốn lấy tao như là nem
Vỗ 1 phát cô ấy kêu lên là slatt
Andree got a bang, no cap uhmmm

Em yêu, tay này xách Birkin (Hermes)
Em yêu, tay kia Richard Mille (wrist)
Em yêu nghe nhạc hay là phải twerking (twerk)
Em yêu thích cầm vô lăng của Rari (brrrr)
Chân em Dior, cổ em nạm đá (ice)
Khi em bước vào store shopping không cần nhìn giá (get it)
Swipe - swipe, thả nó vào giỏ (thả)
Em nuôi luôn cả trai và không thích thì em bỏ (ewww)
Thích chơi tiktok và selfie
Em thích tập gym và ăn uống healthy (thats fact)
Không thích nấu nướng, không thích dọn dẹp (no)
Em thích ra đường ăn ngon mặc đẹp (chơi)
Sáng em đi spa, tối em đi club (skrrt)
Chiều làm đường không đến đêm em nằm xấp (sniff sniff)
Trang sức lấp lánh như đèn pha (bling bling)
Em làm anh so sick như biến thể Delta

Em như là bida phăng
Anh phang em bi cần văng ba băng (băng băng băng)
Mông em tròn căng như trăng
Body em đa năng bên anh Bình Gold ga lăng (its me)
Có ảnh nhưng anh không đăng bởi vì (no)
Đám paparazzi nay căng (căng đét)
Mấy thằng hater non như măng
Tao đập cho hư răng
Xe tao đang dư xăng (brmm brmm)
Ghệ mày vừa đã biết tao bảnh bao (hooo)
Tìm vào tận facebook like ảnh tao (yea)
Mong là chỉ bị tao phệt cảnh cáo (chưa)
Giờ bọn mày mới biết tao chảnh sao (ouu)
Sập vào là cùng đi cảnh cao (vút)
Nhìn trần nhà nó ảnh - out
Chạm vào từng vùng như mảnh dao (slatt)
Thùng rồi lại còn phá sảnh wow

Thích nghe nhạc trap
Cô ấy bảo rằng cô ấy muốn làm ***
Cô ấy bảo cô ấy đã chán làm fan
Cô bảo trông mấy ẻm rất là ghen
Tao thốt lên là damn
Cô ấy cứ cố mút nó là kem
Cô ấy cứ cuốn lấy tao như là nem
Vỗ 1 phát cô ấy kêu lên là slatt
Ok
', 0, 0)
insert into MUSIC values('mv20',N'How Long',N'Charlie Otto Jr. Puth / Jacob Kasher Kasher / Justin Scott Franks',N'Charlie Puth', 'US/UK', 'pop', '03:18', '2018', 0, N'Alright
Ooh, yeah
Ill admit, I was wrong, what else can I say, girl?
Cant you blame my head and not my heart?
I was drunk, I was gone, that dont make it right, but
I promise there were no feelings involved, mmh
She said, "Boy, tell me honestly
Was it real or just for show?", yeah
She said, "Save your apologies
Baby, I just gotta know"
How long has this been goin on?
You been creepin round on me
While youre callin me "baby"
How long has this been goin on?
Youve been actin so shady (shady)
Ive been feelin it lately, baby
Ooo-oh (yeah)
Ooo-oh (encore)
Oooh-ooh-oh
Ill admit (Ill admit), its my fault (my fault), but you gotta believe me
When I say it only happened once, mmh
I try (I try), and I try (I try), but youll never see that
Youre the only I wanna love, oh, yeah
She said "Boy, tell me honestly" (honestly)
"Was it real or just for show?", yeah (real or just for show?)
She said, "Save your apologies" (apologies, yeah)
"Baby, I just gotta know"
How long has this been goin on?
You been creepin round on me (on me)
While youre callin me "baby" (baby)
How long has this been goin on?
Youve been actin so shady (shady)
Ive been feelin it lately (lately), baby
Ooo-oh (yeah)
Ooo-oh (encore)
Oooh-ooh-oh
How long has it been goin on, baby?
Ooo-oh (yeah)
Ooo-oh, you gotta go tell me now
Oooh-ooh-oh
She said, "Boy, tell me honestly
Was it real or just for show?", yeah
She said, "Save your apologies
Baby, I just gotta know"
How long has this been goin on? (on, on)
You been creepin round on me (on me)
While youre callin me "baby" (baby)
How long has this been goin on?
Youve been actin so shady (shady)
Ive been feelin it lately (lately), baby
How long has this been goin on? (ooh-ooh, yeah)
Youve been creepin round on me
How long has it been goin on, baby? Oh (ooo-oh)
How long has this been goin on? (You gotta go tell me now)
Youve been actin so shady (shady)
Ive been feelin it lately, baby
Dịch sang Tiếng Việt
', 0, 0)
insert into MUSIC values('mv19',N'Counting Stars',N'OneRepublic',N'OneRepublic', 'US/UK', 'pop', '04:17', '2013', 0, N'Lately, Ive been, Ive been losing sleep
Dreaming about the things that we could be
But baby, Ive been, Ive been praying hard
Said, "No more counting dollars, well be counting stars"
Yeah, well be counting stars
I see this life, like a swinging vine
Swing my heart across the line
And in my face is flashing signs
Seek it out and ye shall find
Old, but Im not that old
Young, but Im not that bold
And I dont think the world is sold
On just doing what were told
I feel something so right
Doing the wrong thing
And I feel something so wrong
Doing the right thing
I couldnt lie, couldnt lie, couldnt lie
Everything that kills me makes me feel alive
Lately, Ive been, Ive been losing sleep
Dreaming about the things that we could be
But baby, Ive been, Ive been praying hard
Said, "No more counting dollars, well be counting stars"
Lately, Ive been, Ive been losing sleep
Dreaming about the things we could be
But baby, Ive been, Ive been praying hard
Said, "No more counting dollars, well be, well be counting stars"
Yeah, yeah
I feel your love, and I feel it burn
Down this river, every turn
Hope is our four-letter word
Make that money, watch it burn
Old, but Im not that old
Young, but Im not that bold
And I dont think the world is sold
On just doing what were told
And I feel something so wrong
Doing the right thing
I couldnt lie, couldnt lie, couldnt lie
Everything that drowns me makes me wanna fly
Lately, Ive been, Ive been losing sleep
Dreaming about the things that we could be
But baby, Ive been, Ive been praying hard
Said, "No more counting dollars, well be counting stars"
Lately, Ive been, Ive been losing sleep
Dreaming about the things that we could be
But baby, Ive been, Ive been praying hard
Said, "No more counting dollars, well be, well be counting stars"
Oh, take that money, watch it burn
Sink in the river the lessons Ive learned
Take that money, watch it burn
Sink in the river the lessons Ive learned
Take that money, watch it burn
Sink in the river the lessons Ive learned
Take that money, watch it burn
Sink in the river the lessons Ive learned
Everything that kills me makes me feel alive
Lately, Ive been, Ive been losing sleep
Dreaming about the things that we could be
But baby, Ive been, Ive been praying hard
Said, "No more counting dollars, well be counting stars"
Lately, Ive been, Ive been losing sleep
Dreaming about the things that we could be
But baby, Ive been, Ive been praying hard
Said, "No more counting dollars, well be, well be counting stars"
Take that money, watch it burn
Sink in the river the lessons Ive learned
Take that money, watch it burn
Sink in the river the lessons Ive learned
Take that money, watch it burn
Sink in the river the lessons Ive learned
Take that money, watch it burn
Sink in the river the lessons Ive learned
', 0, 0)
insert into MUSIC values('mv18',N'The Nights',N'John William Feldmann / Jordan Suecof,...',N' Nightcore, Avicii', 'US/UK', 'pop', '02:33', '2014', 0, N'Once upon a younger year
When all our shadows disappeared
The animals inside came out to play
Went face to face with all our fears
Learned our lessons through the tears
Made memories we knew would never fade
One day, my father, he told me, "Son, dont let it slip away"
He took me in his arms, I heard him say
"When you get older your wild heart will live for younger days
Think of me if ever youre afraid"
He said, "One day, youll leave this world behind
So live a life you will remember"
My father told me when I was just a child
"These are the nights that never die"
My father told me
"When thunderclouds start pouring down
Light a fire they cant put out
Carve your name into those shining stars"
He said, "Go venture far beyond the shores
Dont forsake this life of yours
Ill guide you home no matter where you are"
One day, my father, he told me, "Son, dont let it slip away"
When I was just a kid, I heard him say
"When you get older your wild heart will live for younger days
Think of me if ever youre afraid"
He said, "One day, youll leave this world behind
So live a life you will remember"
My father told me when I was just a child
"These are the nights that never die"
My father told me
"These are the nights that never die"
My father told me
My father told me
', 0, 0)
insert into MUSIC values('mv17',N'Waiting for Love',N'Simon Aldred, Salem Al Fakir,...',N'Avicii', 'US/UK', 'pop', '03:49', '2014', 0, N'Where theres a will, theres a way, kind of beautiful
And every night has its day, so magical
And if theres love in this life, theres no obstacle
That cant be defeated
For every tyrant, a tear for the vulnerable
In every lost soul, the bones of a miracle
For every dreamer, a dream, were unstoppable
With something to believe in
Monday left me broken
Tuesday, I was through with hoping
Wednesday, my empty arms were open
Thursday, waiting for love, waiting for love
Thank the stars, its Friday
Im burning like a fire gone wild on Saturday
Guess I wont be coming to church on Sunday
Ill be waiting for love, waiting for love to come around
We are one of a kind, irreplaceable
How did I get so blind and so cynical?
If theres love in this life, were unstoppable
No, we cant be defeated
Monday left me broken
Tuesday, I was through with hoping
Wednesday, my empty arms were open
Thursday, waiting for love, waiting for love
Thank the stars, its Friday
Im burning like a fire gone wild on Saturday
Guess I wont be coming to church on Sunday
Ill be waiting for love, waiting for love to come around
', 0, 0)
insert into MUSIC values('mv16',N'Closer',N'The Chainsmokers',N' The Chainsmokers, Halsey', 'US/UK', 'pop', '04:05', '2016', 0, N'Hey, I was doing just fine before I met you
I drink too much and thats an issue
But Im Ok
Hey, tell your friends it was nice to meet them
But I hope I never see them again

I know it breaks your heart
Moved to the city in a broke down car
And four years, no calls
Now youre looking pretty in a hotel bar
And I, I, I, I, I cant stop
No, I, I, I, I, I cant stop

So baby pull me closer in the back seat of your Rover
That I know you cant afford
Bite that tattoo on your shoulder
Pull the sheets right off the corner
Of the mattress that you stole
From your roommate back in Boulder
We aint ever getting older

We aint ever getting older
We aint ever getting older

You, look as good as the day I met you
I forget just why I left you, I was insane
Stay, and play that Blink-182 song
That we beat to death in Tucson, OK

I know it breaks your heart
Moved to the city in a broke down car
And four years, no call
Now Im looking pretty in a hotel bar
And I, I, I, I, I cant stop
No, I, I, I, I, I cant stop

So baby pull me closer in the back seat of your Rover
That I know you cant afford
Bite that tattoo on your shoulder
Pull the sheets right off the corner
Of the mattress that you stole
From your roommate back in Boulder
We aint ever getting older

We aint ever getting older
We aint ever getting older

So baby pull me closer in the back seat of your Rover
That I know you cant afford
Bite that tattoo on your shoulder
Pull the sheets right off the corner
Of the mattress that you stole
From your roommate back in Boulder
We aint ever getting older

We aint ever getting older
No, we aint ever getting older
We aint ever getting older
No, we aint ever getting older
We aint ever getting older
We aint ever getting older
We aint ever getting older
No, we aint ever getting older (yeah)

We aint ever getting older (yeah)
No, we aint ever getting older

We aint ever getting older
No we aint ever getting older
', 0, 0)
insert into MUSIC values('mv15',N'Dat $tick',N'Ananta Pranaya / Brian Imanuel Soewarno',N'Rich Brian', 'US/UK', 'rap', '02:09', '2016', 0, N'12 in the morning, pop shells for a living
And berry gon smell blood trail every minute
Rogue wave on you niggas, no fail when I hit em
Every time I see a pig, I dont hesitate to kill em
Aint nobody give a fuck about a rule
Either get diplomas or a tool, Ima cool with my youngins
No bool when Im sprayin, this K at you fuckers
Fuck a gang affiliated with nothing but my name
Man, I dont give a fuck about a motherfuckin po
Ima pull up with that stick and hit your motherfuckin do
Man, I dont give a fuck about a motherfuckin po
Ima pull up with that stick and hit your motherfuckin do, yeah
People be starving
And people be killing for food with that crack and that spoon
But these rich motherfuckers they stay eatin good
Droppin wage, livin good
Holdin steel Glocks, but you been a bitch, suck a thick cock
Fuck a Crip walk, hit the strip like in Bangkok
Never ever see me ever trip bout a lil broad
See me on the TV screamin, "Bitch, you a damn fraud"
And you dont wanna fuck with a chigga like me
When I pull up in that Maserati
Better duck fore ya brain splatter on the concrete
Ima hit you with that .45, bullet hit yo neck round the bow tie
Lookin like a thriller, film a bitch
Ima go right back with the clip and I know you be shakin
Dont test me or I might just click at your noggin
Man, I dont give a fuck about a motherfuckin po
Ima pull up with that stick and hit your motherfuckin do
Man, I dont give a fuck about a motherfuckin po
Ima pull up with that stick and hit your motherfuckin do, yeah
', 0, 0)
insert into MUSIC values('mv14',N'Lalala',N' Y2K, bbno$',N'Y2K, bbno$', 'US/UK', 'rap', '02:41', '2013', 0, N'Did I really just forget that melody?
Naw, na, na, banana-na-na
Alright, da, da da-da-da-da
When I popped off, then your girl gave me just a little bit of lockjaw
Baby so cold, he from the north, he from the Canada
Bankroll so low, I got nothing else that I can withdraw
Ran out the door
I shine my wrist, it go like shashasha, shashasha

I got your bitch singing, "Lalalala, lalala"
I shine my wrist, it go like shashasha, shashasha
I got your bitch singing, "Lalalala, lalala"
How I stride like that?
Amex, no cap, eight hundred score
They wonder how, how I guap like that
I rap my lyrics when I perform

They wonder how, how I stride like that
Married to the grind, I brought my ring
Im corny but your girly want the dick
Modest with my jewels but check the bank
Finally got the money, say my thanks
When I popped off, then your girl gave me just a little bit of lockjaw
Baby so cold, he from the north, he from the Canada
Bankroll so low, I got nothing else that I can withdraw

Ran out the door
I shine my wrist, it go like shashasha, shashasha
I got your bitch singing, "Lalalala, lalala"
I shine my wrist, it go like shashasha, shashasha
I got your bitch singing, "Lalalala, lalala"
How I stride like that?
Ha-ha, Im at the bank again
They wonder how, how I guap like that
Pink whip with flames all on the side

They wonder how, how I stride like that
Got that Gucci on my body, now she tryna pipe me, woo
Popped a Lucy loosey goosey, sussy boy, I keep you cool
Got the paper, went to school, be careful who you callin a fool
Ayy, ha, ayy
When I popped off, then your girl gave me just a little bit of lockjaw
Baby so cold, he from the north, he from the Canada
Bankroll so low, I got nothing else that I can withdraw

Ran out the door
I shine my wrist, it go like shashasha, shashasha
I got your bitch singing, "Lalalala, lalala"
I shine my wrist, it go like shashasha, shashasha
I got your bitch singing, "Lalalala, lalala"
How I stride like that?
', 0, 0)
insert into MUSIC values('mv12',N'Exs Hate Me',N'B Ray, GREY D',N' B Ray, Masew, AMEE', 'Vietnam', 'rap', '03:51', '2020', 0, N'All my exs hate me,
And I hate them back,
And its all because of me,
And its all because of me.

Anh xin được dùng bài nhạc này gửi những người yêu cũ,
Rằng là,
Nếu bây giờ em đang yên vui cùng người yêu mới,
Anh cầu chúc em có những thứ không thể tìm thấy được từ nơi anh,
Và, ngày anh nhận được thiệp đám cưới từ em nó sẽ tới nhanh,
Chúc em có thật nhiều bữa sáng trên giường ngủ,
Chúc em luôn chọn được cho mình 1 lối đi khác trên đường cũ,
Chúc em có 1 gia đình nhỏ mang lại niềm vui cho em,
Và những đứa con có đôi mắt biếc và nụ cười tươi như em,
Yeah,
Thật lòng đó, anh cảm thấy tự hào về em,
Nhìn em xem, sự thành công biết bao người thèm,
Em đã thoát khỏi những con quỷ, anh vô tình san sớt,
Dù anh biết em không hề trách, và em đã nói là tình nguyện mang bớt,
Chúc em vui, chúc em có thật nhiều may mắn,
Chúc cho tất cả những ván bài chia đến tay em đều là cây thắng,
Và anh biết, những lời này đến từ anh là sự ngạc nhiên,
Nhưng có người nói hạnh phúc là khi ta đổi hận thù để nhận bình yên,
Because...

All my exs hate me,
And I hate them back,
And its all because of me,
And its all because of me.

Anh xin được dùng bài nhạc này gửi những người yêu cũ,
Rằng là,
Nếu em vẫn chưa thể yên ấm bên người yêu mới,
Anh cầu mong em sẽ tha thứ những điều ngược đãi mà anh đã làm,
Và, có 1 người tình nguyện vì em mà làm những điều mà anh chả ***,
Anh biết là anh đã hứa, không để em nước mắt dâng tràn,
Có lẽ tín dụng duy nhất anh có là khi nó nằm trong thẻ ngân hàng,
Anh ước 1 người nào đó, khiến con tim em hân hoan,
Và họ sẽ mang được đến cho em những điều mà em luôn xứng đáng,
Mong em khác, không đem những vết thương này theo mãi sau,
Anh xin lấy lại những câu nói khi cãi nhau,
Em cần biết, khi đau lòng thì anh mới buông lời ác,
Thật buồn cười, kẻ tổn thương lại muốn tổn thương người khác,
Right?
Nhưng mà, đó là Bảo, right?
Luôn làm lỗi, và lấy lý do là không hoàn hảo, right?
Khổng Tử nói là “với trả thù, luôn phải đào 2 mồ chôn”
Có lẽ vì thế gần đây anh có cảm giác mình không chỗ trốn,
Because...

Nếu ta quay về như lúc xưa ngày còn bên nhau
Thì chớ buông ra vài câu nói làm tim em thêm đau
Bước trên con đường nay đã không còn anh chung lối
Xoá đi thôi, nhẹ nhàng cuốn trôi
', 0, 0)
insert into MUSIC values('mv11',N'Eyes',N' G.Ducky',N' G.Ducky', 'Vietnam', 'rap', '02:32', '2021', 0, N'Ừ đúng vậy, đôi mắt từng làm cho anh phải ngỡ trăm năm
Những kỉ niệm giờ như bọt nước và nó đang vỡ lăn tăn
Sau tất cả em chọn cách không nhìn anh nữa
Và anh tự hỏi rằng điều đó có phần nào giúp cho anh cảm thấy đỡ ăn năn
Đừng bắt anh phải đưa tay lên và nói với em là thôi nào
Đây là câu chuyện của đôi mắt làm ơn đừng đưa đôi môi vào
Tâm hồn này, đẹp như mùa thu Paris
Nhưng mà điều em cần là một chàng trai đèo em trên DuCat!
Em hợp với nó, điều này anh không phủ nhận
Em hợp với thế giới đôi mắt người ta trao nhau là thủ thuật
Anh thì hợp với âm nhạc, yêu âm nhạc là đủ bận
Và đó cũng là lí do anh hay ngủ gật, vào ngày chủ nhật
Em à, anh cũng không cần gì to tát
Đôi mắt dành cho em, con tim dành cho rap
Nhưng khi nỗi buồn em có, long lanh trên đôi mi
Thì tôi muốn nói điều em cần làm bây giờ là quên tôi đi

[Ver 2:]
Lên trên sân khấu cảm nhận thật nhiều điều
Mà cụ thể là những chuyện bình thường thì ta làm sai
Em mang đôi mắt u sầu, chẳng còn là thường ngày ừ và điều này lại xé con tim ta ra làm hai
Khi ta quay lưng đi trên con phố, giữa những ánh đèn xe qua
Là khi ta mang âm nhạc, qua những đôi tai người nghe
Là khi mà ta đã thích, thì hôm nay ta đi thi thôi
Có thể ta không Big, nhưng chắc chắn ta là City Boy
I never try to hold you down
But baby let me come anh show you now
Là dù vài lần thì mình, nàng chịu nhiều thiệt thòi
Anh tin đôi mắt ta trao nhau, vẫn luôn là điều tuyệt vời
Trong tâm anh không muốn em buồn
Trong tâm anh đâu muốn em sầu
Anh chỉ muốn được rap, khi nào mà tài còn
Và để rồi hôm nay anh dơ tay chào Sài Gòn
Baby i just dont wanna see what have done to me
Thats why I closed my eyes x2
', 0, 0)
insert into MUSIC values('mv10',N'Em Là Bad Girl Trong Bộ Váy Ngắn',N'Niz, Trần Huyền Diệp',N'Niz, Trần Huyền Diệp', 'Vietnam', 'rap', '04:08', '2021', 0, N'Em là bad girl, thích đi chơi khuya
Em thích bay lắc, người toàn hơi bia
Chụp hình vú đít và thích seo phì (SF)
*** toàn đại gia, thích đồ eo vì (LV)
Anh là trai ngoan từ trong nhà ra ngoài ngõ
Làm em say mê vì anh có cái tài nhỏ
Mốt chiếc váy ngắn từ từ bước vào trong bar
Thứ em đốt để em bay, vẫn không có gì ngoài cỏ YEAH!!

Anh biết, anh biết em là thiên thần
Còn anh chỉ là học sinh chuyên cần
Nhưng trong tim em luôn có tên anh
Không ai bên em thì cứ bên anh
Em không thích về nhà trước 10h đêm
Em nói em cô đơn luôn có sẵn người chờ em
Em nói là người thì ai cũng có quyền yêu
Bởi vì làm như vậy em mới có tiền tiêu
****Em là bad girl trong bộ váy ngắn
Ăn chơi ngoài đường không sợ cháy nắng
Chỉ cần có tiền em không phân bì
You are bad girl
You like money**** (x2)
Em thử sức với đời năm 15 chơi hàng trắng
Sau đó cuộc đời em phải trải qua muôn vàn đắng
Và bàn thắng khi mà em bước vào tình trường
Và hằng tháng *** chục thằng là điều bình thường
Em cảm thấy hối hận rồi bật khóc trên gường ngủ
Sau đó lại trở về nhà như là ngựa *** đường cũ
Em nói là đời chẳng có gì để lo
Bởi vì em là em trong những lần phê cỏ
Có hình xăm ở trên da
Viết cả tên mẹ tên cha
Những cơn phê không thể tả, khiến cho đêm nay em không muốn về nhà
Bong bóng kẹo ke cần cỏ
Muốn em care cần mẹo nhỏ
Cuộc đời không buồn không vui
Nhưng mà quan trọng là phải đầy tiền trong túi
Em không thích, mình được tặng bông hồng
Thứ mà em cần là đầy tiền trong phòng
Và money là thứ em luôn để trong lòng
Và tài khoản của em chưa bao giờ là 0 đồng
Bởi vì em, đẹp từng centimet
Khiến cho bao thằng tự hiến thân đi chết
Nhưng mà ra sao thì em vẫn dont care
Và em trở thành cave khi tuổi đời còn trẻ
****Em là bad girl trong bộ váy ngắn
Ăn chơi ngoài đường không sợ cháy nắng
Chỉ cần có tiền em không phân bì
You are bad girl
You like money**** (x2)

(Yeah yeah)
Mặc bộ váy ngắn rồi em đi vào
Liếc qua thấy em lại phải say chào
Em bảo bad girl chính là em đấy
Nếu anh không thích đừng có dây vào (wow)
DJ chơi nhạc ở trên
Xuống làm gì rồi lại phải lên?
Anh quay sang hỏi tên
Anh ơi nhớ làm gì rồi lại phải quên?
(YEAH) Anh đây là dân chơi
Đồ anh mua thì không phải trả góp
Em có bán ví đâu
Mà sao các anh cứ tìm chỗ để bóp?
Ngắm nhìn em thật lâu (thế á?)
Đẹp như này thì chết (uầy)
Nhìn vòng 3 của em là biết
Sóng bắt đầu từ đâu (ai biết?)
Tiền nhà anh có bao nhiêu?
Có bao nhiêu thì anh cứ đem ra (đem ra)
Anh không phải sợ nghe mắng
Vì thay vào đó là tiếng em la (uhm)
Nếu để mà cưa anh đổ
Em chỉ cần tốn trong vài 3 câu
Gặp anh là vắt chân lên cổ
Nhưng không có nghĩa là em chạy đi đâu (no no)
Cứ phố lên đèn là em lên bar
Em chỉ việc chơi mà không phải trả
Bad girl như em thì không đại trà và
Điều em thích là vết tím trên da
Anh muốn thử vị lạ
Cứ call và em sẽ tới nhanh thôi (ok!)
Gái ngoan chỉ là mánh chán
Còn em hư để làm anh vui (anh vui)
****Em là bad girl trong bộ váy ngắn
Ăn chơi ngoài đường không sợ cháy nắng
Chỉ cần có tiền em không phân bì**
***You are bad girl
You like money*** (x3,14)
', 0, 0)
-- 19/12

insert into MUSIC values('mv31',N'Có Hẹn Với Thanh Xuân',N'Nicky / Grey D',N'Monstar', 'Vietnam', 'pop', '04:28', '2021', 0, N'Cũng đã đến lúc nghẹn ngào
Nói lời chào đến mối tình đầu
Một cuốn sách ngọt ngào mà đôi ta từng viết
Em như bông hoa mặt trời
Có nụ cười đốt cháy lòng người
Có lẽ em là thanh xuân của tôi
Từ ngày mai tôi phải đi
Hẹn gặp em trong một khi khác
Kỷ niệm đôi ta đành ghi nhớ trong tim
Này người ơi em đừng quên
Lần đầu tiên ta bước đến
Mình đã chìm vào vùng trời yêu thương
Nếu lỡ mai đây vô tình thấy được nhau
Hãy để cho tôi nói với em lời chào
Nếu trái tim ta chung nỗi nhớ đong đầy
Hẹn gặp lại em ngày tháng của sau này
Hoo-uh-uh-ah uh-ah-uh hoo-uh-uh-ah
Hoo-uh-uh-ah ha-ah-ah hoo-yeah
Hoo-uh-uh-ah uh-ah-uh hoo-uh-uh-ah
Hẹn gặp lại em ngày tháng của sau này
Oh oh, tôi giờ đang nơi xa
Bận lòng nhiều điều về em (worry about you)
Em bình tâm hơn chưa
Hay là nước mắt nhòe suốt đêm
Một ngày của em dạo này như thế nào?
Thường đi quán quen hay đến nơi ồn ào
Từ ngày tụi mình kết thúc bây giờ cuộc sống em ra sao?
Thôi thì mong em đừng khóc nữa
Đừng bỏ bữa những ngày sau
Không còn anh, bao điều vẫn tốt như xưa
Mong em ngủ ngoan không hoài nghĩ nữa
Đừng thức trắng đêm trầm tư
Vì anh chẳng muốn thấy người mà mình yêu đau
Nếu lỡ mai đây vô tình thấy được nhau
Hãy để cho tôi nói với em lời chào
Nếu trái tim ta chung nỗi nhớ đong đầy
Hẹn gặp lại em ngày tháng của sau này
Nếu lỡ mai đây vô tình thấy được nhau
Hãy để cho tôi nói với em lời chào
Nếu trái tim ta chung nỗi nhớ đong đầy
Hẹn gặp lại em ngày tháng của sau này (muốn nói với em thật nhiều)
Hoo-uh-uh-ah uh-ah-uh hoo-uh-uh-ah
Hoo-uh-uh-ah ha-ah-ah hoo
Hoo-uh-uh-ah uh-ah-uh hoo-uh-uh-ah
Hẹn gặp lại em ngày tháng của sau này', 0, 0)

insert into MUSIC values('mv04',N'Twerk It Like Miley',N'Bobby Robinson / Brandon O Bryant Beal/...',N' Brandon Beal', 'US/UK', 'rap', '02:40', '2016', 0, N'Hey, girl, this your song, lets see that badonkadonkdonk
Imma try to do the things that you dont
Baby, its your party, I just wanna play
Whats that sound? Whats that thang thats got me like wow?
Im tryna beat, beat it up 12 rounds
Girl, look at that body, I just gotta say
When you back, back, back, back, back it up
And you drop it down low
And you pick, pick, pick. pick, pick it up
Girl, Im ready to blow
Imma stack, stack, stack, stack, stack it up
And Im spendin it all
When I throw, throw, throw, throw it up
Start twerkin like Miley

Twerkin like Miley
Start twerkin like Miley

Twerkin like Miley
You got everybody in this club lookin at you, girl
How you move that thing from side to side
*** everybody in this club, cause I got you, girl
Imma tell you whats goin down tonight
Girl, its gon rain, thats that sound
Thats that *** thats got you like wow
And would you let me beat, beat 12 rounds
Baby, look at that body, I just gotta say
When you back, back, back, back, back it up
And you drop it down low
And you pick, pick, pick. pick, pick it up
Girl, Im ready to blow
Imma stack, stack, stack, stack, stack it up
And Im spendin it all
When I throw, throw, throw, throw it up
Start twerkin like Miley
Twerkin like Miley
Start twerkin like Miley

Twerkin like Miley

Now you wore them jeans
So I can see that thong, thong, thong, thong, thong, thong
Thong, thong, thong, thong, thong
Pop it like Miley
And dont forget that tongue, tongue, tongue, tongue, tongue
Tongue, tongue, tongue, tongue, tongue
20 more shots
Then I pass out
Thats what Im aimin for
Baby, let me drown
When I wake up
Still in the club
Lookin at the DJ
Like turn my *** up
So when the beat, beat, beat, beat, beat drop
Get your ass on the floor
Start twerkin like Miley
Start twerkin like Miley
(Go and get it, get it, girl)
Start twerkin like Miley
Start twerkin like Miley
Right beside me
Start twerkin like Miley
Twerk it like Miley
Start twerkin like Miley
', 0, 0)
insert into MUSIC values('mv05',N'You Are My Crush',N'Nguyên Jenda',N'Quân A.P, Nguyên Jenda', 'Vietnam', 'pop', '04:33', '2021', 0, N'Bước xuống phố lang thang
Thấy em lướt qua nhẹ nhàng
Vóc dáng ấy khiến anh hoang mang
Trái tim đã yêu vội vàng.

Đông sang rồi
Mà lòng anh đây vẫn cứ mãi đơn côi
Nếu như, nếu như đến nay
Em vẫn còn dang dở, lonely.

Hãy để cho anh được che chở em đi
Mặc dù bề ngoài anh chẳng bảnh bao
Chiều dài thì chẳng được cao
Nhưng tình yêu của anh đã trao em.

Em tính thế nào?
Vậy thì đừng để cho anh phải cô đơn
Khiến cho đôi môi khô hơn
Ta đến bên nhau thôi.

Gió đông se lạnh không có ai bên cạnh
Hãy đến bên anh này
Đừng rời xa anh vì anh yêu em
Nhớ nhung nụ cười mong bao đêm.

Anh chỉ muốn bên cạnh người
Biết là xa vời mà vẫn cứ mong đợi mãi
Because you are my crush oh oh
Crush oh oh.

You are my crush oh oh
Crush oh oh
You are my crush oh oh
Crush oh oh.

You are mine no no
Because you are mine, no no
Youre mine, because you are mine
Youre mine, no no.

Anh có một cô bạn thân
Cô ấy tên là đơn, cô đơn
Mỗi khi cô ấy ghé thăm
Lại làm anh nhớ em nhiều hơn.

Bắt đầu ngày mới
Trong vòng tay anh
Muốn có một bờ vai nhỏ nhỏ
Có em người con gái tuyệt vời nhất.

Đó là do số anh đỏ đỏ
Bởi vì em xinh đứng một mình
Nhiều người rắc thính em vẫn còn tỉnh
Chờ em thích giống như cực hình.

Nỗi buồn thầm kín nên cứ lặng thinh
Đợi một ngày tươi không cần tưới
Anh sẽ báo phụ huynh
Yêu nhau lâu chán rồi chuyển sang cưới.

Rồi kể từ đó cùng đón bình minh, ah
Em hãy đến với người yêu em
Đừng đến với người em yêu
Xã hội này có rất nhiều kiểu.

Lỡ gặp phải người xấu
Thì hậu quả ai chịu?
Nói nãy giờ không biết em có hiểu
Đơn giản anh đã yêu rất nhiều?

Một ngày em tỏ vẻ ra khó chịu
Cả thế giới của anh buồn thiu
Nếu như đến nay em vẫn còn dang dở
Lonely.

Hãy để cho anh được che chở em đi
Mặc dù bề ngoài anh chẳng bảnh bao
Chiều dài thì chẳng được cao
Nhưng tình yêu của anh đã trao em.

Em tính thế nào?
Vậy thì đừng để cho anh phải cô đơn
Khiến cho đôi môi khô hơn
Ta đến bên nhau thôi.

Gió đông se lạnh không có ai bên cạnh
Hãy đến bên anh này
Đừng rời xa anh vì anh yêu em
Nhớ nhung nụ cười mong bao đêm.

Anh chỉ muốn bên cạnh người
Biết là xa vời mà vẫn cứ mong đợi mãi
Because you are mine
Ngày nhớ đêm mong em có biết không.

Đừng tránh xa cho anh thấy đau lòng
Rồi vẫn hi vọng
Dù giữa đêm mùa đông, no
Đừng để cho anh phải cô đơn.

Khiến cho đôi môi khô hơn
Ta đến bên nhau thôi
Gió đông se lạnh không có ai bên cạnh
Hãy đến bên anh này.

Đừng rời xa anh vì anh yêu em
Nhớ nhung nụ cười mong bao đêm
Anh chỉ muốn bên cạnh người
Biết là xa vời mà vẫn cứ mong đợi mãi,

Because you are my crush oh oh
Crush oh oh
You are my crush oh oh
Crush oh oh.

You are my crush oh oh
Crush oh oh
You are mine no no
Because you are mine, no no.

Youre mine
Because you are mine
Youre mine, no no
You are my crush.
', 0, 0)


insert into MUSIC values('mv06',N'Low',N'Flo Rida, T-Pain',N'Flo Rida, T-Pain', 'US/UK', 'rap', '03:50', '2007', 0, N'[Intro - T-Pain]
Mmmmmmmm
Let me talk to em
Let me talk to em
Let it rain
Mmmmmmm
Let me talk to em
Cmon!

[Chorus (T-Pain):]
Shawty had them apple bottom jeans (jeans)
Boots with the fur (with the fur)
The whole club was looking at her
She hit the floor (she hit the floor)
Next thing you know
Shawty got low, low, low, low, low, low, low, low
Them baggy sweat pants
And the Reeboks with the straps (with the straps)
She turned around and gave that big booty a smack (hey)
She hit the floor (she hit the floor)
Next thing you know
Shawty got low, low, low, low, low, low, low, low

[Flo-Rida]
I aint never seen nothing thatll make me go
This crazy all night spending my dough
Had the million dollar vibe and a body to go
Them birthday cakes they stole the show
So sexual
She was flexible professional
Drinking X&O
Hold up, wait a minute, do I see what I think? Whoa
Did her thing. I seen shawty get low
Aint the same when its up that close
Make it rain Im making it snow
Work the pole I got the bank roll
Ima say that I prefer them no clothes
Im into that I love women exposed
She threw it back at me I gave her more
Cash aint a problem I know where it go
She had them

[Chorus (T-Pain)]

[Flo-Rida]
Hey shawty what I gotta do to get you home
My jeans filled with guap and theyre ready for showing
Cadillacs laid back for the sexy grown
Patron on the rocks thatll make you moan
One stack (come on), two stacks (come on), three stacks (come on)
Now thats three grand
What you think Im playing, baby girl, Im the man
Im dealing rubber bands
Thats what I told her
Her legs on my shoulder
I knew it was over
That Henny and Cola got me like a soldier
She ready for Rover, I couldnt control her
So lucky on me I was just like a clover
Shawty was hot like a toaster
Sorry but I had to fold her
Like a pornography poster
She showed her

[Chorus (T-Pain)]

[Flo-Rida]
Whoa, shawty, yeah, she was worth the money
Little mama took my cash
And I aint want it back
The way she bent that back
Got all them paper stacks
Tattoo above her crack
I had to handle that
I was on it, sexy woman
Let me show it make me want it
Two in the morning Im zoned in
Them Rosé bottles foaming
She wouldnt stop
Made it drop
Shawty dipped that pop and lock
Had to break her off that guap
Gal was fine just like my glock

[Chorus (T-Pain)]
', 0, 0)
insert into MUSIC values('mv07',N'Hãy Trao Cho Anh',N'Sơn Tùng M-TP, Snoop Dogg',N'Sơn Tùng M-TP, Snoop Dogg', 'Vietnam', 'pop', '04:06', '2020', 0, N'HÃY TRAO CHO ANH
Sơn Tùng M-TP
Bóng ai đó nhẹ nhàng vụt qua nơi đây
Quyến rũ ngây ngất loạn nhịp làm tim mê say
Cuốn lấy áng mây theo cơn sóng xô dập dìu
Nụ cười ngọt ngào cho ta tan vào phút giây miên man quên hết con đường về eh
Chẳng thể tìm thấy lối về ehhhhh
Điệu nhạc hòa quyện trong ánh mắt đôi môi
Dẫn lối những bối rối rung động khẽ lên ngôi

Chạm nhau mang vô vàn
Đắm đuối vấn vương dâng tràn
Lấp kín chốn nhân gian
Làn gió hóa sắc hương mơ màng
Một giây ngang qua đời
Cất tiếng nói không nên lời
Ấm áp đến trao tay ngàn sao trời lòng càng thêm chơi vơi
Dịu êm không gian bừng sáng đánh thức muôn hoa mừng
Quấn quít hát ngân nga từng chút níu bước chân em dừng
Bao ý thơ tương tư ngẩn ngơ
Lưu dấu nơi mê cung đẹp thẫn thờ

Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh thứ anh đang mong chờ
Hãy trao cho anh
Hãy trao cho anh
Hãy mau làm điều ta muốn vào khoảnh khắc này đê
Hãy trao cho anh
Hãy trao cho anh
Hãy trao anh trao cho anh đi những yêu thương nồng cháy
Trao anh ái ân nguyên vẹn đong đầy

Looking at my Gucci is about that time
We can smoke a blunt and pop a bottle of wine
Now get yourself together and be ready by nine
Cuz we gon do some things that will shatter your spine
Come one, undone, Snoop Dogg, Son Tung
Long Beach is the city that I come from
So if you want some, get some
Better enough take some, take some
Chạm nhau mang vô vàn
Đắm đuối vấn vương dâng tràn
Lấp kín chốn nhân gian làn
Gió hóa sắc hương mơ màng
Một giây ngang qua đời
Cất tiếng nói không nên lời
Ấm áp đến trao tay ngàn sao trời lòng càng thêm chơi vơi
Dịu êm không gian bừng sáng đánh thức muôn hoa mừng
Quấn quít hát ngân nga từng chút níu bước chân em dừng
Bao ý thơ tương tư ngẩn ngơ
Lưu dấu nơi mê cung đẹp thẫn thờ

Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh thứ anh đang mong chờ
Hãy trao cho anh
Hãy trao cho anh
Hãy mau làm điều ta muốn vào khoảnh khắc này đê
Hãy trao cho anh
Hãy trao cho anh
Hãy trao anh trao cho anh đi những yêu thương nồng cháy
Trao anh ái ân nguyên vẹn đong đầy


Em cho ta ngắm thiên đàng vội vàng qua chốc lát
Như thanh âm chứa bao lời gọi mời trong khúc hát
Liêu xiêu ta xuyến xao rạo rực khát khao trông mong
Dịu dàng lại gần nhau hơn dang tay ôm em vào lòng
Trao đi trao hết đi đừng ngập ngừng che dấu nữa
Quên đi quên hết đi ngại ngùng lại gần thêm chút nữa
Chìm đắm giữa khung trời riêng hai ta như dần hòa quyện mắt nhắm mắt tay đan tay hồn lạc về miền trăng sao

Em cho ta ngắm thiên đàng vội vàng qua chốc lát
Như thanh âm chứa bao lời gọi mời trong khúc hát
Liêu xiêu ta xuyến xao rạo rực khát khao trông mong
Dịu dàng lại gần nhau hơn dang tay ôm em vào lòng
Trao đi trao hết đi đừng ngập ngừng che dấu nữa
Quên đi quên hết đi ngại ngùng lại gần thêm chút nữa
Chìm đắm giữa khung trời riêng hai ta như dần hòa quyện mắt nhắm mắt tay đan tay hồn lạc về miền trăng sao

Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh
Hãy trao cho anh thứ anh đang mong chờ
', 0, 0)
insert into MUSIC values('mv09',N'Thrift Shop',N'Ben Haggerty / Ryan Scott Lewis',N' Tyler Ward, Lindsey Stirling', 'US/UK', 'rap', '03:18', '2012', 0, N'Hey Macklemore Can we go thrift shopping
What, what, what, what (bada, bada, bada doo da)
What, what, what, what (bada, bada, bada doo da)
What, what, what, what (bada, bada, bada doo da)
What, what, what, what (bada, bada, bada doo da) oh
oh
(Bada, bada, bada doo da)
(Bada, bada, bada doo da) ow
Im gonna pop some tags
Only got twenty dollars in my pocket
I, I, Im hunting, looking for a come-up
This is fucking awesome
Nah walk up to the club like, what up, I got a big cock
Im just pumped, just bought some shit from the thrift shop (oh)
Ice on the fringe, its so damn frosty
The people like, "Damn! Thats a cold ass honkey
Rollin in, hella deep, headin to the mezzanine
Dressed in all pink, cept my gator shoes, those are green
Draped in a leopard mink, girls standin next to me
Probably shoulda washed this, smells like R. Kellys sheets
(Piss)
But shit, it was ninety-nine cents
(Bag it) coppin it, washin it
Bout to go and get some compliments
Passin up on those moccasins someone elses been walkin in them
Bummy and grungy, fuck it man, I am stuntin and flossin and
And savin my money and Im hella happy thats a bargain, bitch
Ima take your grandpas style, Ima take your grandpas style
No for real ask your grandpa can I have his hand-me-downs?
(Thank you) velour jumpsuit and some house slippers
Dookie brown leather jacket that I found diggin
They had a broken keyboard, I bought a broken keyboard
I bought a skeet blanket, and then I bought a kneeboard
Hello, hello, my ace man, my mellow
John Wayne aint got nothing on my fringe game, hell no
I could take some Pro Wings, make them cool, sell those
The sneaker heads would be like "Aw, he got the Velcros
Im gonna pop some tags
Only got twenty dollars in my pocket
I, I, Im hunting, looking for a come-up
This is fucking awesome
Im gonna pop some tags
Only got twenty dollars in my pocket
I, I, Im hunting, looking for a come-up
This is fucking awesome
What you know about rockin a wolf on your noggin?
What you knowin about wearin a fur fox skin?
Im digging, Im digging, Im searching right through that luggage
One mans trash, thats another mans come up
Thank your grandad for donating that plaid button-up shirt
Cause right now Im up in her stuntin
Im at the Goodwill, you can find me in the bins
Im that, Im that sucker searchin in that section , mens
Your grammy, your aunty, your momma, your mammy
Ill take those flannel zebra jammies, second-hand, I rock that motherfucker
The built-in onesie with the socks on that motherfucker
I hit the party and they stop in that motherfucker
They be like, "Oh, that Gucci, thats hella tight"
Im like, "Yo thats fifty dollars for a t-shirt"
Limited edition, lets do some simple addition
Fifty dollars for a t-shirt, thats just some ignorant bitch (shit)
I call that getting swindled and pimped (shit)
I call that getting tricked by a business
That shirts hella dope
And having the same one as six other people in this club is a hella dont
Peep game, come take a look through my telescope
Trying to get girls from a brand? Then you hella wont
Then you hella wont
Im gonna pop some tags
Only got twenty dollars in my pocket
I, I, Im hunting, looking for a come-up
This is fucking awesome
I wear your grandads clothes
I look incredible
Im in this big ass coat
From that thrift shop down the road
I wear your grandads clothes (damn right)
I look incredible (oh, cmon man)
Im in this big ass coat (big ass coat)
From that thrift shop down the road (lets go)
Im gonna pop some tags
Only got twenty dollars in my pocket
I, I, Im hunting, looking for a come-up
This is fucking awesome
Is that your grandmas coat
', 0, 0)


insert into MUSIC values('mv01',N'Bên trên tầng lầu',N'Tăng Duy Tân',N'Tăng Duy Tân', 'Vietnam', 'pop', '03:04', '2022', 0, N'Verse 1:
Em ơi đừng khóc bóng tối trước mắt sẽ bắt em đi
Em ơi đừng lo em ơi đừng cho tương lai vụt tắt.
Sâu trong màu mắt có chút tiếc nuối phút cuối chỉ vì
Em đâu hề sai em đâu thể mãi để trái tim đau

Pre:
Không còn tương lai, em cũng chẳng còn thương ai.
Sau bao niêm đau em mong rằng con tim em dừng lại.
Nỗi nhớ này lâu phai, nhốt em trong 1 lâu đài,
Lâu đài của những cơn đau bất tận

Chorus:
Vì sao em phải khóc?
Có đáng để buồn đâu, tình yêu như cơn lốc thoáng phút chốc lướt qua thật mau.
Vì sao em phải khóc?
Có đáng để buồn đâu, rượu kề môi em nốc, thoáng phút chốc đã vơi u sầu

Verse 2:
Buông bàn tay để chấm hết,
tất cả thứ làm em buồn,
bao gồm cả cuộc đời của em.
Em à cho dù có khóc,
cũng sẽ đến ngày phải quên,
thiên đường vẫn chờ ngày em đến
Pre:
Không còn tương lai, em cũng chẳng còn thương ai.
Sau bao niêm đau em mong rằng con tim em dừng lại.
Nỗi nhớ này lâu phai, nhốt em trong 1 lâu đài,
Lâu đài của những cơn đau bất tận

Chorus:
Vì sao em phải khóc?
Có đáng để buồn đâu, tình yêu như cơn lốc thoáng phút chốc lướt qua thật mau.
Vì sao em phải khóc?
Có đáng để buồn đâu, rượu kề môi em nốc, thoáng phút chốc đã vơi u sầu', 0, 0)


insert into MUSIC values('mv02',N'To The Moon',N'hooligan',N'hooligan', 'Vietnam', 'pop', '03:22', '2021', 0, N'Wise man call me a crazy
Loving foolishly
Dream about you all the time
Everynight I fall asleep
Chasing and dreaming
Looking for your eyes Daisy!

I am the foolish Gatsby whos found drown in love
Cant you see my heart burning right through my hands?
Cos your smile lifts me above and beyond the blue sky
In the darkest moments here I still can see your eyes

Love you to the moon and back
I cant let you know this fact
Love you to the moon and back
Im so freaking missing you

Aim for the moon yet so far
I cant land among the stars
Love you to the moon and back
Im so freaking missing you

Ill never let my love get so close to you cos it hurts
Swear to God!
I wish I could

I am the foolish Gatsby whos found drown in love
Cant you see my heart burning right through my hands?
Cos your smile lifts me above and beyond the blue sky
In the darkest moments here I still can see your eyes

Love you to the moon and back
I cant let you know this fact
Love you to the moon and back
Im so freaking missing you

Aim for the moon yet so far
I cant land among the stars
Love you to the moon and back
Im so freaking missing you

Love you to the moon and back
I cant let you know this fact
Love you to the moon and back
Im so freaking missing you

Aim for the moon yet so far
I cant land among the stars
Love you to the moon and back
Im so freaking missing you', 0, 0)

insert into MUSIC values('mv03',N'Bones',N'Dan Reynolds, Wayne Sermon, Ben McKee, Daniel Platzman, Robin Fredriksson, Mattias Larsson',N'Imagine Dragons', 'US/UK', 'pop', '02:45', '2022', 0, N'Gimme, gimme, gimme some time to think
Im in the bathroom, looking at me
Face in the mirror is all I need (ooh)
Wait until the reaper takes my life
Never gonna get me out alive
I will live a thousand million lives (ooh)

My patience is waning
Is this entertaining?
Our patience is waning
Is this entertaining?

I-I-I got this feeling, yeah, you know
Where Im losing all control
Cause theres magic in my bones
I-I-I got this feeling in my soul
Go ahead and throw your stones
Cause theres magic in my bones

Playing with a stick of dynamite
There was never gray in black and white
There was never wrong til there was right (ooh, oh)
Feeling like a boulder hurtling
Seeing all the vultures circling
Burning in the flames Im working in
Turning in a bed thats darkening

My patience is waning
Is this entertaining?
Our patience is waning
Is this entertaining?

I-I-I got this feeling, yeah, you know
Where Im losing all control
Cause theres magic in my bones (my bones)
I-I-I got this feeling in my soul
Go ahead and throw your stones
Cause theres magic in my bones
Cause theres magic in my bones

Look in the mirror of my mind
Turning the pages of my life
Walking the path so many paced a million times
Drown out the voices in the air
Leaving the ones that never cared
Picking the pieces up and building to the sky

My patience is waning
Is this entertaining?
My patience is waning
Is this entertaining?

I-I-I got this feeling, yeah, you know
Where Im losing all control
Cause theres magic in my bones (magic in my bones)
I-I-I got this feeling in my soul (soul)
Go ahead and throw your stones
Cause theres magic in

There goes my mind (I-I-I)
Dont mind
There goes my mind (there it goes, there it goes)
There goes my mind (I-I-I)
Dont mind (there it goes)
There goes my mind
Cause theres magic in my bones
', 0, 0)

insert into MUSIC values('mv13',N'Yêu 5',N'Rhymastic',N'Rhymastic', 'Vietnam', 'rap', '04:03', '2022', 0, N'Xin những bối rối này cứ thế lên ngôi
Xin con tim rẽ lối tìm giây phút nghẹn lời
Cho thêm chơi vơi, để những ánh mắt đôi môi,
Chạm nhau mang theo gọi mời

Xin cho ta tan vào những đắm đuối miên man
Khi em ghé ngang đời chợt mang sắc hương thiên đàng
Và cho những ấm áp lại đến lấp kín nhân gian
Ngày ta yên vui cùng nàng

[Pre-Hook]
Nhẹ nhàng âu yếm giữa chốn mơ
Cùng tìm kiếm bao ý thơ
Để đắm say trong tiếng nhạc du dương
Hồn sa theo bước ta ngẩn ngơ
Dù ngàn kiếp ta vẫn chờ
Chỉ cần có phút giây này trao yêu thương

[Hook]
Cuz baby its always you
Its always you
Its always you
Its always you...always you...
(x2)

[Rap]
Ta như đi qua hết bao nhiêu mê say trên đời
Như yêu thêm cả nghìn kiếp khi ta một giây bên người
Vì chỉ cẩn một ánh nhìn mà em trao
Là tuổi xuân của ta như hóa được thành chiêm bao
Với mỗi sáng thức giấc nghe em bên ta vui cười
Cho đêm ta ngây ngất, ru tai êm qua đôi lời
Đầy ngọt ngào và trong veo, cùng hòa làm trăng sao
Dìu dắt đôi tim bên nhau đi theo bao yêu thương dâng trào

Và ta xin đánh đổi một rừng tia nắng để lấy chút hơi ấm của em
Xin đổi đi hết tiền bạc danh tiếng, những thứ hàng trăm người thèm
Bởi cả ngàn điều phù phiếm đâu bằng một thoáng môi mềm
Khi đời này sẽ mang đầy nuối tiếc nếu không có nàng ở bên
Nhìn em ta mới thêm yêu từng khoảnh khắc
Mang hết tương tư giấu vào theo từng bản nhạc
Để mai này tình nở như muôn hoa không tàn sắc
Lưu giữ mãi nơi này một câu chuyện ngàn năm
', 0, 0)

insert into MUSIC values('mv28',N'Waiting For You',N'MONO, Onionn',N'Nguyễn Việt Hoàng, Nguyễn Ngọc Hoàng Anh', 'Vietnam', 'pop', '04:26', '2022', 0, N'Hoàng hôn dần buông
Hạt mưa rơi xuống không gian lắng yên
Suy tư vấn vương ngồi mộng mơ
Đơn phương nhớ đến một nàng thơ
Gió đông ùa về mang những ê chề (woa)
Ngỡ là trái tim khô cằn héo úa sẽ thôi buồn đau
Nhưng thật cay đắng khi biết là... ú òa
Mình chỉ là một người đến sau
(HEY)

Biết em đã có người ở gần bên
Nhưng anh sẽ vẫn đứng ngay đây và chờ em
Mưa giông bão tố chẳng quan tâm đến ngày đêm
Kẻ si tình này chọn ở phía sau thầm nhớ mong em bae bae

Vì say mê ánh mắt, yêu luôn cả bờ môi
Muốn nói với cả thế giới chỉ thương em mà thôi
Đắm đuối, uh cháy lên ngọn lửa tình yêu
Bùng lên mạnh mẽ và thiêu đốt baby thats what I feel
My girl, Im waiting for you

U u u u u u u u u (ye he)
Uno no nono, nono, nono, nono oh uh oh o o
Uh oh uh oh uh oh o o (ya ya ya)
Uh oh uh oh uh oh o o o (uho o)
Hey ih ye he eh ih ye e e e
Hey ih ye he eh eh

Một bông hồng xinh tươi thắm hú trông em kiêu sa
Đôi chân thướt tha mặn mà
(UH)
Hương thơm miên man dịu dàng
(UH)
Dáng duyên nụ cười, say đắm yêu người

Im waiting for you (oh oh)
Im waiting for you (oh oh)
Chờ em về đây với anh
Mình cùng đan bàn tay
Ấm áp bao đêm ngày (yeyeye)

Chờ em chờ em, ừ thì chờ em
Chờ em chờ em, chờ đến bao giờ
Biển khô cạn, trời không còn đầy sao
Thì anh vẫn nơi đây và chờ em

Uh oh uh oh uh oh o o (ya ya ya)
Uh oh uh oh uh oh o o o (uho o)
Hey ih ye he eh ih ye e e e e
Hey ih ye he eh eh

', 0, 0)
insert into MUSIC values('mv08',N'Anh Sẽ Đón Em Remix',N' Nguyên, Trang',N'Nguyên', 'Vietnam', 'remix', '03:52', '2021', 0, N'Anh sẽ đón em vào một ngày không xa
Anh sẽ là câu hát mà hằng ngày em ngân nga
Em đừng là cơn gió mà vội vàng lại đi qua
Vì em đến bên anh thì như một món quà

Sau cơn bão tố, em là bầu trời trong xanh
Em là bờ cát trắng, anh thì là biển long lanh
Anh chẳng mơ ước những điều thật xa xôi
Chỉ cần có em luôn bên anh là đủ rồi.

Hey girl
I just wanna be with you
Hey girl
I just wanna be with you
Hey girl
I just wanna be with you
Hey girl

Anh muốn là người đầu tiên em gặp mỗi khi em thức giấc
Là người mang lại cho anh niềm vui bấy lâu nay vứt mất
Ta cùng đan tay đi trên từng con phố
Anh chỉ yêu em thôi, em không cần đánh đố

Dù chưa gặp mặt nhưng ngỡ ta đã *** nhau từ bao lâu
Sợ rằng em cũng sẽ im lặng chỉ sau đôi ba câu
Chỉ muốn em cười, babe anh đâu muốn thấy nước mắt em rơi
Là người cạnh bên xua tan cô đơn mỗi khi màn đêm tới.
Hỡi em đừng mơ ước chi điều làm em ước mi mỗi đem về.
', 0, 0)

-- Convert languague
CREATE FUNCTION [dbo].[LanguageComprehension](@inputVar NVARCHAR(MAX) )
RETURNS NVARCHAR(MAX)
AS
BEGIN    
    IF (@inputVar IS NULL OR @inputVar = '')  RETURN ''
   
    DECLARE @RT NVARCHAR(MAX)
    DECLARE @SIGN_CHARS NCHAR(256)
    DECLARE @UNSIGN_CHARS NCHAR (256)
 
    SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' + NCHAR(272) + NCHAR(208)
    SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD'
 
    DECLARE @COUNTER int
    DECLARE @COUNTER1 int
   
    SET @COUNTER = 1
    WHILE (@COUNTER <= LEN(@inputVar))
    BEGIN  
        SET @COUNTER1 = 1
        WHILE (@COUNTER1 <= LEN(@SIGN_CHARS) + 1)
        BEGIN
            IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@inputVar,@COUNTER ,1))
            BEGIN          
                IF @COUNTER = 1
                    SET @inputVar = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)-1)      
                ELSE
                    SET @inputVar = SUBSTRING(@inputVar, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)- @COUNTER)
                BREAK
            END
            SET @COUNTER1 = @COUNTER1 +1
        END
        SET @COUNTER = @COUNTER +1
    END
    -- SET @inputVar = replace(@inputVar,' ','-')
    RETURN @inputVar
END
go
