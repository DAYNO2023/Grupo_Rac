CREATE SCHEMA [Acce]
GO
/****** Object:  Schema [Gral]    Script Date: 29/4/2024 12:50:31 ******/
CREATE SCHEMA [Gral]
GO
CREATE SCHEMA [Vent]
GO
/****** Object:  Table [Acce].[tbPantallas]    Script Date: 29/4/2024 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbEstadosCiviles](
	[Est_ID] [int] IDENTITY(1,1) primary key ,
	[Est_Descripcion] [varchar](50) NOT NULL,
	[Est_UsuCre] [int] NOT NULL,
	[Est_UsuModi] [int] NULL,
	[Est_Fecha_Creacion] [date] NOT NULL,
	[Est_Fecha_Modifica] [date] NULL,
	[Est_Estado] [bit] NOT NULL,
		constraint FK_Est_UsuCre foreign Key ([Est_UsuCre]) references [Acce].[tbUsuarios](Usu_ID),
		constraint FK_Est_UsuModi foreign Key (Est_UsuModi) references [Acce].[tbUsuarios](Usu_ID),
	
) 
GO
/*
alter table [Acce].[tbUsuarios]
add [Crg_Id] [int]  

[Est_Id] [int]  NULL,
	[Sed_Id] [int]  NULL,
	[Crg_Id] [int]  NULL,
	
CREATE TABLE [Acce].[tbUsuarios](
	[Usu_ID] [int] IDENTITY(1,1) primary key,
	[Usu_Nombre] [varchar](100)  NULL,
	[Usu_Apellido] [varchar](100)  NULL,
	[Usu_Sexo] [char](1) NULL,
	[Usu_FechaNacimiento] [datetime] NULL,
	[Usu_Telefono] [varchar](8) NULL,
	
	[Usu_Usua] [varchar](50) NULL,
	[Usu_Admin] [bit] NULL,
	[Usu_UsuCre] [int]  NULL,
	[Usu_UsuModi] [int] NULL,
	[Usu_FechaCreacion] [date]  NULL,
	[Usu_FechaModifica] [date] NULL,
	[Usu_Estado] [int]  NULL,
	[Usu_Contra] [varbinary](max) NULL,
)

alter table [Acce].[tbUsuarios]
add constraint FK_tbUsuarios_tbUsuarios_Usu_UsuModi foreign key (Usu_UsuModi) references [Acce].[tbUsuarios]([Usu_ID])
GO
*/

--desde aca
create table Gral.tbDepartamento
(
	Dep_Id int primary key identity(1,1),
	Dep_Descripcion Varchar(100),
	[Dep_Creacion] [int]  NULL,
	[Dep_Modifica] [int] NULL,
	[Dep_Fecha_Creacion] [date] NOT NULL,
	[Dep_Fecha_Modifica] [date] NULL,
	[Dep_Estado] [bit]  NULL,
	constraint FK_Dep_Creacion foreign Key ([Dep_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Dep_Modifica foreign Key ([Dep_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
)
go
create table Gral.tbCiudades
(
	Ciu_Id int primary key identity(1,1),
	Dep_Id int,
	Ciu_Descripcion Varchar(100),
	[Ciu_Creacion] [int]  NULL,
	[Ciu_Modifica] [int] NULL,
	[Ciu_Fecha_Creacion] [date] NOT NULL,
	[Ciu_Fecha_Modifica] [date] NULL,
	[Ciu_Estado] [bit]  NULL,
	constraint FK_tbCiudades_tbDepartamento_Dep_Id foreign Key (Dep_Id) references Gral.tbDepartamento(Dep_Id),
	constraint FK_Ciu_Creacion foreign Key ([Ciu_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Ciu_Modifica foreign Key ([Ciu_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
)

go
create table Gral.tbSedes
(
	Sed_Id int primary key identity(1,1),
	Sed_Descripcion Varchar(100),
	
	Ciu_Id int,
	[Sed_Creacion] [int]  NULL,
	[Sed_Modifica] [int] NULL,
	[Sed_Fecha_Creacion] [date] NOT NULL,
	[Sed_Fecha_Modifica] [date] NULL,
	[Sed_Estado] [bit]  NULL,
	constraint FK_tbSedes_tbCiudades_Ciu_Id foreign Key (Ciu_Id) references Gral.tbCiudades(Ciu_Id),
	constraint FK_Sed_Creacion foreign Key ([Sed_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Sed_Modifica foreign Key ([Sed_Modifica]) references [Acce].[tbUsuarios](Usu_ID),

)
--alter table [Acce].[tbUsuarios]
--add constraint FK_tbUsuarios_tbSedes_Sed_Id foreign key (Sed_Id) references Gral.tbSedes(Sed_Id)
go
CREATE TABLE [Acce].[tbPantallas](
	[Ptl_Id] [int] IDENTITY(1,1)  primary key NOT NULL,
	[Ptl_Descripcion] [varchar](50)  NULL,
	[Ptl_Identificador] [varchar](5)  NULL,
	[Ptl_Creacion] [int]  NULL,
	[Ptl_FechaCreacion] [datetime]  NULL,
	[Ptl_Modifica] [int] NULL,
	[Ptl_FechaModificacion] [datetime] NULL,
	[Ptl_Estado] [bit]  NULL,
		constraint FK_Ptl_Creacion foreign Key ([Ptl_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
		constraint FK_Ptl_Modifica foreign Key ([Ptl_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
	)
GO
CREATE TABLE [Acce].[tbRoles](
	[Rol_Id] [int] IDENTITY(1,1) primary key,
	[Rol_Descripcion] [varchar](50)  NULL,
	[Rol_Creacion] [int]  NULL,
	[Rol_FechaCreacion] [datetime]  NULL,
	[Rol_Modifica] [int] NULL,
	[Rol_FechaModificacion] [datetime] NULL,
	[Rol_Estado] [bit]  NULL,
	constraint FK_Rol_Creacion foreign Key ([Rol_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
		constraint FK_Rol_Modifica foreign Key ([Rol_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
) 
GO
CREATE TABLE [Acce].[tbPantallas_PorRoles](
	[PaR_Id] [int] IDENTITY(1,1) primary key ,
	[Ptl_Id] [int]  NULL,
	[Rol_Id] [int]  NULL,
	[PaR_Creacion] [int]  NULL,
	[PaR_FechaCreacion] [datetime]  NULL,
	[PaR_Modifica] [int] NULL,
	[PaR_FechaModificacion] [datetime] NULL,
	[PaR_Estado] [bit]  NULL,
	constraint FK_tbPantallas_PorRoles_tbRoles foreign key ([Rol_Id]) references [Acce].[tbRoles]([Rol_Id]),
	constraint FK_tbPantallas_PorRoles_tbPantallas foreign key ([Ptl_Id]) references [Acce].[tbPantallas]([Ptl_Id]),
		constraint FK_PaR_Creacion foreign Key ([PaR_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
		constraint FK_PaR_Modifica foreign Key ([PaR_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
) 
go
CREATE TABLE [Gral].[tbCargos](
	[Crg_ID] [int] IDENTITY(1,1) primary key ,
	[Crg_Descripcion] [varchar](60) NULL,
	[Crg_Creacion] [int] NOT NULL,
	[Crg_Modifica] [int] NULL,
	[Crg_Fecha_Creacion] [date] NOT NULL,
	[Crg_Fecha_Modifica] [date] NULL,
	[Crg_Estado] [bit] NOT NULL,
	constraint FK_Crg_Creacion foreign Key ([Crg_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Crg_Modifica foreign Key ([Crg_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
) 
--alter table [Acce].[tbUsuarios]
--add constraint FK_tbUsuarios_tbCargos_Crg_ID foreign key (Crg_ID) references Gral.tbCargos(Crg_ID)
GO
create table Gral.tbMarcas
(
	Mar_Id int primary key identity(1,1),
	Mar_Descripcion varchar(150),
	[Mar_Creacion] [int]  NULL,
	[Mar_Modifica] [int] NULL,
	[Mar_Fecha_Creacion] [date] NOT NULL,
	[Mar_Fecha_Modifica] [date] NULL,
	[Mar_Estado] [bit]  NULL,
	constraint FK_Mar_Creacion foreign Key ([Mar_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Mar_Modifica foreign Key ([Mar_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
)
go
create table Gral.tbModelos 
(
	Mod_Id int primary key identity(1,1),
	Mod_Descripcion varchar(100),
	Mod_Año Date,
	Mar_Id int,
	[Mod_Creacion] [int]  NULL,
	[Mod_Modifica] [int] NULL,
	[Mod_Fecha_Creacion] [date]  NULL,
	[Mod_Fecha_Modifica] [date] NULL,
	[Mod_Estado] [bit]  NULL,
	constraint FK_Mod_Creacion foreign Key ([Mod_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Mod_Modifica foreign Key ([Mod_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_tbModelos_tbMarcas_Mar_Id foreign Key (Mar_Id) references Gral.tbMarcas(Mar_Id),
)
go
create table Vent.tbVehiculos
(
	Veh_Placa varchar(7) primary key ,
	Mod_Id int ,
	Sed_Id int,
	Com_Id Int,
	Com_Precio Numeric(8,2),
	[Veh_Creacion] [int]  NULL,
	[Veh_Modifica] [int] NULL,
	[Veh_Fecha_Creacion] [date]  NULL,
	[Veh_Fecha_Modifica] [date] NULL,
	[Veh_Estado] [bit]  NULL,
	constraint FK_Veh_Creacion foreign Key ([Veh_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Veh_Modifica foreign Key ([Veh_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_tbVehiculos_tbModelos_Mod_Id foreign Key (Mod_Id) references Gral.tbModelos (Mod_Id),
	constraint FK_tbVehiculos_tbSedes_Sed_Id foreign Key (Sed_Id) references Gral.tbSedes(Sed_Id),
	constraint FK_tbVehiculos_tbCompras_Com_Id foreign Key (Com_Id) references Vent.tbCompras(Com_Id),
)
go
create table Vent.tbCompras
(
	Com_Id int primary key identity(1,1),
	Cli_Id int,
	Com_Cant int,
	Com_Precio Numeric(8,2),
	Com_Fecha date,
	[Com_Creacion] [int]  NULL,
	[Com_Modifica] [int] NULL,
	[Com_Fecha_Creacion] [date]  NULL,
	[Com_Fecha_Modifica] [date] NULL,
	[Com_Estado] [bit]  NULL,
	constraint FK_Com_Creacion foreign Key ([Com_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Com_Modifica foreign Key ([Com_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_tbCompras_tbClientes_Cli_Id foreign Key (Cli_Id) references Gral.tbClientes(Cli_Id),
)
go
create table Gral.tbClientes
(
	Cli_Id int primary key identity(1,1),
	Cli_Nombre varchar(100),
	Cli_DNI varchar(13),
	Ciu_Id int,
	Cli_Direccion varchar(100),
	[Cli_Creacion] [int]  NULL,
	[Cli_Modifica] [int] NULL,
	[Cli_Fecha_Creacion] [date]  NULL,
	[Cli_Fecha_Modifica] [date] NULL,
	[Cli_Estado] [bit]  NULL,
	constraint FK_Com_Creacion foreign Key ([Cli_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_Com_Modifica foreign Key ([Cli_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_tbClientes_tbCiudades_Ciu_Id foreign Key (Ciu_Id) references Gral.tbCiudades(Ciu_Id),
)
go
create table Vent.tbVentasEnc
(
	VeE_Id Int primary key identity(1,1),
	VeE_Fecha date,
	Cli_Id int,
	Sed_Id int,
	[VeE_Creacion] [int]  NULL,
	[VeE_Modifica] [int] NULL,
	[VeE_Fecha_Creacion] [date]  NULL,
	[VeE_Fecha_Modifica] [date] NULL,
	[VeE_Estado] [bit]  NULL,
	constraint FK_VeE_Creacion foreign Key ([VeE_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_VeE_Modifica foreign Key ([VeE_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_tbVentasEnc_tbClientes_Cli_Id foreign Key (Cli_Id) references Gral.tbClientes(Cli_Id),
	constraint FK_tbVentasEnc_tbSedes_Sed_Id foreign Key (Sed_Id) references Gral.tbSedes(Sed_Id),
)

go
create table Vent.tbVentasDetalle
(
	VeD_Id int primary key identity(1,1),
	Veh_Placa varchar(7),
	VeD_Precio Numeric(8,2),
	VeE_Id Int,
	[VeD_Creacion] [int]  NULL,
	[VeD_Modifica] [int] NULL,
	[VeD_Fecha_Creacion] [date]  NULL,
	[VeD_Fecha_Modifica] [date] NULL,
	[VeD_Estado] [bit]  NULL,
	constraint FK_VeD_Creacion foreign Key ([VeD_Creacion]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_VeD_Modifica foreign Key ([VeD_Modifica]) references [Acce].[tbUsuarios](Usu_ID),
	constraint FK_tbVentasDetalle_tbVentasEnc_VeE_Id foreign Key (VeE_Id) references Vent.tbVentasEnc(VeE_Id),
	constraint FK_tbVentasDetalle_tbVehiculos_Veh_Placa foreign Key (Veh_Placa) references Vent.tbVehiculos(Veh_Placa),
)
go
--alter table [Acce].[tbUsuarios]
--add constraint FK_tbUsuarios_tbEstadosCiviles_Est_ID foreign key (Est_ID) references [Gral].[tbEstadosCiviles](Est_ID)
CREATE procedure [Acce].[SP_tbUsuarios_Login]
@Usu_Usua varchar(50),
@Usu_Contra varchar(50)
AS
BEGIN
select [Usu_ID],CONCAT([Emp_PrimerNombre],' ',[Emp_PrimerApellido]) as Nombre FROM [Acce].[tbUsuarios] usu inner join [Pers].[tbEmpleados] emp
on usu.Emp_ID=emp.Emp_ID
WHERE Usu_Usua = @Usu_Usua AND Usu_Contra=HASHBYTES('SHA2_512', @Usu_Contra) AND [Emp_Estado] = 1
END
GO
CREATE PROCEDURE [Acce].[SP_tbUsuarios_Insert]

      @Emp_ID int
           ,@Usu_Usua varchar(50)
           ,@Usu_Contra VARBINARY(MAX)
           ,@Usu_Usu_ID_Cre int
           ,@Usu_Fecha_Creacion date
           
AS
BEGIN
INSERT INTO [Acce].[tbUsuarios]( Emp_ID, Usu_Usua, Usu_Contra, Usu_Admin, Usu_Usu_ID_Cre, Usu_Fecha_Creacion,  Usu_Estado)
VALUES(
            @Emp_ID 
           ,@Usu_Usua 
           ,HASHBYTES('SHA2_512',@Usu_Contra )
           ,0
           ,@Usu_Usu_ID_Cre 
           ,@Usu_Fecha_Creacion 
           ,1 )
END
GO
CREATE PROCEDURE [Acce].[SP_tbUsuarios_Update]

      (@Usu_ID int
	  ,@Emp_ID int
           ,@Usu_Usua varchar(50)
           ,@Usu_Usu_ID_Modi int
           ,@Usu_Fecha_Modifica date
           )
AS
BEGIN
UPDATE [Acce].[tbUsuarios]
SET Emp_ID=@Emp_ID, Usu_Usua=@Usu_Usua,  Usu_Admin=0,
 Usu_Usu_ID_Modi =@Usu_Usu_ID_Modi, Usu_Fecha_Modifica =@Usu_Fecha_Modifica

WHERE Usu_ID = @Usu_ID
END

UPDATE [Acce].[tbUsuarios] 
set Usu_Contra = HASHBYTES('SHA2_512', '123' )