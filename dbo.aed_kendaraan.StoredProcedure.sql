use InterviewDB2
GO

create Procedure dbo.aed_kendaraan (
@process varchar(10),
@BatchOrder varchar(100),
@NoKontrak varchar(100),
@NamaDebitur varchar(100),
@Company varchar(100),
@KodeCabang varchar(20),
@DOBDebitur datetime,
@TempatLahir varchar(100),
@NIK varchar(100),
@Alamat varchar(100),
@OTR numeric(18,2),
@ObjBrand varchar(100),
@ObjModel varchar(100),
@ObjDesc varchar(100),
@Tahun INT, 
@Warna varchar(100),
@NoRangka varchar(100),
@NoMesin varchar(100),
@NoPol varchar(100),
@Column1 varchar(100),
@Column2 varchar(100),
@Column3 varchar(100),
@NamaBPKP varchar(100),
@Column4 varchar(100),
@Column5 varchar(100),
@Pertanggungan varchar(100),
@Column6 varchar(100),
@PeriodeAwal datetime,
@PeriodeAkhir datetime,
@Column7 varchar(100),
@NoPolis varchar(100),
@Premi numeric(18,2)
)
As

if (@process = 'ADD')
Begin
	INSERT INTO TbKendaraan (
				BatchOrder,NoKontrak,NamaDebitur,Company,KodeCabang,DOBDebitur,TempatLahir,NIK,Alamat,OTR,ObjBrand,ObjModel,ObjDesc
				,Tahun,Warna,NoRangka,NoMesin,NoPol,Column1,Column2,Column3,NamaBPKP,Column4,Column5,Pertanggungan,Column6,PeriodeAwal
				,PeriodeAkhir,Column7,NoPolis,Premi)
	Values (
				@BatchOrder ,@NoKontrak ,@NamaDebitur ,@Company ,@KodeCabang ,@DOBDebitur ,@TempatLahir ,@NIK ,@Alamat ,@OTR ,@ObjBrand ,@ObjModel ,@ObjDesc 
				,@Tahun ,@Warna ,@NoRangka,@NoMesin ,@NoPol ,@Column1 ,@Column2 ,@Column3 ,@NamaBPKP ,@Column4 ,@Column5 ,@Pertanggungan ,@Column6 ,@PeriodeAwal 
				,@PeriodeAkhir ,@Column7 ,@NoPolis ,@Premi 
	)
End