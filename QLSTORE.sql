USE [QLStore]
GO
/****** Object:  Database [QLSTORE]    Script Date: 12/13/2021 6:09:18 PM ******/
CREATE DATABASE [QLSTORE]
 CONTAINMENT = NONE
 /*ON  PRIMARY 
( NAME = N'QLSTORE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLSTORE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSTORE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLSTORE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT*/
GO
ALTER DATABASE [QLSTORE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSTORE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSTORE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSTORE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSTORE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSTORE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSTORE] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSTORE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSTORE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSTORE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSTORE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSTORE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSTORE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSTORE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSTORE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSTORE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSTORE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLSTORE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSTORE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSTORE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSTORE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSTORE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSTORE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSTORE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSTORE] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSTORE] SET  MULTI_USER 
GO
ALTER DATABASE [QLSTORE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSTORE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSTORE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSTORE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSTORE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSTORE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSTORE', N'ON'
GO
ALTER DATABASE [QLSTORE] SET QUERY_STORE = OFF
GO
USE [QLSTORE]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[Gender] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Phone] [int] NULL,
	[Authority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [varchar](50) NOT NULL,
	[BookName] [nvarchar](max) NULL,
	[BookTypeID] [varchar](50) NULL,
	[Author] [nvarchar](max) NULL,
	[Nxb] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [varchar](max) NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[OrderedQuantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookType]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookType](
	[BookTypeID] [varchar](50) NOT NULL,
	[BookTypeName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InfoOrder]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoOrder](
	[InfoOrderID] [varchar](50) NOT NULL,
	[OrderID] [varchar](50) NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[TotalPrice] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InfoOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[ItemID] [varchar](50) NOT NULL,
	[OrderID] [varchar](50) NULL,
	[BookID] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [int] NULL,
	[Discount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NULL,
	[OrderPrice] [int] NULL,
	[OrderStatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [Password], [FullName], [Age], [Gender], [Address], [Email], [Phone], [Authority]) VALUES (N'admin', N'$2a$11$0WhUwF7X5aznGV2uy1ue5uJIT12h6Sggs7gwNWPngIJVOoSTbn.lW', N'Admin', 99, 1, N'Book Online Store', N'Admin@gmail.com', 987654321, 1)
INSERT [dbo].[Account] ([UserName], [Password], [FullName], [Age], [Gender], [Address], [Email], [Phone], [Authority]) VALUES (N'customer1', N'$2a$11$ZK/ACCfZYY8Idp/fPDfBzeXGWCYIkQQDXDigp3yV0Zi9ffEhKTWhu', N'Khách hàng 1', 21, 0, N'666 trần hưng đạo phường 1 quận 5 tp.HCM', N'Customer1@gmail.com', 987654321, 0)
INSERT [dbo].[Account] ([UserName], [Password], [FullName], [Age], [Gender], [Address], [Email], [Phone], [Authority]) VALUES (N'minhhao', N'$2a$11$GDfAaKfiHC9d8RnyN9OacemLjffYwH8Q9tBcRf8VJuMX.44tKmunC', N'Tạ Minh Hào', 21, 1, N'555 trần hưng đạo phường 1 quận 5 tp.HCM', N'minhhao@gmail.com', 987654321, 0)
INSERT [dbo].[Account] ([UserName], [Password], [FullName], [Age], [Gender], [Address], [Email], [Phone], [Authority]) VALUES (N'superadmin', N'$2a$11$TPQ4FdQTL4PQrsKxegBsRunqCizPW83NsTDD0oSWvi9w49aM6pBZS', N'Super Admin', 99, 1, N'Book Online Store', N'SuperAdmin@gmail.com', 987654321, 2)
GO
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'10044', N'Tô Bình Yên Vẽ Hạnh Phúc', N'T002', N'Kulzsc', N'NXB Phụ Nữ Việt Nam', N'Sau thành công của cuốn sách đầu tay “Phải lòng với cô đơn” chàng họa sĩ nổi tiếng và tài năng Kulzsc đã trở lại với một cuốn sách vô cùng đặc biệt mang tên: "Tô bình yên - vẽ hạnh phúc” –  sắc nét phong cách cá nhân với một chút “thơ thẩn, rất hiền”.', N'ToBinhYenVeHanhPhuc.jpg', 64000, 123, 20)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'14917', N'Đời Có Bao Nhiêu', N'T002', N'Mộ Dung Tố Y', N'NXB Phụ Nữ', N'Đời có bao nhiêu, hãy ở bên những người thú vị
Cuốn sách sẽ khiến cho cuộc sống của bạn trở lên thú vị.
Thế giới rậm rạp um tùm như rừng xanh này mãi mãi không thiếu đủ kiểu người khác nhau, duy chỉ có người thú vị là hiếm hoi nhất, cũng rất khó để gặp được.
Mong rằng một ngày nào đó, bạn và tôi sẽ có được một cuộc gặp gỡ tuyệt diệu ở thế giới ngoài kia, một thế giới hoàn toàn khác với thế giới của chính mình.
Mong sao thế giới dù thay đổi tới đâu đều không thể nào ngăn cản bạn trở thành một người thú vị thực sự.
Mong sao trong năm tháng của cuộc đời, tôi và bạn có thể may mắn trở thành người tạo cảm hứng trong cuộc sống dài đằng đẵng của nhau, để mỗi ngày của đời người trôi qua đáng giá không hối tiếc.', N'doicobaonhieu.jpeg', 87000, 500, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'15740', N'Hiểu Về Trái Tim', N'T001', N'Minh Niệm', N'NXB Tổng Hợp TPHCM', N'Trong dòng chảy tất bật của cuộc sống, có bao giờ chúng ta dừng lại và tự hỏi: Tại sao ta giận? Tại sao ta buồn? Tại sao ta hạnh phúc? Tại sao ta cô đơn?... Tất cả những hiện tượng tâm lý ấy không ngừng biến hóa trong ta và tác động lên đời sống của ta, nhưng ta lại biết rất ít về nguồn gốc và sự vận hành của nó. Chỉ cần một cơn giận, hay một ý niệm nghi ngờ, cũng có thể quét sạch năng lượng bình yên trong ta và khiến ta nhìn mọi thứ đều sai lệch. Từ thất bại này đến đổ vỡ khác mà ta không lý giải nổi, chỉ biết dùng ý chí để tự nhắc nhở mình cố gắng tiến bộ hơn. Cho nên, hiểu về trái tim chính là nhu cầu căn bản nhất của con người.', N'image_195509_1_14922.jpg', 124000, 600, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'16902', N'Danh Nhân Thế Giới: Êđixơn', N'T004', N'Han Kiên', N'NXB Kim Đồng', N'Thủa nhỏ, nhà phát minh Êđixơn là một cậu bé hay tò mò. Để trửng nở ra gà con, cậu đã ấp trứng như gà mái. Cậu cho bạn uống axit đun sôi với hy vọng bạn bay được lên trời, suýt nữa thì nguy to. Cậu luôn làm phiền lòng người lớn bởi những câu hỏi hóc búa khó trả lời. Thói quen của cậu là luôn tìm hiểu nguyên do và quy luật của mọi vật, mọi hiện tượng. Mặc dù không thích ứng được với việc học tập ở trường nhưng với sự dạy dỗ của mẹ, lòng yêu thích khoa học và ham tìm hiểu, cậu đã nhẫn nại, kiên trì theo đuổi bằng được hoài bão của mình. Cậu đi bán rau quả, bán báo trên tàu để lấy tiền mua sách, dụng cụ thí nghiệm. Để chế tạo bóng đèn điện Êđixơn hầu như thức trắng đêm thí nghiệm trên tất cả mọi thứ như sợi chỉ, râu, quạt... Còn để chế tạo ra ắcquy kiềm, ông phải tiến hành 50.000 cuộc thí nghiệm trong vòng 10 năm... Êđixơn gặp rất nhiều thất bại nhưng ông không nản chí. Tài năng, lòng say mê, kiên trì, nhẫn nại của ông đã đem lại cho nhân loại hơn 1.300 phát minh. Đó là những thứ vô cùng quý giá mà Êđixơn đã dâng tặng cho chúng ta.', N'image_181945.jpg', 27000, 100, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'17245', N'Khi Hơi Thở Hóa Thinh Không', N'T005', N'Paul Kalanithi', N'NXB Lao Động', N'Kalanithi rất yêu thích văn chương nên câu chuyện của anh đã được thuật lại theo một phong cách mượt mà, dung dị và đầy cảm xúc. Độc giả cũng được hiểu thêm về triết lý sống, triết lý nghề y của Kalanithi, thông qua ký ức về những ngày anh còn là sinh viên, rồi thực tập, cho đến khi chính thức hành nghề phẫu thuật thần kinh. “Đối với bệnh nhân và gia đình, phẫu thuật não là sự kiện bi thảm nhất mà họ từng phải đối mặt và nó có tác động như bất kỳ một biến cố lớn lao trong đời. Trong những thời điểm nguy cấp đó, câu hỏi không chỉ đơn thuần là sống hay chết mà còn là cuộc sống nào đáng sống.” – Kalanithi luôn biết cách đưa vào câu chuyện những suy nghĩ sâu sắc và đầy sự đồng cảm như thế.', N'image_220964.jpg', 87000, 500, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'23569', N'Bố Già', N'T001', N'Mario Puzo', N'NXB Dân Trí', N' Thế giới ngầm được phản ánh trong tiểu thuyết Bố già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc. Từ một kẻ nhập cư tay trắng đến ông trùm tột đỉnh quyền uy, Don Vito Corleone là con rắn hổ mang thâm trầm, nguy hiểm khiến kẻ thù phải kiềng nể, e dè, nhưng cũng được bạn bè, thân quyến xem như một đấng toàn năng đầy nghĩa khí. Nhân vật trung tâm ấy đồng thời cũng là hiện thân của một pho triết lí rất “đời” được nhào nặn từ vốn sống của hàng chục năm lăn lộn giữa chốn giang hồ bao phen vào sinh ra tử, vì thế mà có ý kiến cho rằng “Bố già là sự tổng hòa của mọi hiểu biết. Bố già là đáp án cho mọi câu hỏi”.', N'BoGia.jpg', 66000, 1000, 50)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'27463', N'Bé Tập Kể Chuyện - Chú Thỏ Nhút Nhát', N'T004', N'Nhiều Tác Giả', N'NXB Trẻ', N'Bé Tập Kể Chuyện - Chú Thỏ Nhút Nhát Dựa trên bộ sách Bé tập kể chuyện đã xuất bản, bộ sách Bé tập kể chuyện - Mỗi tuần một câu chuyện được ra đời. Với nét vẽ tươi mới, hồn nhiên, 52 tập, tương ứng với 52 tuần trong một năm, giúp bé mỗi tuần đều có một câu chuyện hấp dẫn để tập kể, qua đó học được một bài học hay.', N'image_83814.jpg', 10000, 100, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'28072', N'Đọc Vị Bất Kỳ Ai', N'T001', N'TS David J Lieberman', N'NXB Lao Động', N'Hãy chiếm thế thượng phong trong việc chủ động nhận biết điều cần tìm kiếm - ở bất kỳ ai bằng cách “thâm nhập vào suy nghĩ” của người khác. ĐỌC VỊ BẤT KỲ AI là cẩm nang dạy bạn cách thâm nhập vào tâm trí của người khác để biết điều người ta đang nghĩ. Cuốn sách này sẽ không giúp bạn rút ra các kết luận chung về một ai đó dựa vào cảm tính hay sự võ đoán. Những nguyên tắc được chia sẻ trong cuốn sách này không đơn thuần là những lý thuyết hay mẹo vặt chỉ đúng trong một số trường hợp hoặc với những đối tượng nhất định. Các kết quả nghiên cứu trong cuốn sách này được đưa ra dựa trên phương pháp S.N.A.P - cách thức phân tích và tìm hiểu tính cách một cách bài bản trong phạm vi cho phép mà không làm mếch lòng đối tượng được phân tích. Phương pháp này dựa trên những phân tích về tâm lý, chứ không chỉ đơn thuần dựa trên ngôn ngữ cử chỉ, trực giác hay võ đoán.', N'DocViBatKyAi.jpg', 55000, 400, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'28453', N'Rèn Luyện Tư Duy Phản Biện', N'T001', N'Albert Rutherford', N'NXB Phụ Nữ Việt Nam', N'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!', N'image_195509_1_18448.jpg', 79000, 200, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'39898', N'Nhà Giả Kim', N'T002', N'Paulo Coelho', N'NXB Hội Nhà Văn', N'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.', N'NhaGiaKim.jpg', 67000, 500, 75)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'47241', N'Cẩm Nang Cấu Trúc Tiếng Anh', N'T007', N'Trang Anh', N'NXB Đại Học Sư Phạm', N'Cuốn sách CẨM NANG CẤU TRÚC TIẾNG ANH gồm 25 phần, mỗi phần là một phạm trù kiến thức trong tiếng Anh được trình bày một cách ngắn gọn, đơn giản, cô đọng và hệ thống hoá dưới dạng sơ đồ, bảng biểu nhằm phát triển khả năng tư duy của người học và từ đó giúp người học nhớ kiến thức nhanh hơn và sâu hơn.', N'image_187866.jpg', 82000, 400, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'56769', N'Tôi Tự Học', N'T001', N'Thu Giang, Nguyễn Duy Cần', N'NXB Trẻ', N'Sách “Tôi tự học” của tác giả Nguyễn Duy Cần đề cập đến khái niệm, mục đích của học vấn đối với con người đồng thời nêu lên một số phương pháp học tập đúng đắn và hiệu quả.
Tác giả cho rằng giá trị của học vấn nằm ở sự lĩnh hội và mở mang tri thức của con người chứ không đơn thuần thể hiện trên bằng cấp.
Trong xã hội ngày nay, không ít người quên đi ý nghĩa đích thực của học vấn, biến việc học của mình thành công cụ để kiếm tiền nhưng thực ra nó chỉ là phương tiện để đưa con người đến thành công mà thôi. Bởi vì học không phải để lấy bằng mà học còn để “biết mình” và để “đối nhân xử thế”.
Cuốn sách này tuy đã được xuất bản từ rất lâu nhưng giá trị của sách vẫn còn nguyên vẹn. Những tư tưởng, chủ đề của sách vẫn phù hợp và có thể áp dụng trong đời sống hiện nay.', N'image_226326.jpg', 61500, 200, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'57308', N'Con Chim Xanh Biếc Bay Về', N'T002', N'Nguyễn Nhật Ánh', N'NXB Trẻ', N'Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.', N'ConChimXanhBiecBayVe.jpg', 112500, 1000, 200)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'66830', N'Ông Già Và Biển Cả', N'T001', N'E, Hemingway', N'NXB Văn Học', N' Ernest Hemingway (1899 -1961) là một tiểu thuyết gia người Mỹ, một nhà văn viết truyện ngắn, và là một nhà báo. Ông từng tham gia chiến đấu trong Chiến tranh thế giới lần thứ I, sau đó ông được biết đến qua "Thế hệ đã mất", nhận được giải thưởng báo chí Pulitzer năm 1953 với tiểu thuyết Ông già và biển cả, và giải Nobel Văn học năm 1954.', N'OngGiaVaBienCa.jpg', 21000, 1000, 300)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'67143', N'Từ Tốt Đến Vĩ Đại', N'T003', N'NXB Trẻ', N'Jim Collins', N'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!', N'nxbtre_full_09462021_024609.jpg', 11000, 700, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'68626', N'Cà Phê Cùng Tony', N'T002', N'Tony Buổi Sáng', N'NXB Trẻ', N'Có đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê Cùng Tony là tập hợp những bài viết của tác giả Tony Buổi Sáng. Đúng như tên gọi, mỗi bài nhẹ nhàng như một tách cà phê, mà bạn trẻ có thể nhận ra một chút gì của chính mình hay bạn bè mình trong đó: Từ chuyện lớn như định vị bản thân giữa bạn bè quốc tế, cho đến chuyện nhỏ như nên chú ý những phép tắc xã giao thông thường.', N'CaPheCungTony.jpg', 63000, 1000, 400)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'71345', N'Your Name', N'T002', N'Shinkai Makoto', N'NXB Hồng Đức', N'Mitsuha là nữ sinh trung học sống ở vùng quê hẻo lánh. Một ngày nọ, cô mơ thấy mình ở Tokyo trong một căn phòng xa lạ, biến thành con trai, gặp những người bạn chưa từng quen biết.Trong khi đó ở một nơi khác, Taki, một nam sinh trung học người Tokyo lại mơ thấy mình biến thành con gái, sống ở vùng quê hẻo lánh. Cuối cùng hai người họ nhận ra đang bị hoán đổi với nhau qua giấc mơ. Kể từ lúc hai con người xa lạ ấy gặp nhau, bánh xe số phận bắt đầu chuyển động.', N'YourName.jpg', 55000, 400, 10)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'81241', N'Đắc Nhân Tâm', N'T001', N'Dale Carnegie', N'NXB Tổng Hợp TPHCM', N'Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.', N'DacNhanTam.jpg', 70500, 1000, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'89030', N'Atlat Địa Lí Việt Nam', N'T006', N'Bộ Giáo Dục Và Đào Tạo', N'NXB Giáo Dục Việt Nam', N'Atlat Địa Lí Việt Nam', N'image_195509_1_6058_1_1.jpg', 29000, 1000, 0)
INSERT [dbo].[Book] ([BookID], [BookName], [BookTypeID], [Author], [Nxb], [Description], [Image], [Price], [Quantity], [OrderedQuantity]) VALUES (N'98984', N'Nhà Lãnh Đạo Không Chức Danh', N'T003', N'NXB Trẻ', N'Robin Sharma', N'Bất kể bạn làm gì trong tổ chức và cuộc sống hiện tại của bạn như thế nào, một thực tế quan trọng duy nhất là bạn có khả năng thể hiện năng lực lãnh đạo. Cho dù sự nghiệp hiện tại của bạn đang ở đâu, bạn vẫn luôn cần phải thể hiện những khả năng tột đỉnh của mình. Cuốn sách này sẽ hướng dẫn bạn làm thế nào để khai thác tối đa khả năng đó, cũng như thay đổi cuộc sống và thế giới xung quanh bạn.', N'8934974145936.jpg', 71000, 100, 0)
GO
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T001', N'Tâm lý')
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T002', N'Văn Học')
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T003', N'Kinh Tế')
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T004', N'Thiếu Nhi')
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T005', N'Tiểu sử - Hồi Ký')
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T006', N'Sách Giáo Khoa - Tham Khảo')
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T007', N'Ngoại Ngữ')
INSERT [dbo].[BookType] ([BookTypeID], [BookTypeName]) VALUES (N'T008', N'Giáo Dục')
GO
INSERT [dbo].[InfoOrder] ([InfoOrderID], [OrderID], [Name], [Email], [Phone], [Address], [TotalPrice], [Status]) VALUES (N'108542', N'187187', N'Tạ Minh Hào', N'minhhao@gmail.com', N'0987654321', N'666 trần hưng đạo phường 1 quận 5 tp.HCM', 215000, 0)
INSERT [dbo].[InfoOrder] ([InfoOrderID], [OrderID], [Name], [Email], [Phone], [Address], [TotalPrice], [Status]) VALUES (N'817907', N'547334', N'Super Admin', N'SuperAdmin@gmail.com', NULL, N'Book Online Store', 20000, 0)
INSERT [dbo].[InfoOrder] ([InfoOrderID], [OrderID], [Name], [Email], [Phone], [Address], [TotalPrice], [Status]) VALUES (N'881842', N'841476', N'Khách hàng 1', N'Customer1@gmail.com', N'0987654321', N'666 trần hưng đạo phường 1 quận 5 tp.HCM', 255000, 1)
INSERT [dbo].[InfoOrder] ([InfoOrderID], [OrderID], [Name], [Email], [Phone], [Address], [TotalPrice], [Status]) VALUES (N'959465', N'281429', N'Khách hàng 1', N'Customer1@gmail.com', N'0987654321', N'666 trần hưng đạo phường 1 quận 5 tp.HCM', 152000, 0)
GO
INSERT [dbo].[OrderItem] ([ItemID], [OrderID], [BookID], [Quantity], [TotalPrice], [Discount]) VALUES (N'120669', N'841476', N'98984', 3, 213000, 0)
INSERT [dbo].[OrderItem] ([ItemID], [OrderID], [BookID], [Quantity], [TotalPrice], [Discount]) VALUES (N'190927', N'187187', N'39898', 1, 67000, 0)
INSERT [dbo].[OrderItem] ([ItemID], [OrderID], [BookID], [Quantity], [TotalPrice], [Discount]) VALUES (N'229565', N'281429', N'23569', 2, 132000, 0)
INSERT [dbo].[OrderItem] ([ItemID], [OrderID], [BookID], [Quantity], [TotalPrice], [Discount]) VALUES (N'779220', N'450907', N'39898', 3, 201000, 0)
INSERT [dbo].[OrderItem] ([ItemID], [OrderID], [BookID], [Quantity], [TotalPrice], [Discount]) VALUES (N'856655', N'187187', N'10044', 2, 128000, 0)
INSERT [dbo].[OrderItem] ([ItemID], [OrderID], [BookID], [Quantity], [TotalPrice], [Discount]) VALUES (N'868014', N'877518', N'10044', 1, 64000, 0)
INSERT [dbo].[OrderItem] ([ItemID], [OrderID], [BookID], [Quantity], [TotalPrice], [Discount]) VALUES (N'927257', N'841476', N'67143', 2, 22000, 0)
GO
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderPrice], [OrderStatus]) VALUES (N'187187', N'minhhao', 195000, 2)
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderPrice], [OrderStatus]) VALUES (N'281429', N'customer1', 132000, 2)
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderPrice], [OrderStatus]) VALUES (N'450907', N'superadmin', 201000, 1)
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderPrice], [OrderStatus]) VALUES (N'547334', N'superadmin', 0, 2)
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderPrice], [OrderStatus]) VALUES (N'841476', N'customer1', 235000, 2)
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderPrice], [OrderStatus]) VALUES (N'877518', N'minhhao', 64000, 1)
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_BookType] FOREIGN KEY([BookTypeID])
REFERENCES [dbo].[BookType] ([BookTypeID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_BookType]
GO
ALTER TABLE [dbo].[InfoOrder]  WITH CHECK ADD  CONSTRAINT [FK_OrdersInInfoOrder] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[InfoOrder] CHECK CONSTRAINT [FK_OrdersInInfoOrder]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_Book]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrder] FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_CustomerOrder]
GO
/****** Object:  StoredProcedure [dbo].[Account_CheckLogin]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Account_CheckLogin]
	@UserName varchar(max),
	@Password varchar(max)
AS
BEGIN
    select *
    from Account
	where Account.UserName = @UserName and Account.Password = @Password
END
GO
/****** Object:  StoredProcedure [dbo].[Account_Create]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Account_Create]
	@UserName varchar(50),
	@Password varchar(max),
	@FullName nvarchar(max),
	@Age int,
	@Gender int,
	@Address nvarchar(max),
	@Email varchar(max),
	@Phone int,
	@Authority int
AS
BEGIN
    insert into Account(UserName,Password,FullName,Age,Gender,Address,Email,Phone,Authority) 
	values(@UserName, @Password, @FullName, @Age, @Gender, @Address, @Email, @Phone, @Authority)

END
GO
/****** Object:  StoredProcedure [dbo].[Account_Delete]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Account_Delete]
    @ID varchar(50)
AS
BEGIN
    DELETE FROM Account WHERE UserName = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[Account_GetAll]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE Book_GetAll

AS
BEGIN
	select *
	from Book
END*/
/*
CREATE PROCEDURE Book_GetTypeList
	@ID varchar(50)

AS
BEGIN
	select *
	from Book	
	where BookTypeID = @ID ;
END*/
/*
CREATE PROCEDURE Book_GetAllType

AS
BEGIN
	select *
	from BookType
END*/
/*
CREATE PROCEDURE Book_BookTypeWithID
	@ID varchar(50)
AS
BEGIN
	select *
	from BookType
	where BookTypeID = @ID ;
END*/
/*
CREATE PROCEDURE Book_BookWithID
	@ID varchar(50)
AS
BEGIN
	select *
	from Book
	where BookID = @ID ;
END*/
CREATE PROCEDURE [dbo].[Account_GetAll]

AS
BEGIN
	select *
	from Account
END
GO
/****** Object:  StoredProcedure [dbo].[Account_GetWithEmail]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Account_GetWithEmail]
	@Email varchar(max)
AS
BEGIN
	select *
	from Account
	where Email = @Email ;
END
GO
/****** Object:  StoredProcedure [dbo].[Account_GetWithUser]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Account_GetWithUser]
	@UserName varchar(50)
AS
BEGIN
	select *
	from Account
	where UserName = @UserName ;
END
GO
/****** Object:  StoredProcedure [dbo].[Account_Update]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Account_Update]
	@UserName varchar(50),
	@FullName nvarchar(max),
	@Age int,
	@Gender int,
	@Address nvarchar(max),
	@Email varchar(max),
	@Phone int,
	@Authority int
AS
BEGIN
    UPDATE Account
    SET		FullName = @FullName,
            Age = @Age,
            Gender = @Gender,
            Address = @Address,
			Email =@Email,
			Phone = @Phone,
			Authority = @Authority
    WHERE  UserName = @UserName
END
GO
/****** Object:  StoredProcedure [dbo].[Book_BookTypeWithID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE Book_GetAll

AS
BEGIN
	select *
	from Book
END*/
/*
CREATE PROCEDURE Book_GetTypeList
	@ID varchar(50)

AS
BEGIN
	select *
	from Book	
	where BookTypeID = @ID ;
END*/
/*
CREATE PROCEDURE Book_GetAllType

AS
BEGIN
	select *
	from BookType
END*/
CREATE PROCEDURE [dbo].[Book_BookTypeWithID]
	@ID varchar(50)
AS
BEGIN
	select *
	from BookType
	where BookTypeID = @ID ;
END
GO
/****** Object:  StoredProcedure [dbo].[Book_BookWithID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE Book_GetAll

AS
BEGIN
	select *
	from Book
END*/
/*
CREATE PROCEDURE Book_GetTypeList
	@ID varchar(50)

AS
BEGIN
	select *
	from Book	
	where BookTypeID = @ID ;
END*/
/*
CREATE PROCEDURE Book_GetAllType

AS
BEGIN
	select *
	from BookType
END*/
/*
CREATE PROCEDURE Book_BookTypeWithID
	@ID varchar(50)
AS
BEGIN
	select *
	from BookType
	where BookTypeID = @ID ;
END*/
CREATE PROCEDURE [dbo].[Book_BookWithID]
	@ID varchar(50)
AS
BEGIN
	select *
	from Book
	where BookID = @ID ;
END
GO
/****** Object:  StoredProcedure [dbo].[Book_BookWithSelling]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Book_BookWithSelling]

AS
BEGIN
	select *
	from Book
	ORDER BY OrderedQuantity DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Book_CreateBook]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Book_CreateBook]
	@BookID varchar(50),
	@BookName nvarchar(max),
	@BookTypeID varchar(50),
	@Author nvarchar(max),
	@Nxb nvarchar(max),
	@Description nvarchar(max),
	@Image varchar(50),
	@Price int,
	@Quantity int,
	@OrderedQuantity int
AS
BEGIN
    insert into Book(BookID, BookName, BookTypeID, Author, Nxb, Description, Image, Price, Quantity, OrderedQuantity) 
	values(@BookID, @BookName, @BookTypeID, @Author, @Nxb, @Description, @Image, @Price, @Quantity, @OrderedQuantity)

END
GO
/****** Object:  StoredProcedure [dbo].[Book_Delete]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Book_Delete]
    @ID varchar(50)
AS
BEGIN
    DELETE FROM Book WHERE BookID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[Book_GetAll]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Book_GetAll]

AS
BEGIN
	select *
	from Book
END
GO
/****** Object:  StoredProcedure [dbo].[Book_GetAllType]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE Book_GetAll

AS
BEGIN
	select *
	from Book
END*/
/*
CREATE PROCEDURE Book_GetTypeList
	@ID varchar(50)

AS
BEGIN
	select *
	from Book	
	where BookTypeID = @ID ;
END*/
CREATE PROCEDURE [dbo].[Book_GetAllType]

AS
BEGIN
	select *
	from BookType
END
GO
/****** Object:  StoredProcedure [dbo].[Book_GetTypeList]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE Book_GetAll

AS
BEGIN
	select *
	from Book
END*/

CREATE PROCEDURE [dbo].[Book_GetTypeList]
	@ID varchar(50)

AS
BEGIN
	select *
	from Book	
	where BookTypeID = @ID ;
END
GO
/****** Object:  StoredProcedure [dbo].[Book_Update]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Book_Update]
	@BookID varchar(50),
	@BookName nvarchar(max),
	@BookTypeID varchar(50),
	@Author nvarchar(max),
	@Nxb nvarchar(max),
	@Description nvarchar(max),
	@Image varchar(50),
	@Price int,
	@Quantity int,
	@OrderedQuantity int
AS
BEGIN
    UPDATE Book
    SET		BookName = @BookName,
			BookTypeID = @BookTypeID,
            Author = @Author,
            Nxb = @Nxb,
            Description = @Description,
			Image =@Image,
			Price = @Price,
			Quantity = @Quantity,
			OrderedQuantity = @OrderedQuantity

    WHERE  BookID = @BookID
END
GO
/****** Object:  StoredProcedure [dbo].[InfoOrder_Create]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InfoOrder_Create]
	@InfoOrderID varchar(50),
	@OrderID varchar(50),
	@Name nvarchar(50),
	@Email varchar(50),
	@Phone varchar(20),
	@Address nvarchar(50),
	@TotalPrice int,
	@Status int
AS
BEGIN
    insert into InfoOrder(InfoOrderID, OrderID, Name, Email, Phone, Address,TotalPrice,Status) 
	values(@InfoOrderID, @OrderID, @Name, @Email, @Phone, @Address, @TotalPrice, @Status)
END
GO
/****** Object:  StoredProcedure [dbo].[InfoOrder_Delete]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InfoOrder_Delete]
    @ID varchar(50)
AS
BEGIN
    DELETE FROM InfoOrder WHERE InfoOrderID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[InfoOrder_GetAll]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InfoOrder_GetAll]
AS
BEGIN
	SELECT *
	FROM InfoOrder
END
GO
/****** Object:  StoredProcedure [dbo].[InfoOrder_GetInfoOrdersWithID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InfoOrder_GetInfoOrdersWithID]
	@InfoOrderID varchar(50)
AS
BEGIN
	select *
	from InfoOrder
	where InfoOrderID = @InfoOrderID;
END
GO
/****** Object:  StoredProcedure [dbo].[InfoOrder_GetInfoOrderWithEmail]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InfoOrder_GetInfoOrderWithEmail]
	@Email varchar(50)
AS
BEGIN
	SELECT *
	FROM InfoOrder
	WHERE Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[InfoOrder_GetInfoOrderWithOrderID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InfoOrder_GetInfoOrderWithOrderID]
	@OrderID varchar(50)

AS
BEGIN
	SELECT *
	FROM InfoOrder
	WHERE OrderID = @OrderID
END
GO
/****** Object:  StoredProcedure [dbo].[InfoOrder_Update]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InfoOrder_Update]
	@InfoOrderID varchar(50),
	@OrderID varchar(50),
	@Name nvarchar(50),
	@Email varchar(50),
	@Phone varchar(20),
	@Address nvarchar(50),
	@TotalPrice int,
	@Status int

AS
BEGIN
    UPDATE InfoOrder
    SET		OrderID = @OrderID,
            Name = @Name,
            Email = @Email,
			Phone = @Phone,
			Address = @Address,
			TotalPrice = @TotalPrice,
			Status = @Status

    WHERE  InfoOrderID = @InfoOrderID
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItem_Create]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderItem_Create]
	@ItemID varchar(50),
	@OrderID varchar(50),
	@BookID varchar(50),
	@Quantity int,
	@TotalPrice int,
	@Discount int
AS
BEGIN
    insert into OrderItem(ItemID,OrderID,BookID,Quantity,TotalPrice,Discount) 
	values(@ItemID, @OrderID, @BookID, @Quantity, @TotalPrice, @Discount)
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItem_Delete]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItem_Delete]
    @ID varchar(50)
AS
BEGIN
    DELETE FROM OrderItem WHERE ItemID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItem_GetOrderItemWithID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderItem_GetOrderItemWithID]
	@ItemID varchar(50)

AS
BEGIN
	SELECT *
	FROM OrderItem
	WHERE ItemID = @ItemID
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItem_GetOrderItemWithOrderID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItem_GetOrderItemWithOrderID]
	@OrderID varchar(50)

AS
BEGIN
	SELECT *
	FROM OrderItem
	WHERE OrderID = @OrderID
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItem_GetOrderItemWithOrderIDBookID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItem_GetOrderItemWithOrderIDBookID]
	@OrderID varchar(50),
	@BookID varchar(50)

AS
BEGIN
	SELECT *
	FROM OrderItem
	WHERE OrderID = @OrderID and BookID = @BookID
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItem_Update]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderItem_Update]
	@ItemID varchar(50),
	@OrderID varchar(50),
	@BookID varchar(50),
	@Quantity int,
	@TotalPrice int,
	@Discount int

AS
BEGIN
    UPDATE OrderItem
    SET		OrderID = @OrderID,
            BookID = @BookID,
            Quantity = @Quantity,
            TotalPrice = @TotalPrice,
			Discount = @Discount

    WHERE  ItemID = @ItemID
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Create]
	@OrderID varchar(50),
	@UserName varchar(50),
	@OrderPrice int,
	@OrderStatus int
AS
BEGIN
    insert into Orders(OrderID, UserName, OrderPrice, OrderStatus) 
	values(@OrderID, @UserName, @OrderPrice, @OrderStatus)
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Delete]
    @ID varchar(50)
AS
BEGIN
    DELETE FROM Orders WHERE OrderID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_GetOrdersUser]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_GetOrdersUser]
	@UserName varchar(50)
AS
BEGIN
	select *
	from Orders
	where UserName = @UserName ;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_GetOrdersUserOnStatus]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_GetOrdersUserOnStatus]
	@UserName varchar(50),
	@OrderStatus int
AS
BEGIN
	select *
	from Orders
	where UserName = @UserName and OrderStatus = @OrderStatus;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_GetOrdersWithID]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_GetOrdersWithID]
	@OrderID varchar(50)
AS
BEGIN
	select *
	from Orders
	where OrderID = @OrderID;
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 12/13/2021 6:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Update]
	@OrderID varchar(50),
	@UserName varchar(50),
	@OrderPrice int,
	@OrderStatus int
AS
BEGIN
    UPDATE Orders
    SET		UserName = @UserName,
            OrderPrice = @OrderPrice,
			OrderStatus = @OrderStatus

    WHERE  OrderID = @OrderID
END
GO
ALTER DATABASE [QLSTORE] SET  READ_WRITE 
GO
