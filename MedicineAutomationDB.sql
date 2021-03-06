
USE [MedicineAutomationDB]
GO
/****** Object:  Table [dbo].[Table_Center]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Center](
	[center_Id] [int] IDENTITY(1,1) NOT NULL,
	[center_Name] [varchar](50) NOT NULL,
	[center_Code] [varchar](50) NULL,
	[center_Password] [varchar](50) NULL,
	[center_DistrictId] [int] NOT NULL,
	[center_ThanaId] [int] NOT NULL,
 CONSTRAINT [PK_Table_Center] PRIMARY KEY CLUSTERED 
(
	[center_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Disease]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Disease](
	[diesease_Id] [int] IDENTITY(1,1) NOT NULL,
	[disease_Name] [varchar](50) NOT NULL,
	[disease_Description] [varchar](max) NOT NULL,
	[disease_TreatmentProcedure] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Table_Disease] PRIMARY KEY CLUSTERED 
(
	[diesease_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_District]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_District](
	[district_Id] [int] NOT NULL,
	[district_Name] [varchar](50) NOT NULL,
	[district_Population] [int] NOT NULL,
 CONSTRAINT [PK_Table_District] PRIMARY KEY CLUSTERED 
(
	[district_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Doctor]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Doctor](
	[doctor_Id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_Name] [varchar](50) NOT NULL,
	[doctor_Degree] [varchar](150) NULL,
	[doctor_Specialization] [varchar](450) NULL,
	[doctor_CenterId] [int] NULL,
 CONSTRAINT [PK_Table_Doctor] PRIMARY KEY CLUSTERED 
(
	[doctor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Dose]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Dose](
	[dose_Id] [int] IDENTITY(1,1) NOT NULL,
	[dose_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Dose] PRIMARY KEY CLUSTERED 
(
	[dose_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Medicine]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Medicine](
	[medicine_Id] [int] IDENTITY(1,1) NOT NULL,
	[medicine_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Medicin] PRIMARY KEY CLUSTERED 
(
	[medicine_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_MedicineQuantity]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_MedicineQuantity](
	[medicineQuantity_Id] [int] IDENTITY(1,1) NOT NULL,
	[medicineQuantity_Name] [varchar](50) NOT NULL,
	[medicineQuantity_Quantity] [int] NOT NULL,
	[medicineQuantity_CenterId] [int] NOT NULL,
 CONSTRAINT [PK_Table_medicineQuantity] PRIMARY KEY CLUSTERED 
(
	[medicineQuantity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Service]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Service](
	[service_Id] [int] IDENTITY(1,1) NOT NULL,
	[service_VoterId] [varchar](50) NOT NULL,
	[service_Nooftimestaken] [int] NOT NULL,
 CONSTRAINT [PK_Table_Service] PRIMARY KEY CLUSTERED 
(
	[service_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Thana]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Thana](
	[thana_Id] [int] NOT NULL,
	[thana_Name] [varchar](50) NOT NULL,
	[thana_DistrictId] [int] NOT NULL,
 CONSTRAINT [PK_Table_Thana] PRIMARY KEY CLUSTERED 
(
	[thana_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Treatment]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Treatment](
	[treatment_Id] [int] IDENTITY(1,1) NOT NULL,
	[treatment_VoterId] [varchar](50) NOT NULL,
	[treatment_Observation] [varchar](max) NOT NULL,
	[treatment_Date] [varchar](50) NOT NULL,
	[treatment_DoctorId] [int] NOT NULL,
	[treatment_DiseaseName] [varchar](50) NOT NULL,
	[treatment_MedicineName] [varchar](50) NOT NULL,
	[treatment_Dose] [varchar](20) NOT NULL,
	[treatment_Schedule] [varchar](50) NOT NULL,
	[treatment_Quantity] [int] NOT NULL,
	[treatment_Note] [varchar](50) NOT NULL,
	[treatment_CenterId] [int] NOT NULL,
 CONSTRAINT [PK_Table_Treatment] PRIMARY KEY CLUSTERED 
(
	[treatment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Voter]    Script Date: 7/3/2015 10:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Voter](
	[voter_Id] [int] IDENTITY(1,1) NOT NULL,
	[voter_VoterId] [varchar](50) NOT NULL,
	[voter_Name] [varchar](50) NOT NULL,
	[voter_Address] [varchar](250) NOT NULL,
	[voter_Age] [int] NOT NULL,
 CONSTRAINT [PK_Table_Voter] PRIMARY KEY CLUSTERED 
(
	[voter_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Center] ON 

INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (25, N'NSTU', N'NoNo79', N'fUENvbT3Mxh8cLNsO8wBWQ==', 16, 131)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (26, N'Tejaon', N'DhSa264', N'XsD5ywB/KYblEq4SEoSAfw==', 18, 153)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (27, N'NSTU1', N'NoNo310', N'ZoYaSAAyLnn/JYVBfBxcvw==', 16, 131)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (28, N'NSTU', N'NoBe696', N'igG6gSvEpZkZJLltKeSixA==', 16, 130)
INSERT [dbo].[Table_Center] ([center_Id], [center_Name], [center_Code], [center_Password], [center_DistrictId], [center_ThanaId]) VALUES (29, N'Bagerhat', N'BaBa431', N'jNKFdhdKJFt57hRZ6/heUA==', 35, 275)
SET IDENTITY_INSERT [dbo].[Table_Center] OFF
SET IDENTITY_INSERT [dbo].[Table_Disease] ON 

INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (1, N'Fever', N'Headache,High Temperature', N'Napa twice a day')
INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (2, N'Headache', N'Stream pain in head', N'Napa Extra twice a day')
INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (3, N'Electric Fever', N'<p><u><em>Bad Headac</em></u></p>
', N'antiviotic')
INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (4, N'Arsenic Poisoning', N'<div id="siteSub">From Wikipedia, the free encyclopedia</div>

<div id="contentSub">&nbsp;</div>

<table class="infobox" style="width:22em">
	<tbody>
		<tr>
			<th colspan="2" style="background-color:lightgrey; text-align:center">Arsenic Poisoning</th>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center"><a class="image" href="https://en.wikipedia.org/wiki/File:Arsenic_contamination_areas.jpg"><img alt="Arsenic contamination areas.jpg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Arsenic_contamination_areas.jpg/230px-Arsenic_contamination_areas.jpg" style="height:131px; width:230px" /></a>
			<div>Arsenic poisoning is a global problem arising from naturally occurring arsenic in ground water.</div>
			</td>
		</tr>
		<tr>
			<th colspan="2" style="text-align:center">Classification and external resources</th>
		</tr>
		<tr>
			<th scope="row"><a href="https://en.wikipedia.org/wiki/International_Statistical_Classification_of_Diseases_and_Related_Health_Problems" title="International Statistical Classification of Diseases and Related Health Problems">ICD</a>-<a href="https://en.wikipedia.org/wiki/ICD-10" title="ICD-10">10</a></th>
			<td><a class="external text" href="http://apps.who.int/classifications/icd10/browse/2015/en#/T57.0" rel="nofollow">T57.0</a></td>
		</tr>
		<tr>
			<th scope="row"><a href="https://en.wikipedia.org/wiki/International_Statistical_Classification_of_Diseases_and_Related_Health_Problems" title="International Statistical Classification of Diseases and Related Health Problems">ICD</a>-<a href="https://en.wikipedia.org/wiki/List_of_ICD-9_codes" title="List of ICD-9 codes">9</a></th>
			<td><a class="external text" href="http://www.icd9data.com/getICD9Code.ashx?icd9=985.1" rel="nofollow">985.1</a></td>
		</tr>
		<tr>
			<th scope="row"><a href="https://en.wikipedia.org/wiki/EMedicine" title="EMedicine">eMedicine</a></th>
			<td><a class="external text" href="http://www.emedicine.com/emerg/topic42.htm" rel="nofollow">emerg/42</a></td>
		</tr>
		<tr>
			<th scope="row"><a href="https://en.wikipedia.org/wiki/Medical_Subject_Headings" title="Medical Subject Headings">MeSH</a></th>
			<td><a class="external text" href="https://www.nlm.nih.gov/cgi/mesh/2015/MB_cgi?field=uid&amp;term=D020261" rel="nofollow">D020261</a></td>
		</tr>
	</tbody>
</table>

<p><strong>Arsenic poisoning</strong> is a medical condition caused by elevated levels of <a href="https://en.wikipedia.org/wiki/Arsenic" title="Arsenic">arsenic</a> in the body. The dominant basis of arsenic poisoning is from <a class="mw-redirect" href="https://en.wikipedia.org/wiki/Ground_water" title="Ground water">ground water</a> that naturally contains high concentrations of arsenic. A 2007 study found that over 137 million people in more than 70 countries are probably affected by arsenic poisoning from drinking water.<sup><a href="https://en.wikipedia.org/wiki/Arsenic_poisoning#cite_note-1">[1]</a></sup></p>
', N'Drink arsenic free water')
INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (5, N'PP', N'', N'tt')
INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (6, N'Kidney', N'', N'"The KDA web site is a source of real information and even stories of other guys with the same problem. All of a sudden I was not alone, and also the information about the research going on gave me hope."')
INSERT [dbo].[Table_Disease] ([diesease_Id], [disease_Name], [disease_Description], [disease_TreatmentProcedure]) VALUES (7, N'Cold', N'', N'Hot water drink')
SET IDENTITY_INSERT [dbo].[Table_Disease] OFF
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (1, N'Barguna', 892781)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (2, N'Barisal', 2324310)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (3, N'Bhola', 1776795)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (4, N'Jhalokati', 682669)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (5, N'Patuakhali', 1535854)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (6, N'Pirojpur', 1113257)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (7, N'Bandarban', 388335)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (8, N'Brahmanbaria', 2840498)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (9, N'Chandpur', 2416018)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (10, N'Chittagong', 7616352)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (11, N'Comilla', 5387288)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (12, N'Cox''s Bazar', 2289990)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (13, N'Feni', 1437371)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (14, N'Khagrachhari', 613917)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (15, N'Lakshmipur', 1729188)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (16, N'Noakhali', 3108083)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (17, N'Rangamati', 595979)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (18, N'Dhaka', 12043977)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (19, N'Fardistrict_Idpur', 1912969)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (20, N'Gazipur', 3403912)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (21, N'Gopalganj', 1172415)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (22, N'Jamalpur', 2292674)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (23, N'Kishoreganj', 2911907)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (24, N'Madaripur', 1165952)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (25, N'Manikganj', 1392867)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (26, N'Munshiganj', 1445660)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (27, N'Mymensingh', 5110272)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (28, N'Narayanganj', 2948217)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (29, N'Netrokona', 2229642)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (30, N'Rajbari', 1049778)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (31, N'Shariatpur', 1155824)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (32, N'Sherpur', 1358325)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (33, N'Tangail', 3605083)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (34, N'Narsingdi', 2224944)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (35, N'Bagerhat', 1476090)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (36, N'Chuadanga', 1129015)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (37, N'Jessore', 2764547)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (38, N'Jhenadistrict_Ida', 1771304)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (39, N'Khulna', 2318527)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (40, N'Kushtia', 1946838)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (41, N'Magura', 918419)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (42, N'Meherpur', 655392)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (43, N'Narail', 721668)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (44, N'Satkhira', 1985959)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (45, N'Bogra', 3400874)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (46, N'Joypurhat', 913768)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (47, N'Naogaon', 2600157)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (48, N'Natore', 1706673)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (49, N'Nawabganj', 1647521)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (50, N'Pabna', 2523179)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (51, N'Rajshahi', 2595197)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (52, N'Sirajganj', 3097489)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (53, N'Dinajpur', 2990128)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (54, N'Gaibandha', 2379255)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (55, N'Kurigram', 2069273)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (56, N'Lalmonirhat', 1256099)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (57, N'Nilphamari', 1834231)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (58, N'Panchagarh', 987644)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (59, N'Rangpur', 2881086)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (60, N'Thakurgaon', 1390042)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (61, N'Habiganj', 2089001)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (62, N'Moulvibazar', 1919062)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (63, N'Sunamganj', 2467968)
INSERT [dbo].[Table_District] ([district_Id], [district_Name], [district_Population]) VALUES (64, N'Sylhet', 3434188)
SET IDENTITY_INSERT [dbo].[Table_Doctor] ON 

INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (1, N'Monir Mahmud', N'MBBS, FCPS', N'Surgeaon', 1)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (5, N'Rambabu', N'CSTE', N'Computer Science', 3)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (6, N'Munir Hossain', N'MBBS', N'Computer Science', 24)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (7, N'Munir Hossain', N'MBBS', N'Surgery', 25)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (8, N'Rakibul Hasan', N'MBBS', N'Physical', 25)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (9, N'Mizanhur Rahman', N'MBBS', N'Physical', 26)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (10, N'Pavel Fahmi', N'MBBS', N'ENT', 26)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (11, N'Ram Babu Kushwaha', N'MBBS', N'Physician', 29)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (12, N'Rakibul Hasan Roni', N'MBBS', N'Physician', 29)
INSERT [dbo].[Table_Doctor] ([doctor_Id], [doctor_Name], [doctor_Degree], [doctor_Specialization], [doctor_CenterId]) VALUES (13, N'Munir Hossain', N'MBBS', N'Physician', 29)
SET IDENTITY_INSERT [dbo].[Table_Doctor] OFF
SET IDENTITY_INSERT [dbo].[Table_Dose] ON 

INSERT [dbo].[Table_Dose] ([dose_Id], [dose_Name]) VALUES (1, N'1+0+0')
INSERT [dbo].[Table_Dose] ([dose_Id], [dose_Name]) VALUES (2, N'0+1+0')
INSERT [dbo].[Table_Dose] ([dose_Id], [dose_Name]) VALUES (3, N'0+0+1')
INSERT [dbo].[Table_Dose] ([dose_Id], [dose_Name]) VALUES (4, N'1+0+1')
INSERT [dbo].[Table_Dose] ([dose_Id], [dose_Name]) VALUES (5, N'1+1+1')
SET IDENTITY_INSERT [dbo].[Table_Dose] OFF
SET IDENTITY_INSERT [dbo].[Table_Medicine] ON 

INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (1, N'Napa Extra 500mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (2, N'Napa Extended 500mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (3, N'Napa Extended 650mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (4, N'Omited 20mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (5, N'Alectrol 20mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (6, N'oxin200mg')
INSERT [dbo].[Table_Medicine] ([medicine_Id], [medicine_Name]) VALUES (7, N'Megapain500Mg')
SET IDENTITY_INSERT [dbo].[Table_Medicine] OFF
SET IDENTITY_INSERT [dbo].[Table_MedicineQuantity] ON 

INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (1, N'Napa Extra 500mg', 1561, 1)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (2, N'Napa Extended 500mg', 2240, 1)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (3, N'Napa Extra 500mg', 1361, 23)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (4, N'Napa Extended 500mg', 2220, 23)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (5, N'Napa Extended 650mg', 3331, 23)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (6, N'Napa Extra 500mg', 1221, 24)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (7, N'Napa Extended 650mg', 2131, 24)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (8, N'Napa Extended 500mg', 2100, 24)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (9, N'Napa Extra 500mg', 1121, 25)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (10, N'Omited 20mg', 1010, 25)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (11, N'Napa Extra 500mg', 1111, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (12, N'Napa Extended 500mg', 2000, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (13, N'Napa Extended 650mg', 2011, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (14, N'Omited 20mg', 1000, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (15, N'Alectrol 20mg', 1115, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (16, N'oxin200mg', 100, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (17, N'Napa Extra 500mg', 111, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (18, N'Napa Extended 650mg', 1011, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (19, N'Alectrol 20mg', 115, 26)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (20, N'Napa Extra 500mg', 100, 29)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (21, N'Napa Extended 500mg', 1000, 29)
INSERT [dbo].[Table_MedicineQuantity] ([medicineQuantity_Id], [medicineQuantity_Name], [medicineQuantity_Quantity], [medicineQuantity_CenterId]) VALUES (22, N'Napa Extended 650mg', 1000, 29)
SET IDENTITY_INSERT [dbo].[Table_MedicineQuantity] OFF
SET IDENTITY_INSERT [dbo].[Table_Service] ON 

INSERT [dbo].[Table_Service] ([service_Id], [service_VoterId], [service_Nooftimestaken]) VALUES (1, N'1098789543218', 4)
INSERT [dbo].[Table_Service] ([service_Id], [service_VoterId], [service_Nooftimestaken]) VALUES (2, N'8909854343334', 0)
INSERT [dbo].[Table_Service] ([service_Id], [service_VoterId], [service_Nooftimestaken]) VALUES (3, N'', 1)
SET IDENTITY_INSERT [dbo].[Table_Service] OFF
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (1, N'Amtali', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (2, N'Bamna', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (3, N'Barguna Sadar', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (4, N'Betagi', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (5, N'Patharghata', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (6, N'Taltoli', 1)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (7, N'Agailjhara', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (8, N'Babuganj', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (9, N'Bakerganj', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (10, N'Banaripara', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (11, N'Gaurnadi', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (12, N'Hizla', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (13, N'Barisal Sadar', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (14, N'Mehendiganj', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (15, N'Muladi', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (16, N'Wazirpur', 2)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (17, N'Bhola Sadar', 3)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (18, N'Burhanuddin', 3)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (19, N'Char Fasson', 3)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (20, N'Daulatkhan', 3)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (21, N'Lalmohan', 3)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (22, N'Manpura', 3)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (23, N'Tazumuddin', 3)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (24, N'Jhalokati Sadar', 4)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (25, N'Kathalia', 4)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (26, N'Nalchity', 4)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (27, N'Rajapur', 4)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (28, N'Bauphal', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (29, N'Dashmina', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (30, N'Galachipa', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (31, N'Kalapara', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (32, N'Mirzaganj', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (33, N'Patuakhali Sadar', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (34, N'Rangabali', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (35, N'Dumki', 5)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (36, N'Bhandaria', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (37, N'Kawkhali', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (38, N'Mathbaria', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (39, N'Nazirpur', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (40, N'Pirojpur Sadar', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (41, N'Nesarabad', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (42, N'Zianagor', 6)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (43, N'Ali Kadam', 7)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (44, N'Bandarban Sadar', 7)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (45, N'Lama', 7)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (46, N'Naikhongchhari', 7)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (47, N'Rowangchhari', 7)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (48, N'Ruma', 7)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (49, N'Thanchi', 7)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (50, N'Akhaura', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (51, N'Bancharampur', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (52, N'Brahmanbaria Sadar', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (53, N'Kasba', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (54, N'Nabinagar', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (55, N'Nasirnagar', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (56, N'Sarail', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (57, N'Ashuganj', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (58, N'Bijoynagar', 8)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (59, N'Chandpur Sadar', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (60, N'Farthana_Idganj', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (61, N'Haimchar', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (62, N'Haziganj', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (63, N'Kachua', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (64, N'Matlab Dakshin', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (65, N'Matlab Uttar', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (66, N'Shahrasti', 9)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (67, N'Anwara', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (68, N'Banshkhali', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (69, N'Boalkhali', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (70, N'Chandanaish', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (71, N'Fatikchhari', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (72, N'Hathazari', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (73, N'Lohagara', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (74, N'Mirsharai', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (75, N'Patiya', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (76, N'Rangunia', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (77, N'Raozan', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (78, N'Sandwip', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (79, N'Satkania', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (80, N'Sitakunda', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (81, N'Bandor Thana', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (82, N'Chandgaon Thana', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (83, N'Double Mooring Thana', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (84, N'Kotwali Thana', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (85, N'Pahartali Thana', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (86, N'Panchlaish Thana', 10)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (87, N'Barura', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (88, N'Brahmanpara', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (89, N'Burichang', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (90, N'Chandina', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (91, N'Chauddagram', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (92, N'Daudkandi', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (93, N'Debthana_Idwar', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (94, N'Homna', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (95, N'Laksam', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (96, N'Muradnagar', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (97, N'Nangalkot', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (98, N'Comilla Adarsha Sadar', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (99, N'Meghna', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (100, N'Titas', 11)
GO
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (101, N'Monohargonj', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (102, N'Comilla Sadar Dakshin', 11)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (103, N'Chakaria', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (104, N'Coxs Bazar Sadar', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (105, N'Kutubdia', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (106, N'Maheshkhali', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (107, N'Ramu', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (108, N'Teknaf', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (109, N'Ukhia', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (110, N'Pekua', 12)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (111, N'Chhagalnaiya', 13)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (112, N'Daganbhuiyan', 13)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (113, N'Feni Sadar', 13)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (114, N'Parshuram', 13)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (115, N'Sonagazi', 13)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (116, N'Fulgazi', 13)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (117, N'Dighinala', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (118, N'Khagrachhari', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (119, N'Lakshmichhari', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (120, N'Mahalchhari', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (121, N'Manikchhari', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (122, N'Matiranga', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (123, N'Panchhari', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (124, N'Ramgarh', 14)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (125, N'Lakshmipur Sadar', 15)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (126, N'Raipur', 15)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (127, N'Ramganj', 15)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (128, N'Ramgati', 15)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (129, N'Kamalnagar', 15)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (130, N'Begumganj', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (131, N'Noakhali Sadar', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (132, N'Chatkhil', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (133, N'Companiganj', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (134, N'Hatiya', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (135, N'Senbagh', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (136, N'Sonaimuri', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (137, N'Subarnachar', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (138, N'Kabirhat', 16)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (139, N'Bagaichhari', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (140, N'Barkal', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (141, N'Kawkhali', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (142, N'Belaichhari', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (143, N'Kaptai', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (144, N'Juraichhari', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (145, N'Langadu', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (146, N'Naniyachar', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (147, N'Rajasthali', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (148, N'Rangamati Sadar', 17)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (149, N'Dhamrai', 18)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (150, N'Dohar', 18)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (151, N'Keraniganj', 18)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (152, N'Nawabganj', 18)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (153, N'Savar', 18)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (154, N'Alfadanga', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (155, N'Bhanga', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (156, N'Boalmari', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (157, N'Charbhadrasan', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (158, N'Farthana_Idpur Sadar', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (159, N'Madhukhali', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (160, N'Nagarkanda', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (161, N'Sadarpur', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (162, N'Saltha', 19)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (163, N'Gazipur Sadar', 20)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (164, N'Kaliakair', 20)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (165, N'Kaliganj', 20)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (166, N'Kapasia', 20)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (167, N'Sreepur', 20)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (168, N'Gopalganj Sadar', 21)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (169, N'Kashiani', 21)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (170, N'Kotalipara', 21)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (171, N'Muksudpur', 21)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (172, N'Tungipara', 21)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (173, N'Baksiganj', 22)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (174, N'Dewanganj', 22)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (175, N'Islampur', 22)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (176, N'Jamalpur Sadar', 22)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (177, N'Madarganj', 22)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (178, N'Melandaha', 22)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (179, N'Sarishabari', 22)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (180, N'Astagram', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (181, N'Bajitpur', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (182, N'Bhairab', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (183, N'Hossainpur', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (184, N'Itna', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (185, N'Karimganj', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (186, N'Katiadi', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (187, N'Kishoreganj Sadar', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (188, N'Kuliarchar', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (189, N'Mithamain', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (190, N'Nikli', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (191, N'Pakundia', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (192, N'Tarail', 23)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (193, N'Rajoir', 24)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (194, N'Madaripur Sadar', 24)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (195, N'Kalkini', 24)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (196, N'Shibchar', 24)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (197, N'Daulatpur', 25)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (198, N'Ghior', 25)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (199, N'Harirampur', 25)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (200, N'Manikgonj Sadar', 25)
GO
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (201, N'Saturia', 25)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (202, N'Shivalaya', 25)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (203, N'Singair', 25)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (204, N'Gazaria', 26)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (205, N'Lohajang', 26)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (206, N'Munshiganj Sadar', 26)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (207, N'Sirajdikhan', 26)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (208, N'Sreenagar', 26)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (209, N'Tongibari', 26)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (210, N'Bhaluka', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (211, N'Dhobaura', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (212, N'Fulbaria', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (213, N'Gaffargaon', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (214, N'Gauripur', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (215, N'Haluaghat', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (216, N'Ishwarganj', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (217, N'Mymensingh Sadar', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (218, N'Muktagachha', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (219, N'Nandail', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (220, N'Phulpur', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (221, N'Trishal', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (222, N'Tara Khanda', 27)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (223, N'Araihazar', 28)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (224, N'Bandar', 28)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (225, N'Narayanganj Sadar', 28)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (226, N'Rupganj', 28)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (227, N'Sonargaon', 28)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (228, N'Fatullah', 28)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (229, N'Sthana_Iddhirganj', 28)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (230, N'Atpara', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (231, N'Barhatta', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (232, N'Durgapur', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (233, N'Khaliajuri', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (234, N'Kalmakanda', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (235, N'Kendua', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (236, N'Madan', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (237, N'Mohanganj', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (238, N'Netrokona Sadar', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (239, N'Purbadhala', 29)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (240, N'Baliakandi', 30)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (241, N'Goalandaghat', 30)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (242, N'Pangsha', 30)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (243, N'Rajbari Sadar', 30)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (244, N'Kalukhali', 30)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (245, N'Bhedarganj', 31)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (246, N'Damudya', 31)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (247, N'Gosairhat', 31)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (248, N'Naria', 31)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (249, N'Shariatpur Sadar', 31)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (250, N'Zanjira', 31)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (251, N'Shakhipur', 31)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (252, N'Jhenaigati', 32)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (253, N'Nakla', 32)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (254, N'Nalitabari', 32)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (255, N'Sherpur Sadar', 32)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (256, N'Sreebardi', 32)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (257, N'Gopalpur', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (258, N'Basail', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (259, N'Bhuapur', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (260, N'Delduar', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (261, N'Ghatail', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (262, N'Kalihati', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (263, N'Madhupur', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (264, N'Mirzapur', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (265, N'Nagarpur', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (266, N'Sakhipur', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (267, N'Dhanbari', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (268, N'Tangail Sadar', 33)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (269, N'Narsingdi Sadar', 34)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (270, N'Belabo', 34)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (271, N'Monohardi', 34)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (272, N'Palash', 34)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (273, N'Raipura', 34)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (274, N'Shibpur', 34)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (275, N'Bagerhat Sadar', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (276, N'Chitalmari', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (277, N'Fakirhat', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (278, N'Kachua', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (279, N'Mollahat', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (280, N'Mongla', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (281, N'Morrelganj', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (282, N'Rampal', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (283, N'Sarankhola', 35)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (284, N'Alamdanga', 36)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (285, N'Chuadanga Sadar', 36)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (286, N'Damurhuda', 36)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (287, N'Jibannagar', 36)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (288, N'Abhaynagar', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (289, N'Bagherpara', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (290, N'Chaugachha', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (291, N'Jhikargachha', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (292, N'Keshabpur', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (293, N'Jessore Sadar', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (294, N'Manirampur', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (295, N'Sharsha', 37)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (296, N'Harinakunda', 38)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (297, N'Jhenathana_Idah Sadar', 38)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (298, N'Kaliganj', 38)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (299, N'Kotchandpur', 38)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (300, N'Maheshpur', 38)
GO
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (301, N'Shailkupa', 38)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (302, N'Batiaghata', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (303, N'Dacope', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (304, N'Dumuria', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (305, N'Dighalia', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (306, N'Koyra', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (307, N'Paikgachha', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (308, N'Phultala', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (309, N'Rupsha', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (310, N'Terokhada', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (311, N'Daulatpur Thana', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (312, N'Khalishpur Thana', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (313, N'Khan Jahan Ali Thana', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (314, N'Kotwali Thana', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (315, N'Sonadanga Thana', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (316, N'Harintana Thana', 39)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (317, N'Bheramara', 40)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (318, N'Daulatpur', 40)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (319, N'Khoksa', 40)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (320, N'Kumarkhali', 40)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (321, N'Kushtia Sadar', 40)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (322, N'Mirpur', 40)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (323, N'Shekhpara', 40)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (324, N'Magura Sadar', 41)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (325, N'Mohammadpur', 41)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (326, N'Shalikha', 41)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (327, N'Sreepur', 41)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (328, N'Gangni', 42)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (329, N'Meherpur Sadar', 42)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (330, N'Mujibnagar', 42)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (331, N'Kalia', 43)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (332, N'Lohagara', 43)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (333, N'Narail Sadar', 43)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (334, N'Naragati Thana', 43)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (335, N'Assasuni', 44)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (336, N'Debhata', 44)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (337, N'Kalaroa', 44)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (338, N'Kaliganj', 44)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (339, N'Satkhira Sadar', 44)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (340, N'Shyamnagar', 44)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (341, N'Tala', 44)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (342, N'Adamdighi', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (343, N'Bogra Sadar', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (344, N'Dhunat', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (345, N'Dhupchanchia', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (346, N'Gabtali', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (347, N'Kahaloo', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (348, N'Nandigram', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (349, N'Sariakandi', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (350, N'Shajahanpur', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (351, N'Sherpur', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (352, N'Shibganj', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (353, N'Sonatola', 45)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (354, N'Akkelpur', 46)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (355, N'Joypurhat Sadar', 46)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (356, N'Kalai', 46)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (357, N'Khetlal', 46)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (358, N'Panchbibi', 46)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (359, N'Atrai', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (360, N'Badalgachhi', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (361, N'Manda', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (362, N'Dhamoirhat', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (363, N' Mohadevpur', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (364, N'Naogaon Sadar', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (365, N'Niamatpur', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (366, N'Patnitala', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (367, N'Porsha', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (368, N'Raninagar', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (369, N'Sapahar', 47)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (370, N'Bagatipara', 48)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (371, N'Baraigram', 48)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (372, N'Gurudaspur', 48)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (373, N'Lalpur', 48)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (374, N'Natore Sadar', 48)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (375, N'Singra', 48)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (376, N'Naldanga', 48)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (377, N'Bholahat', 49)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (378, N'Gomastapur', 49)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (379, N'Nachole', 49)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (380, N'Nawabganj Sadar', 49)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (381, N'Shibganj', 49)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (382, N'Ataikula', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (383, N'Atgharia', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (384, N'Bera', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (385, N'Bhangura', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (386, N'Chatmohar', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (387, N'Farthana_Idpur', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (388, N'Ishwardi', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (389, N'Pabna Sadar', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (390, N'Santhia', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (391, N'Sujanagar', 50)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (392, N'Bagha', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (393, N'Bagmara', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (394, N'Charghat', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (395, N'Durgapur', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (396, N'Godagari', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (397, N'Mohanpur', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (398, N'Paba', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (399, N'Puthia', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (400, N'Tanore', 51)
GO
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (401, N'Boalia Thana', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (402, N'Matihar Thana', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (403, N'Rajpara Thana', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (404, N'Shah Mokdum Thana', 51)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (405, N'Belkuchi', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (406, N'Chauhali', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (407, N'Kamarkhanda', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (408, N'Kazipur', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (409, N'Raiganj', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (410, N'Shahjadpur', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (411, N'Sirajganj Sadar', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (412, N'Tarash', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (413, N'Ullahpara', 52)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (414, N'Birampur', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (415, N'Birganj', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (416, N'Biral', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (417, N'Bochaganj', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (418, N'Chirirbandar', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (419, N'Phulbari', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (420, N'Ghoraghat', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (421, N'Hakimpur', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (422, N'Kaharole', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (423, N'Khansama', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (424, N'Dinajpur Sadar', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (425, N'Nawabganj', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (426, N'Parbatipur', 53)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (427, N'Phulchhari', 54)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (428, N'Gaibandha Sadar', 54)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (429, N'Gobindaganj', 54)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (430, N'Palashbari', 54)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (431, N'Sadullapur', 54)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (432, N'Sughatta', 54)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (433, N'Sundarganj', 54)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (434, N'Bhurungamari', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (435, N'Char Rajibpur', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (436, N'Chilmari', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (437, N'Phulbari', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (438, N'Kurigram Sadar', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (439, N'Nageshwari', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (440, N'Rajarhat', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (441, N'Raomari', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (442, N'Ulipur', 55)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (443, N'Aditmari', 56)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (444, N'Hatibandha', 56)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (445, N'Kaliganj', 56)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (446, N'Lalmonirhat Sadar', 56)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (447, N'Patgram', 56)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (448, N'Dimla', 57)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (449, N'Domar', 57)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (450, N'Jaldhaka', 57)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (451, N'Kishoreganj', 57)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (452, N'Nilphamari Sadar', 57)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (453, N'Sathana_Idpur', 57)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (454, N'Atwari', 58)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (455, N'Boda', 58)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (456, N'Debiganj', 58)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (457, N'Panchagarh Sadar', 58)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (458, N'Tetulia', 58)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (459, N'Badarganj', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (460, N'Gangachhara', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (461, N'Kaunia', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (462, N'Rangpur Sadar', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (463, N'Mithapukur', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (464, N'Pirgachha', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (465, N'Pirganj', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (466, N'Taraganj', 59)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (467, N'Baliadangi', 60)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (468, N'Haripur', 60)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (469, N'Pirganj', 60)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (470, N'Ranisankail', 60)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (471, N'Thakurgaon Sadar', 60)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (472, N'Ajmiriganj', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (473, N'Bahubal', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (474, N'Baniyachong', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (475, N'Chunarughat', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (476, N'Habiganj Sadar', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (477, N'Lakhai', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (478, N'Madhabpur', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (479, N'Nabiganj', 61)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (480, N'Barlekha', 62)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (481, N'Kamalganj', 62)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (482, N'Kulaura', 62)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (483, N'Moulvibazar Sadar', 62)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (484, N'Rajnagar', 62)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (485, N'Sreemangal', 62)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (486, N'Juri', 62)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (487, N'Bishwamvarpur', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (488, N'Chhatak', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (489, N'Derai', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (490, N'Dharampasha', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (491, N'Dowarabazar', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (492, N'Jagannathpur', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (493, N'Jamalganj', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (494, N'Sullah', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (495, N'Sunamganj Sadar', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (496, N'Tahirpur', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (497, N'South Sunamganj', 63)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (498, N'Balaganj', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (499, N'Beanibazar', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (500, N'Bishwanath', 64)
GO
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (501, N'Companigonj', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (502, N'Fenchuganj', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (503, N'Golapganj', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (504, N'Gowainghat', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (505, N'Jaintiapur', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (506, N'Kanaighat', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (507, N'Sylhet Sadar', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (508, N'Zakiganj', 64)
INSERT [dbo].[Table_Thana] ([thana_Id], [thana_Name], [thana_DistrictId]) VALUES (509, N'South Shurma', 64)
SET IDENTITY_INSERT [dbo].[Table_Treatment] ON 

INSERT [dbo].[Table_Treatment] ([treatment_Id], [treatment_VoterId], [treatment_Observation], [treatment_Date], [treatment_DoctorId], [treatment_DiseaseName], [treatment_MedicineName], [treatment_Dose], [treatment_Schedule], [treatment_Quantity], [treatment_Note], [treatment_CenterId]) VALUES (1, N'1098789543218', N'gb', N'07/02/2015', 9, N'Fever', N'Napa Extra 500mg', N'1+0+0', N'Before Meal', 10, N'gmm', 26)
INSERT [dbo].[Table_Treatment] ([treatment_Id], [treatment_VoterId], [treatment_Observation], [treatment_Date], [treatment_DoctorId], [treatment_DiseaseName], [treatment_MedicineName], [treatment_Dose], [treatment_Schedule], [treatment_Quantity], [treatment_Note], [treatment_CenterId]) VALUES (2, N'1098789543218', N'gb', N'07/02/2015', 9, N'Fever', N'Napa Extended 500mg', N'1+0+0', N'Before Meal', 15, N'gmm', 26)
INSERT [dbo].[Table_Treatment] ([treatment_Id], [treatment_VoterId], [treatment_Observation], [treatment_Date], [treatment_DoctorId], [treatment_DiseaseName], [treatment_MedicineName], [treatment_Dose], [treatment_Schedule], [treatment_Quantity], [treatment_Note], [treatment_CenterId]) VALUES (3, N'1098789543218', N'rr', N'07/02/2015', 9, N'Fever', N'Napa Extra 500mg', N'0+1+0', N'After Meal', 10, N'Take a good nap', 26)
INSERT [dbo].[Table_Treatment] ([treatment_Id], [treatment_VoterId], [treatment_Observation], [treatment_Date], [treatment_DoctorId], [treatment_DiseaseName], [treatment_MedicineName], [treatment_Dose], [treatment_Schedule], [treatment_Quantity], [treatment_Note], [treatment_CenterId]) VALUES (4, N'1098789543218', N'rr', N'07/02/2015', 9, N'Fever', N'Alectrol 20mg', N'1+0+1', N'After Meal', 10, N'Take a good nap', 26)
INSERT [dbo].[Table_Treatment] ([treatment_Id], [treatment_VoterId], [treatment_Observation], [treatment_Date], [treatment_DoctorId], [treatment_DiseaseName], [treatment_MedicineName], [treatment_Dose], [treatment_Schedule], [treatment_Quantity], [treatment_Note], [treatment_CenterId]) VALUES (5, N'8909854343334', N'ff', N'07/03/2015', 10, N'Headache', N'Napa Extra 500mg', N'1+0+0', N'Before Meal', 10, N'vv', 26)
INSERT [dbo].[Table_Treatment] ([treatment_Id], [treatment_VoterId], [treatment_Observation], [treatment_Date], [treatment_DoctorId], [treatment_DiseaseName], [treatment_MedicineName], [treatment_Dose], [treatment_Schedule], [treatment_Quantity], [treatment_Note], [treatment_CenterId]) VALUES (6, N'8909854343334', N'ff', N'07/03/2015', 10, N'Headache', N'Omited 20mg', N'1+0+1', N'After Meal', 10, N'vv', 26)
SET IDENTITY_INSERT [dbo].[Table_Treatment] OFF
SET IDENTITY_INSERT [dbo].[Table_Voter] ON 

INSERT [dbo].[Table_Voter] ([voter_Id], [voter_VoterId], [voter_Name], [voter_Address], [voter_Age]) VALUES (1, N'1098789543218', N'Rakib Hasan', N'Vill. Shantinagar. Thana: Katalgonj, Faridpur', 33)
INSERT [dbo].[Table_Voter] ([voter_Id], [voter_VoterId], [voter_Name], [voter_Address], [voter_Age]) VALUES (2, N'8909854343334', N'Gaji Salah Uddin', N'Chittagong', 50)
SET IDENTITY_INSERT [dbo].[Table_Voter] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Table_Center]    Script Date: 7/3/2015 10:18:57 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Table_Center] ON [dbo].[Table_Center]
(
	[center_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MedicineAutomationDB] SET  READ_WRITE 
GO
