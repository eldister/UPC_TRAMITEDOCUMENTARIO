USE [master]
GO
/****** Object:  Database [munives_tramite]    Script Date: 1/03/2016 3:18:28 a. m. ******/
CREATE DATABASE [munives_tramite]
 
GO
USE [munives_tramite]
GO

CREATE TABLE [dbo].[tb_administrado](
	[cod_administrado] [char](10) NOT NULL,
	[nom] [varchar](200) NULL,
	[ape_pat] [varchar](200) NULL,
	[ape_mat] [varchar](200) NULL,
	[cod_tipo_documento] [char](6) NULL,
	[num_documento] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[telf1_contac] [varchar](200) NULL,
	[telf2_contac] [varchar](200) NULL,
	[direccion] [varchar](500) NULL,
	[fec_ingreso] [datetime] NULL,
	[usu_queregistro] [char](6) NULL,
	[usu_asociado] [char](6) NULL,
	[estado] [int] NULL,
	[fec_actu] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_administrado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_area]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_area](
	[cod_area] [char](6) NOT NULL,
	[des_area] [varchar](200) NULL,
	[cod_jefe] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_area_cargo]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_area_cargo](
	[cod_area_cargo] [int] IDENTITY(1,1) NOT NULL,
	[cod_area] [char](6) NULL,
	[cod_cargo] [char](6) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_area_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_asignacion]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_asignacion](
	[cod_asignacion] [int] IDENTITY(1,1) NOT NULL,
	[cod_tramite] [char](10) NULL,
	[cod_solicitud] [char](10) NULL,
	[cod_usu_asignador] [char](6) NULL,
	[cod_usu_asignado] [char](6) NULL,
	[des_asignacion] [varchar](200) NULL,
	[fec_registro] [datetime] NULL,
	[cod_estado_asigna] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_asignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_cargo]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_cargo](
	[cod_cargo] [char](6) NOT NULL,
	[des_cargo] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_detalle_adj_requisitos]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_detalle_adj_requisitos](
	[cod_detalle_adj_requisitos] [int] IDENTITY(1,1) NOT NULL,
	[cod_requisitos] [char](8) NULL,
	[ruta_img_adjunta] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_detalle_adj_requisitos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_detalle_perfil_modulo]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_detalle_perfil_modulo](
	[cod_detalle_perfil_modulo] [int] IDENTITY(1,1) NOT NULL,
	[cod_perfil_ingreso] [char](10) NULL,
	[cod_modulo] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_detalle_perfil_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_detalle_requisitos_exp]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_detalle_requisitos_exp](
	[cod_detalle_requisitos_exp] [int] IDENTITY(1,1) NOT NULL,
	[cod_tip_expediente] [char](10) NULL,
	[cod_requisitos] [char](8) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_detalle_requisitos_exp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_empleado]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_empleado](
	[cod_empleado] [char](10) NOT NULL,
	[nom_empleado] [varchar](200) NULL,
	[ape_pat] [varchar](200) NULL,
	[ape_mat] [varchar](200) NULL,
	[cod_area] [char](6) NULL,
	[cod_cargo] [char](6) NULL,
	[estado] [int] NULL,
	[cod_jefe] [char](10) NULL,
	[ind_jefedearea] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_estado_archiv_log]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_estado_archiv_log](
	[cod_estado_a_l] [char](6) NOT NULL,
	[des_estado_a_l] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_estado_a_l] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_flujo_expediente]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_flujo_expediente](
	[cod_flujo_expediente] [char](13) NOT NULL,
	[cod_tip_expediente] [char](10) NULL,
	[fec_registro] [datetime] NULL,
	[cod_user] [char](6) NULL,
	[estado] [int] NULL,
	[num_nivel] [int] NULL,
	[cod_area] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_flujo_expediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_flujo_tramite_real]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_flujo_tramite_real](
	[cod_flujo_tramite] [int] IDENTITY(1,1) NOT NULL,
	[cod_tramite] [char](10) NULL,
	[fec_registro] [datetime] NULL,
	[cod_usuario] [char](6) NULL,
	[cod_estado] [char](6) NULL,
	[cod_area] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_flujo_tramite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_folio]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_folio](
	[cod_folio] [char](10) NOT NULL,
	[des_folio] [varchar](500) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_log_ingr_salidas]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_log_ingr_salidas](
	[cod_trans] [int] IDENTITY(1,1) NOT NULL,
	[cod_folio] [char](10) NULL,
	[cod_usu_solicitante] [char](6) NULL,
	[cod_area_dirig] [char](6) NULL,
	[cod_usu_dirigi] [char](6) NULL,
	[cod_tipo_et] [char](6) NULL,
	[des_folio] [char](500) NULL,
	[cod_documento] [char](10) NULL,
	[fec_actualizacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_trans] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_modulo]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_modulo](
	[cod_modulo] [char](6) NOT NULL,
	[nom_modulo] [varchar](500) NULL,
	[des_modulo] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_perfil_ingreso]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_perfil_ingreso](
	[cod_perfil_ingreso] [char](10) NOT NULL,
	[des_perfil] [varchar](500) NULL,
	[cod_area] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_perfil_ingreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_requisitos]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_requisitos](
	[cod_requisitos] [char](8) NOT NULL,
	[nom_requisito] [varchar](100) NULL,
	[des_requisitos] [varchar](500) NULL,
	[fec_registro] [datetime] NULL,
	[usu_queregistro] [char](6) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_requisitos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_solicitud]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_solicitud](
	[cod_solicitud] [char](10) NOT NULL,
	[cod_asignacion] [char](10) NULL,
	[cod_solicitante] [char](6) NULL,
	[cod_solicitado] [char](6) NULL,
	[fec_reg] [datetime] NULL,
	[asunto] [varchar](500) NULL,
	[descr_soli] [varchar](500) NULL,
	[cod_area_destino] [char](6) NULL,
	[cod_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_solicitud_adj]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_solicitud_adj](
	[cod_solicitud_adj] [int] IDENTITY(1,1) NOT NULL,
	[cod_solicitud] [char](10) NULL,
	[nom_archivo] [varchar](500) NULL,
	[ruta_doc_adjunta] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_solicitud_adj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_solicitud_resp]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_solicitud_resp](
	[cod_solicitud_resp] [int] IDENTITY(1,1) NOT NULL,
	[cod_solicitud] [char](10) NULL,
	[asunto] [varchar](500) NULL,
	[observacion] [varchar](500) NULL,
	[ref_documento] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_solicitud_resp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_solicitud_resp_adj]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_solicitud_resp_adj](
	[cod_solicitud_resp_adj] [int] IDENTITY(1,1) NOT NULL,
	[cod_solicitud_resp] [int] NULL,
	[nom_archivo] [varchar](500) NULL,
	[ruta_doc_adjunta] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_solicitud_resp_adj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_t_iteracion_detalle]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_t_iteracion_detalle](
	[cod_t_iteracion_detalle] [int] IDENTITY(1,1) NOT NULL,
	[cod_tramite_adjuntos] [int] NULL,
	[nom_archvio] [varchar](500) NULL,
	[ruta_doc_adjunta] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_t_iteracion_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tip_estado_asigna]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tip_estado_asigna](
	[cod_estado_asig] [char](6) NOT NULL,
	[des_estado_asig] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_estado_asig] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tip_estado_tramite]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tip_estado_tramite](
	[cod_estado] [char](6) NOT NULL,
	[des_estadotramite] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tip_expediente]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tip_expediente](
	[cod_tip_expediente] [char](10) NOT NULL,
	[cod_tupa] [char](6) NULL,
	[des_exp] [varchar](500) NULL,
	[dias_maximo] [int] NULL,
	[fec_registro] [datetime] NULL,
	[usu_queregistro] [char](6) NULL,
	[estado] [int] NULL,
	[cod_area_encargada] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tip_expediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tip_usu]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tip_usu](
	[cod_tip_usu] [char](6) NOT NULL,
	[des_tip_usu] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tip_usu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tipo_documento]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tipo_documento](
	[cod_tipo_documento] [char](6) NOT NULL,
	[des_tipo_documento] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tipo_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tipo_tramite]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tipo_tramite](
	[cod_tipo_tramite] [char](6) NOT NULL,
	[des_tipo_tramite] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tipo_tramite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tramite]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tramite](
	[cod_tramite] [char](10) NOT NULL,
	[cod_administrado] [char](10) NULL,
	[des_tramite] [varchar](500) NULL,
	[fec_recepcion] [datetime] NULL,
	[observaciones] [varchar](500) NULL,
	[folio] [varchar](20) NULL,
	[asunto] [varchar](500) NULL,
	[cod_exp] [char](10) NULL,
	[ind_flujo_expediente] [int] NULL,
	[cod_flujo_expediente] [char](13) NULL,
	[cod_estado] [char](6) NULL,
	[ind_confir_jefe] [int] NOT NULL CONSTRAINT [DF_tb_tramite_ind_confir_jefe]  DEFAULT ((0)),
	[cod_tipo_tramite] [char](6) NULL,
	[recibo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tramite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tramite_adjuntos]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tramite_adjuntos](
	[cod_tramite_adjuntos] [int] IDENTITY(1,1) NOT NULL,
	[cod_tramite] [char](10) NULL,
	[cod_usu] [char](6) NULL,
	[des_adj] [varchar](500) NULL,
	[nom_docu] [varchar](500) NULL,
	[ruta_doc_adjunta] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tramite_adjuntos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tramite_area_asignada]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tb_tramite_area_asignada](
	[cod_tramite_documento_asigna] [int] IDENTITY(1,1) NOT NULL,
	[cod_tramite] [char](10) NULL,
	[cod_usu_queasigno] [char](6) NULL,
	[cod_area] [char](6) NULL,
	[fec_registro] [datetime] NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tramite_documento_asigna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tramite_iteracion]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tramite_iteracion](
	[cod_tramite_adjuntos] [int] IDENTITY(1,1) NOT NULL,
	[cod_documento] [varchar](100) NULL,
	[cod_tramite] [char](10) NULL,
	[cod_usu] [char](6) NULL,
	[des_adj] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tramite_adjuntos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tramite_rechazo]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tramite_rechazo](
	[cod_tramite_rechazo] [int] IDENTITY(1,1) NOT NULL,
	[cod_administrado] [char](10) NULL,
	[cod_tramite] [char](10) NULL,
	[explic_correcciones] [varchar](500) NULL,
	[fec_registro] [datetime] NULL,
	[cod_usuregis] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tramite_rechazo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tramite_resp]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tramite_resp](
	[cod_tramite_resp] [int] IDENTITY(1,1) NOT NULL,
	[cod_asignacion] [int] NULL,
	[cod_tramite] [char](10) NULL,
	[asunto] [varchar](500) NULL,
	[observacion] [varchar](500) NULL,
	[ref_documento] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tramite_resp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tramite_resp_adj]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tramite_resp_adj](
	[cod_tramite_resp_adj] [int] IDENTITY(1,1) NOT NULL,
	[cod_tramite_resp] [int] NULL,
	[nom_archivo] [varchar](500) NULL,
	[ruta_doc_adjunta] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tramite_resp_adj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tupa]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tupa](
	[cod_tupa] [char](6) NOT NULL,
	[des_tupa] [varchar](400) NULL,
	[anio] [char](4) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tupa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_user](
	[cod_user] [char](6) NOT NULL,
	[des_user] [varchar](500) NULL,
	[nom_user] [varchar](500) NULL,
	[clave_user] [varchar](500) NULL,
	[tip_user] [char](6) NULL,
	[cod_empleado] [char](10) NULL,
	[cod_administrado] [char](10) NULL,
	[estado] [int] NULL,
	[INDICADOR_SUPERUSUARIO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_user_perfil]    Script Date: 1/03/2016 3:18:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_user_perfil](
	[cod_user_perfil] [int] IDENTITY(1,1) NOT NULL,
	[cod_perfil_ingreso] [char](10) NULL,
	[cod_user] [char](6) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_user_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000001', N'EDGAR', N'LIGARDA', N'HUAMAN', N'TDC001', N'44953781', N'ronaldo@gmail.com', N'014930587', N'987379413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU007', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000002', N'HOMERO', N'ROBLES', N'CAKCA', N'TDC001', N'44953782', N'rroblescakca@gmail.com', N'014930587', N'987339413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU008', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000003', N'JASON', N'RICHARD', N'BLASS', N'TDC001', N'44953783', N'rblass@gmail.com', N'014930587', N'987399413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU009', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000004', N'BETTY', N'GUEVARA', N'BARRENECHEA', N'TDC001', N'44953784', N'bguevara@gmail.com', N'014930587', N'999379413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU010', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000005', N'ALAN', N'GARCIA', N'PEREZ', N'TDC001', N'44953785', N'agarcia@gmail.com', N'014930587', N'987372213', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU011', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000006', N'JULIO', N'GUZMAN', N'LIGARDA', N'TDC001', N'44953786', N'jguzman@gmail.com', N'014930587', N'987300413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU012', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000007', N'KEIKO', N'FUJIMORI', N'XMSO', N'TDC001', N'44953787', N'kfujimori@gmail.com', N'014930587', N'987539413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU013', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000008', N'LUCHO', N'BENAVIDES', N'PEREZ', N'TDC001', N'44953788', N'lbenavides@gmail.com', N'014930587', N'987649413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU014', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000009', N'H2O', N'MARTINEZ', N'MANTARI', N'TDC001', N'44953789', N'hmartinez@gmail.com', N'014930587', N'988828413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU015', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000010', N'LUIS', N'CASTRO', N'MAMARELI', N'TDC001', N'44953710', N'lcastro@gmail.com', N'014930587', N'987999913', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU016', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000011', N'JOHAN', N'TOMASEVICH', N'PREISTO', N'TDC001', N'44953711', N'jtomasevich@gmail.com', N'014930587', N'911179413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU017', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000012', N'JESUS', N'ALVAREZ', N'HUAMAN', N'TDC001', N'44953712', N'jalvarez@gmail.com', N'014930587', N'987555413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU018', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000013', N'ELMER', N'MICHA', N'QUISPE', N'TDC001', N'44953713', N'emicha@gmail.com', N'014930587', N'987789413', N'MZ A V.E.S', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU019', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000014', N'MARTHA', N'CABEZAS', N'QUISPE', N'TDC001', N'44953714', N'mcabezas@gmail.com', N'014930587', N'981239413', N'MZ A CALLAO', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU020', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000015', N'CARLOS', N'GUTIERREZ', N'VERGARA', N'TDC001', N'44953715', N'cgutierrez@gmail.com', N'014930587', N'988529413', N'MZ A NAPOLES', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU021', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_administrado] ([cod_administrado], [nom], [ape_pat], [ape_mat], [cod_tipo_documento], [num_documento], [email], [telf1_contac], [telf2_contac], [direccion], [fec_ingreso], [usu_queregistro], [usu_asociado], [estado], [fec_actu]) VALUES (N'ADM0000016', N'JOSE', N'GUTIERREZ', N'VERGARA', N'TDC001', N'44953716', N'jgutierrez@gmail.com', N'014930587', N'981239413', N'MZ A VILLA MARIA', CAST(N'2016-02-10 21:49:57.347' AS DateTime), N'USU001', N'USU022', 1, CAST(N'2016-02-10 21:49:57.347' AS DateTime))
GO
INSERT [dbo].[tb_area] ([cod_area], [des_area], [cod_jefe]) VALUES (N'ARE001', N'ARCHIVO', N'EMP0000005')
GO
INSERT [dbo].[tb_area] ([cod_area], [des_area], [cod_jefe]) VALUES (N'ARE002', N'REGISTRO CIVIL', N'EMP0000004')
GO
INSERT [dbo].[tb_area] ([cod_area], [des_area], [cod_jefe]) VALUES (N'ARE003', N'SISTEMAS', N'EMP0000006')
GO
SET IDENTITY_INSERT [dbo].[tb_area_cargo] ON 

GO
INSERT [dbo].[tb_area_cargo] ([cod_area_cargo], [cod_area], [cod_cargo], [estado]) VALUES (1, N'ARE001', N'CAR001', 1)
GO
INSERT [dbo].[tb_area_cargo] ([cod_area_cargo], [cod_area], [cod_cargo], [estado]) VALUES (2, N'ARE001', N'CAR002', 1)
GO
INSERT [dbo].[tb_area_cargo] ([cod_area_cargo], [cod_area], [cod_cargo], [estado]) VALUES (3, N'ARE001', N'CAR005', 1)
GO
INSERT [dbo].[tb_area_cargo] ([cod_area_cargo], [cod_area], [cod_cargo], [estado]) VALUES (4, N'ARE002', N'CAR003', 1)
GO
INSERT [dbo].[tb_area_cargo] ([cod_area_cargo], [cod_area], [cod_cargo], [estado]) VALUES (5, N'ARE002', N'CAR004', 1)
GO
INSERT [dbo].[tb_area_cargo] ([cod_area_cargo], [cod_area], [cod_cargo], [estado]) VALUES (6, N'ARE003', N'CAR006', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_area_cargo] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_asignacion] ON 

GO
INSERT [dbo].[tb_asignacion] ([cod_asignacion], [cod_tramite], [cod_solicitud], [cod_usu_asignador], [cod_usu_asignado], [des_asignacion], [fec_registro], [cod_estado_asigna]) VALUES (1, N'TRA0000001', NULL, N'USU002', N'USU001', N'datos todos', CAST(N'2016-02-20 17:32:02.843' AS DateTime), N'ASI001')
GO
INSERT [dbo].[tb_asignacion] ([cod_asignacion], [cod_tramite], [cod_solicitud], [cod_usu_asignador], [cod_usu_asignado], [des_asignacion], [fec_registro], [cod_estado_asigna]) VALUES (2, N'TRA0000016', NULL, N'USU004', N'USU003', N'asdasd', CAST(N'2016-02-20 19:05:20.680' AS DateTime), N'ASI001')
GO
INSERT [dbo].[tb_asignacion] ([cod_asignacion], [cod_tramite], [cod_solicitud], [cod_usu_asignador], [cod_usu_asignado], [des_asignacion], [fec_registro], [cod_estado_asigna]) VALUES (3, N'TRA0000016', NULL, N'USU004', N'USU003', N'asdasd', CAST(N'2016-02-20 19:10:55.603' AS DateTime), N'ASI001')
GO
SET IDENTITY_INSERT [dbo].[tb_asignacion] OFF
GO
INSERT [dbo].[tb_cargo] ([cod_cargo], [des_cargo]) VALUES (N'CAR001', N'MESA DE PARTES')
GO
INSERT [dbo].[tb_cargo] ([cod_cargo], [des_cargo]) VALUES (N'CAR002', N'ANALISTA DE TRAMITE')
GO
INSERT [dbo].[tb_cargo] ([cod_cargo], [des_cargo]) VALUES (N'CAR003', N'OPERADOR REGISTRO CIVIL')
GO
INSERT [dbo].[tb_cargo] ([cod_cargo], [des_cargo]) VALUES (N'CAR004', N'JEFE DE AREA REGISTRO CIVIL')
GO
INSERT [dbo].[tb_cargo] ([cod_cargo], [des_cargo]) VALUES (N'CAR005', N'JEFE DE TRAMITE')
GO
INSERT [dbo].[tb_cargo] ([cod_cargo], [des_cargo]) VALUES (N'CAR006', N'ADMINISTRADOR DE SISTEMAS')
GO
SET IDENTITY_INSERT [dbo].[tb_detalle_perfil_modulo] ON 

GO
INSERT [dbo].[tb_detalle_perfil_modulo] ([cod_detalle_perfil_modulo], [cod_perfil_ingreso], [cod_modulo]) VALUES (1, N'PFI0000002', N'MOD001')
GO
INSERT [dbo].[tb_detalle_perfil_modulo] ([cod_detalle_perfil_modulo], [cod_perfil_ingreso], [cod_modulo]) VALUES (2, N'PFI0000005', N'MOD002')
GO
INSERT [dbo].[tb_detalle_perfil_modulo] ([cod_detalle_perfil_modulo], [cod_perfil_ingreso], [cod_modulo]) VALUES (3, N'PFI0000004', N'MOD002')
GO
INSERT [dbo].[tb_detalle_perfil_modulo] ([cod_detalle_perfil_modulo], [cod_perfil_ingreso], [cod_modulo]) VALUES (4, N'PFI0000001', N'MOD004')
GO
SET IDENTITY_INSERT [dbo].[tb_detalle_perfil_modulo] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_detalle_requisitos_exp] ON 

GO
INSERT [dbo].[tb_detalle_requisitos_exp] ([cod_detalle_requisitos_exp], [cod_tip_expediente], [cod_requisitos], [estado]) VALUES (1, N'EXP0000018', N'RE000001', 1)
GO
INSERT [dbo].[tb_detalle_requisitos_exp] ([cod_detalle_requisitos_exp], [cod_tip_expediente], [cod_requisitos], [estado]) VALUES (2, N'EXP0000018', N'RE000002', 1)
GO
INSERT [dbo].[tb_detalle_requisitos_exp] ([cod_detalle_requisitos_exp], [cod_tip_expediente], [cod_requisitos], [estado]) VALUES (3, N'EXP0000018', N'RE000003', 1)
GO
INSERT [dbo].[tb_detalle_requisitos_exp] ([cod_detalle_requisitos_exp], [cod_tip_expediente], [cod_requisitos], [estado]) VALUES (4, N'EXP0000018', N'RE000004', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_detalle_requisitos_exp] OFF
GO
INSERT [dbo].[tb_empleado] ([cod_empleado], [nom_empleado], [ape_pat], [ape_mat], [cod_area], [cod_cargo], [estado], [cod_jefe], [ind_jefedearea]) VALUES (N'EMP0000001', N'JAIME JOSE', N'AGUILAR', N'CABEZAS', N'ARE001', N'CAR001', 1, N'EMP000005 ', 0)
GO
INSERT [dbo].[tb_empleado] ([cod_empleado], [nom_empleado], [ape_pat], [ape_mat], [cod_area], [cod_cargo], [estado], [cod_jefe], [ind_jefedearea]) VALUES (N'EMP0000002', N'RUBEN', N'CARDENAS', N'BAES', N'ARE001', N'CAR002', 1, N'EMP000005 ', 0)
GO
INSERT [dbo].[tb_empleado] ([cod_empleado], [nom_empleado], [ape_pat], [ape_mat], [cod_area], [cod_cargo], [estado], [cod_jefe], [ind_jefedearea]) VALUES (N'EMP0000003', N'HECTOR', N'CHUMPITAZ', N'DABNER', N'ARE002', N'CAR003', 1, N'EMP000004 ', 0)
GO
INSERT [dbo].[tb_empleado] ([cod_empleado], [nom_empleado], [ape_pat], [ape_mat], [cod_area], [cod_cargo], [estado], [cod_jefe], [ind_jefedearea]) VALUES (N'EMP0000004', N'GERARDO', N'MEDINA', N'VELAZCO', N'ARE002', N'CAR004', 1, N'          ', 1)
GO
INSERT [dbo].[tb_empleado] ([cod_empleado], [nom_empleado], [ape_pat], [ape_mat], [cod_area], [cod_cargo], [estado], [cod_jefe], [ind_jefedearea]) VALUES (N'EMP0000005', N'EDUARDO', N'MENDIVIL', N'DIAZ', N'ARE001', N'CAR005', 1, N'          ', 1)
GO
INSERT [dbo].[tb_empleado] ([cod_empleado], [nom_empleado], [ape_pat], [ape_mat], [cod_area], [cod_cargo], [estado], [cod_jefe], [ind_jefedearea]) VALUES (N'EMP0000006', N'ADMINISTRADOR SISTEMAS', N'', N'', N'ARE003', N'CAR006', 1, N'          ', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_flujo_tramite_real] ON 

GO
INSERT [dbo].[tb_flujo_tramite_real] ([cod_flujo_tramite], [cod_tramite], [fec_registro], [cod_usuario], [cod_estado], [cod_area]) VALUES (25, N'TRA0000001', CAST(N'2016-02-24 23:48:50.260' AS DateTime), N'USU002', N'EST004', N'ARE001')
GO
SET IDENTITY_INSERT [dbo].[tb_flujo_tramite_real] OFF
GO
INSERT [dbo].[tb_modulo] ([cod_modulo], [nom_modulo], [des_modulo]) VALUES (N'MOD001', N'ACTIVAR TRAMITE', N'')
GO
INSERT [dbo].[tb_modulo] ([cod_modulo], [nom_modulo], [des_modulo]) VALUES (N'MOD002', N'DELEGAR CARGA DE TRABAJO EXPEDIENTE', N'')
GO
INSERT [dbo].[tb_modulo] ([cod_modulo], [nom_modulo], [des_modulo]) VALUES (N'MOD003', N'ATENDER EXPEDIENTE', N'')
GO
INSERT [dbo].[tb_modulo] ([cod_modulo], [nom_modulo], [des_modulo]) VALUES (N'MOD004', N'REGISTRA TRAMITE', N'')
GO
INSERT [dbo].[tb_perfil_ingreso] ([cod_perfil_ingreso], [des_perfil], [cod_area]) VALUES (N'PFI0000001', N'MESA DE PARTES', N'ARE001')
GO
INSERT [dbo].[tb_perfil_ingreso] ([cod_perfil_ingreso], [des_perfil], [cod_area]) VALUES (N'PFI0000002', N'ANALISTA DE TRAMITE', N'ARE001')
GO
INSERT [dbo].[tb_perfil_ingreso] ([cod_perfil_ingreso], [des_perfil], [cod_area]) VALUES (N'PFI0000003', N'JEFE DE TRAMITE', N'ARE001')
GO
INSERT [dbo].[tb_perfil_ingreso] ([cod_perfil_ingreso], [des_perfil], [cod_area]) VALUES (N'PFI0000004', N'OPERARIO REGISTRO CIVIL', N'ARE002')
GO
INSERT [dbo].[tb_perfil_ingreso] ([cod_perfil_ingreso], [des_perfil], [cod_area]) VALUES (N'PFI0000005', N'JEFE REGISTRO CIVIL', N'ARE002')
GO
INSERT [dbo].[tb_requisitos] ([cod_requisitos], [nom_requisito], [des_requisitos], [fec_registro], [usu_queregistro], [estado]) VALUES (N'RE000001', N'COPIA DE DNI', N'', CAST(N'2016-02-10 21:49:57.360' AS DateTime), N'USU006', 1)
GO
INSERT [dbo].[tb_requisitos] ([cod_requisitos], [nom_requisito], [des_requisitos], [fec_registro], [usu_queregistro], [estado]) VALUES (N'RE000002', N'PARTIDA DE NACIMIENTO', N'', CAST(N'2016-02-10 21:49:57.360' AS DateTime), N'USU006', 1)
GO
INSERT [dbo].[tb_requisitos] ([cod_requisitos], [nom_requisito], [des_requisitos], [fec_registro], [usu_queregistro], [estado]) VALUES (N'RE000003', N'BOLETAS DE VENTA', N'', CAST(N'2016-02-10 21:49:57.360' AS DateTime), N'USU006', 1)
GO
INSERT [dbo].[tb_requisitos] ([cod_requisitos], [nom_requisito], [des_requisitos], [fec_registro], [usu_queregistro], [estado]) VALUES (N'RE000004', N'PLANO DE CASA', N'', CAST(N'2016-02-10 21:49:57.360' AS DateTime), N'USU006', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_t_iteracion_detalle] ON 

GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (1, 1, N'69817_1395955071077_2681389_n.jpg', N'FilesUpload/TRA0000001/Bc292/69817_1395955071077_2681389_n.jpg')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (2, 2, N'69817_1395955071077_2681389_n.jpg', N'FilesUpload/TRA0000001/bc123/69817_1395955071077_2681389_n.jpg')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (3, 3, N'prueba01.jpg', N'FilesUpload/TRA0000002/Docu1/prueba01.jpg')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (4, 3, N'prueba02.txt', N'FilesUpload/TRA0000002/Docu1/prueba02.txt')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (5, 4, N'prueba01.jpg', N'FilesUpload/TRA0000002/Prueba1/prueba01.jpg')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (6, 4, N'prueba02.txt', N'FilesUpload/TRA0000002/Prueba1/prueba02.txt')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (7, 5, N'prueba02.txt', N'FilesUpload/TRA0000003/123/prueba02.txt')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (8, 6, N'prueba01.jpg', N'FilesUpload/TRA0000003/asasda/prueba01.jpg')
GO
INSERT [dbo].[tb_t_iteracion_detalle] ([cod_t_iteracion_detalle], [cod_tramite_adjuntos], [nom_archvio], [ruta_doc_adjunta]) VALUES (9, 6, N'prueba02.txt', N'FilesUpload/TRA0000003/asasda/prueba02.txt')
GO
SET IDENTITY_INSERT [dbo].[tb_t_iteracion_detalle] OFF
GO
INSERT [dbo].[tb_tip_estado_asigna] ([cod_estado_asig], [des_estado_asig]) VALUES (N'ASI001', N'Prueba')
GO
INSERT [dbo].[tb_tip_estado_tramite] ([cod_estado], [des_estadotramite]) VALUES (N'EST001', N'pendiente de activacion--- cuando recien lo creo el de mesa de partes - despues lo toca el analista de tramite-')
GO
INSERT [dbo].[tb_tip_estado_tramite] ([cod_estado], [des_estadotramite]) VALUES (N'EST003', N'activado , una vez que el analista de tramite activo el tramite ... lo puede ver el jefe de area')
GO
INSERT [dbo].[tb_tip_estado_tramite] ([cod_estado], [des_estadotramite]) VALUES (N'EST004', N'pendiente de atención ---- trabajdor de area cuando lo toca el trabajador')
GO
INSERT [dbo].[tb_tip_estado_tramite] ([cod_estado], [des_estadotramite]) VALUES (N'EST005', N'PENDIENTE DE RESPUESTA SOLICITUD ---- ESTO ES CUANDO EL TRAMITE ESTA PENDIENTE DE UNA RESPUESTA DE SOLICITUD')
GO
INSERT [dbo].[tb_tip_estado_tramite] ([cod_estado], [des_estadotramite]) VALUES (N'EST999', N'rechazado')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000001', N'TUP001', N'1.LICENCIA DE FUNCIONAMIENTO-1.3.ESTABLECIMIENTOS CON INSPECCIÓN TÉCNICA DE SEGURIDAD EN EDIFI', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000002', N'TUP001', N'AUTORIZACIÓN', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000003', N'TUP001', N'CESE DE ACTIVIDADES DEL ESTABLECIMIENTO', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000004', N'TUP001', N'1. LICENCIA DE EDIFICACIÓN - MODALIDAD A-1.4.REMODELACIÓN DE VIVIENDA UNIFAMILIAR (sin modificac', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000005', N'TUP001', N'1.ACCESO A LA INFORMACIÓN QUE POSEA O PRODUZCA LA MUNICIPALIDAD', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000006', N'TUP001', N'1.ACTUALIZACIÓN DE LA INFORMACIÓN CATASTRAL', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000007', N'TUP001', N'1.DUPLICADO DE CERTIFICADO DE LICENCIA DE FUNCIONAMIENTO', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000008', N'TUP001', N'1.DUPLICADO DEL CERTIFICADO DE INSPECCIÓN DE SEGURIDAD EN EDIFICACIONES', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000009', N'TUP001', N'1.DUPLICADO DEL PERMISO DE OPERACION', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000010', N'TUP001', N'1.EXPEDICIÓN DE ESTADO DE CUENTA DE TRIBUTOS', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000011', N'TUP001', N'1.FRACCIONAMIENTO DE DEUDAS TRIBUTARIAS', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000012', N'TUP001', N'1.INSPECCIÓN TÉCNICA SEGUR.EDIFICACIONES (ITSE) BÁSICA EX POST EN ESTABL HASTA 100 M2', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000013', N'TUP001', N'1.LICENCIA DE EDIFICACIÓN - MODALIDAD A - 1.1 LA CONSTRUCCION DE UNA VIVIENDA UNIFAMILIAR DE HAS', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000014', N'TUP001', N'1.LICENCIA DE EDIFICACIÓN - MODALIDAD A - 1.2 AMPLIACIÓN DE VIVIENDA UNIFAMILI', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000015', N'TUP001', N'1.LICENCIA DE FUNCIONAMIENTO-1.1.ESTABLECIMIENTOS CON UN ÁREA DE HASTA 100 M2 Y CON UNA CAPACIDA', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000016', N'TUP001', N'1.LICENCIA DE FUNCIONAMIENTO-1.2.ESTABLECIMIENTOS CON UN ÁREA MÁS DE 100 M2 HASTA 500 M2 CON INS', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000017', N'TUP001', N'1.LICENCIA DE FUNCIONAMIENTO-1.4.ESTABLECIMIENTOS CON INSPECCIÓN TÉCNICA DE SEGURIDAD EN EDIFICA', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000018', N'TUP001', N'1.MATRIMONIO CIVIL', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000019', N'TUP001', N'1.PERMISO DE OPERACIÓN A PERSONAS JURÍDCAS PARA PRESTAR EL SERVICIO CON VEHÍCULOS MENORES (VIGEN', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000020', N'TUP001', N'1.RECURSO APELACIÓN CONTRA RES.DECLARA INFUNDADO O IMPROCEDENTE RECURSO RECONSIDER. MULTA ADMINI', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000021', N'TUP001', N'1.REGISTRO DE ORGANIZACIONES SOCIALES', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000022', N'TUP001', N'1.SEPARACIÓN CONVENCIONAL Y DIVORCIO ULTERIOR - 1.1 SEPARACIÓN CONVENCIONAL', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000023', N'TUP001', N'1.SEPARACIÓN CONVENCIONAL Y DIVORCIO ULTERIOR - 1.2. DIVORCIO ULTERIOR', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000024', N'TUP001', N'1.SOLICITUD BENEFICIO TRIBUTARIO PARA PENSIONISTA (DESTO 50 UIT DE LA BASE IMPONIBLE IMP.PREDIAL', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000025', N'TUP001', N'1.SOLICITUD DE COPIA CERTIFICADA DE DOCUMENTOS POR SECRETARIA GENERAL Y/O UNIDAD ORGANICA COMPET', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000026', N'TUP001', N'1.SOLICITUD DE PRESCRIPCIÓN DE MULTAS ADMINISTRATIVAS', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000027', N'TUP001', N'1.TERCERÍA DE PROPIEDAD ANTE COBRANZA DE OBLIGACIONES TRIBUTARIAS', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000028', N'TUP001', N'10.ANTEPROYECTO EN CONSULTA- 10.1.PARA LAS MODALIDADES A y B', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000029', N'TUP001', N'10.ANTEPROYECTO EN CONSULTA- 10.2.PARA LAS MODALIDADES C y D', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000030', N'TUP001', N'10.AUTORIZACIÓN TEMPORAL PARA EVENTOS Y/O ESPECTÁCULOS PÚBLICOS NO DEPORTIVOS EN EDIFICACIONES D', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000031', N'TUP001', N'11.AUTORIZACIÓN TEMPORAL PARA EVENTOS Y/O ESPECTÁCULOS PÚBLICOSNO DEPORTIVOS EN EDIFICACIONES NO', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000032', N'TUP001', N'11.LICENCIA DE REGULARIZACIÓN DE EDIFICACIONES', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000033', N'TUP001', N'12.AUTORIZ.TEMPORAL EVENTOS Y/O ESPECTAC.PUB.NO DEPORT.EN EDIF EN EDIFI ESTADIOS', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000034', N'TUP001', N'12.REVALIDACIÓN DE LICENCIA DE EDIFICACIÓN O DE HABILITACIÓN URBANA', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000035', N'TUP001', N'13.AUTORIZ.TEMPORAL EVENTOS Y/O ESPECTAC.PUB.NO DEPORT.EN EDIF EN EDIFI AFLUENCIA > 3000 PER', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000036', N'TUP001', N'13.PRÓRROGA DE LA LICENCIA DE EDIFICACIÓN O DE HABILITACIÓN URBANA', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000037', N'TUP001', N'14.AUTORIZACIÓN UBICACIÓN DE ANUNCIOS O AVISOS PUBLICITARIOS DE PANELES SIMPLES', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000038', N'TUP001', N'14.LICENCIA DE HABILITACIÓN URBANA MODALIDAD A', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000039', N'TUP001', N'15.AUTORIZACIÓN PARA LA UBICACIÓN DE ANUNCIOS O AVISOS PUBLICITARIOS:LETRERO', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000040', N'TUP001', N'15.LICENCIA DE HABILITACIÓN URBANA MODALIDAD B', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000041', N'TUP001', N'16.AUTORIZACIÓN PARA LA UBICACIÓN AFICHES O BANDEROLAS DE CAMPAÑAS Y EVENTOS TEMPORALES', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000042', N'TUP001', N'16.LICENCIA DE HABILITACIÓN URBANA MODALIDAD C', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000043', N'TUP001', N'17.LICENCIA DE HABILITACIÓN URBANA MODALIDAD C', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000044', N'TUP001', N'18.LICENCIA DE HABILITACIÓN URBANA MODALIDAD D', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000045', N'TUP001', N'19.MODIFICACIÒN DE PROYECTOS DE HABILITACION URBANA', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000046', N'TUP001', N'2.AUTENTICACIÓN DE DOCUMENTOS', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000047', N'TUP001', N'2.CERTIFICADO CATASTRAL', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000048', N'TUP001', N'2.DISPENSA DE PUBLICACION DE EDICTO MATRIMONIAL', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000049', N'TUP001', N'2.INSPECCIÓN TÉCNICA SEGUR.EDIFICACIONES (ITSE) BÁSICA EX POST EN ESTABL MAS 100 M2  HASTA 500M2', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000050', N'TUP001', N'2.LICENCIA DE EDIFICACIÓN - MODALIDAD B- 2.1.EDIFICACIONES PARA FINES DE VIVIENDA UNIFAMILIAR', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000051', N'TUP001', N'2.LICENCIA DE EDIFICACIÓN - MODALIDAD B- 2.2.CERCOS (en inmuebles que se encuentren bajo el régi', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000052', N'TUP001', N'2.LICENCIA DE EDIFICACIÓN - MODALIDAD B- 2.3.OBRAS DE AMPLIACIÓN O REMODELACIÓN DE UNA EDIFICACI', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000053', N'TUP001', N'2.LICENCIA DE EDIFICACIÓN - MODALIDAD B- 2.4.EN CASO DE DEMOLICIONES PARCIALES', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000054', N'TUP001', N'2.LICENCIA FUNC.CONJUNTA ANUNCIOS AVISOS PUBLICIT.2.2.EN ESTABLEC.ÁREA MAS DE 100M2 HASTA 500M2', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000055', N'TUP001', N'2.LICENCIA FUNC.CONJUNTA ANUNCIOS AVISOS PUBLICIT.2.3.EN ESTABLECIMIENTOS CON INSPECCIÓN TÉCNICA', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000056', N'TUP001', N'2.LICENCIA FUNC.CONJUNTA ANUNCIOS AVISOS PUBLICIT.2.4.ESTABLEC.INSPECCIÓN TÉCNICA SEG EDIFICACIO', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000057', N'TUP001', N'2.LICENCIA FUNCIONAMIENTO CONJUNTA  ANUNCIOS O AVISOS PUBLICIT.2.1.EN ESTABLEC.AREA HASTA 100M2', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000058', N'TUP001', N'2.MODIFICACIÓN DEL REGISTRO MUNICIPAL DE VEHICULOS MENORES POR CAMBIO DE DATOS RESPECTO DEL:', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000059', N'TUP001', N'2.REIMPRESIÓN DE DJ', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000060', N'TUP001', N'2.REPROGRAMACIÓN DE FECHA DE MATRIMONIO (PEDIDO EFECTUADO CON ANTICIPACIÓN)', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000061', N'TUP001', N'2.SOLICITUD DE DEVOLUCIÓN Y COMPENSACIÓN DE MULTAS ADMINISTRATIVAS', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000062', N'TUP001', N'2.SOLICITUD DE INAFECTACIÓN', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000063', N'TUP001', N'2.SOLICITUD DE SUSPENSIÓN DE COBRANZA COACTIVA DE OBLIGACIONES TRIBUTARIAS', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000064', N'TUP001', N'20.RECEPCIÓN DE OBRAS DE HABILITACIÓN URBANA-20.1.SIN VARIACIONES (Modalidades B', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000065', N'TUP001', N'20.RECEPCIÓN DE OBRAS DE HABILITACIÓN URBANA-20.2.CON VARIACIONES QUE NO SE CONSIDEREN SUSTANCIA', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000066', N'TUP001', N'20.RECEPCIÓN DE OBRAS DE HABILITACIÓN URBANA-20.3.CON VARIACIONES QUE NO SE CONSIDEREN SUSTANCIA', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000067', N'TUP001', N'21.INDEPENDIZACIÓN O PARCELACIÓN DE TERRENOS RÚSTICOS', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000068', N'TUP001', N'22.SUBDIVISIÓN DE LOTE URBANO', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000069', N'TUP001', N'23.AUTORIZACIÓN PARA LA INSTALACIÓN DE INFRAESTRUCTURA NECESARIA PARA LA PRESTACÍÓN DE SERVICIOS', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000070', N'TUP001', N'24.AUTORIZACIÓN PARA LA INSTALACIÓN DE ESTACIONES DE RADIOCOMUNICACIONES', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000071', N'TUP001', N'25.PRÓRROGA DE LA AUTORIZACIÓN PARA LA INSTALACIÓN DE INFRAESTRUCTURA NECESARIA PARA LA PRESTACI', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000072', N'TUP001', N'26.CERTIFICADO DE CONFORMIDAD DE OBRA', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000073', N'TUP001', N'27.AUTORIZACIÓN PARA LA INSTALACIÓN DE ELEMENTOS DE SEGURIDAD (REJAS BATIENTES', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000074', N'TUP001', N'28.AUTORIZACIÓN PARA INSTALACIÓN DE LA CONEXIÓN DOMICILIARIA DEL SERVICIO DE AGUA', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000075', N'TUP001', N'29.CERTIFICADO DE CONFORMIDAD DE OBRA EN ÁREA DE USO PÚBLICO', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000076', N'TUP001', N'3.CERTIFICADO DE PARÁMETROS URBANÍSTICOS Y EDIFICATORIOS', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000077', N'TUP001', N'3.CONSTANCIA DE NO ADEUDO TRIBUTARIO', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000078', N'TUP001', N'3.EXHIBICIÓN DE EDICTOS MATRIMONIALES TRAMITADOS EN OTROS MUNICIPIOS', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000079', N'TUP001', N'3.INSPECCIÓN TÉCNICA DE SEGURIDAD EN EDIFICACIONES (ITSE) A DETALLE', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000080', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.1.EDIFICACIONES PARA FINES DE VIVIENDA MULTIFAMILIAR Q', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000081', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.2.EDIFICACIONES PARA FINES DIFERENTES DE VIVIENDA (a e', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000082', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.3.EDIFICACIONES DE USO MIXTO CON VIVIENDA', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000083', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.4.EDIFICACIONES PARA LOCALES COMERCIALES', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000084', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.5.EDIFICACIONES PARA MERCADOS (que cuenten con un máxi', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000085', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.6.LOCALES PARA ESPECTÁCULOS DEPORTIVOS (de hasta 20', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000086', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.7.TODAS LAS DEMÁS EDIFICACIONES NO CONTEMPLADAS EN LAS', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000087', N'TUP001', N'3.LICENCIA DE EDIFICACIÓN - MODALIDAD C-3.8.DEMOLICIONES TOTALES DE EDIFICACIONES (de 5 o más pi', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000088', N'TUP001', N'3.LICENCIA DE FUNCIONAMIENTO PARA CESIONARIOS', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000089', N'TUP001', N'3.RETIRO O DESGLOSE DE DOCUMENTACIÓN DEL EXPEDIENTE', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000090', N'TUP001', N'3.SOLICITUD DE DEVOLUCIÓN EN MATERIA TRIBUTARIA', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000091', N'TUP001', N'3.TERCERÍA DE PROPIEDAD ANTE COBRANZA DE OBLIGACIONES NO TRIBUTARIAS', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000092', N'TUP001', N'4.CERTIFICADO DE  JURISDICCIÓN', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000093', N'TUP001', N'4.COPIA DE PLANOS', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000094', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.1.EDIFICACIONES PARA FINES DE VIVIENDA MULTIFAMILIAR', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000095', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.2.EDIFICACIONES PARA FINES DIFERENTES DE VIVIENDA (a e', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000096', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.3.EDIFICACIONES DE USO MIXTO CON VIVIENDA', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000097', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.4.EDIFICACIONES PARA LOCALES COMERCIALES', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000098', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.5.', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000099', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.6.LOCALES PARA ESPECTÁCULOS DEPORTIVOS (de hasta 20', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000100', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.7.TODAS LAS DEMÁS EDIFICACIONES NO CONTEMPLADAS EN LAS', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000101', N'TUP001', N'4.LICENCIA DE EDIFICACIÓN - MODALIDAD C-4.8.DEMOLICIONES TOTALES DE EDIFICACIONES (de 5 o más pi', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000102', N'TUP001', N'4.MODIFICACIÓN DEL REGISTRO MUNICIPAL DE VEHÍCULOS MENORES POR INCREMENTO O INSCRIPCIÓN O SUSTIT', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000103', N'TUP001', N'4.SOLICITUD DE COMPENSACIÓN EN MATERIA TRIBUTARIA', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000104', N'TUP001', N'4.SOLICITUD DE SUSPENSIÓN DE COBRANZA COACTIVA DE OBLIGACIONES NO TRIBUTARIAS', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000105', N'TUP001', N'4.VARIACIÓN DE ÁREA COMERCIAL O ECONOMICA', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000106', N'TUP001', N'5.AMPLIACIÓN DE GIRO COMPATIBLE', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000107', N'TUP001', N'5.CERTIFICADO DE NOMENCLATURA', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000108', N'TUP001', N'5.LICENCIA DE EDIFICACIÓN - MODALIDAD D-5.1 EDIFICACIONES PARA FINES DE INDUSTRIA.', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000109', N'TUP001', N'5.LICENCIA DE EDIFICACIÓN - MODALIDAD D-5.2. EDIFICACIONES PARA LOCALES COMERCIALES', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000110', N'TUP001', N'5.LICENCIA DE EDIFICACIÓN - MODALIDAD D-5.3. EDIFICACIONES PARA MERCADOS (que cuenten con más de', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000111', N'TUP001', N'5.LICENCIA DE EDIFICACIÓN - MODALIDAD D-5.4.  EDIFICACIONES PARA FINES EDUCATIVOS SALUD', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000112', N'TUP001', N'5.SOLICITUD DE PRESCRIPCIÓN EN MATERIA TRIBUTARIA', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000113', N'TUP001', N'6.CESE DE ACTIVIDADES COMERCIALES', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000114', N'TUP001', N'6.CONSTANCIA DE POSESIÓN PARA FINES DEL OTORGAMIENTO DE SERVICIOS BÁSICOS', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000115', N'TUP001', N'6.MOD.PROYECTOS Y/O LICENCIAS DE EDIFICACIÓN-6.1.MODIFICACIÓN DE PROYECTOS EN LA MODALIDAD B', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000116', N'TUP001', N'6.MOD.PROYECTOS Y/O LICENCIAS DE EDIFICACIÓN-6.2MODALIDADES C y D', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000117', N'TUP001', N'6.MOD.PROYECTOS Y/O LICENCIAS DE EDIFICACIÓN-6.3.MODIFICACIÓN DE LICENCIA EN LA MODALIDAD A (mod', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000118', N'TUP001', N'6.MOD.PROYECTOS Y/O LICENCIAS DE EDIFICACIÓN-6.4 MODIFICACIÓN DE LICENCIA EN LA MODALIDAD B (mod', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000119', N'TUP001', N'6.MOD.PROYECTOS Y/O LICENCIAS DE EDIFICACIÓN-6.5.MODIFICACIÓN DE LICENCIA EN LA MODALIDAD C y D', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000120', N'TUP001', N'6.MOD.PROYECTOS Y/O LICENCIAS DE EDIFICACIÓN-6.6.MODIFICACIÓN DE LICENCIA EN LA MODALIDAD C - RE', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000121', N'TUP001', N'6.RECURSO DE RECLAMACIÓN', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000122', N'TUP001', N'7.HOJA INFORMATIVA CATASTRAL', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000123', N'TUP001', N'7.MODIF.DATOS LICENCIA FUNCIONAMIENTO MANTENIENDO EL ÁREA Y GIRO.7.1.POR CAMBIO DE RAZON SOCIAL', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000124', N'TUP001', N'7.MODIF.DATOS LICENCIA FUNCIONAMIENTO MANTENIENDO EL ÁREA Y GIRO.7.2.POR CAMBIO DE OTROS DATOS V', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000125', N'TUP001', N'7.PRE-DECLARATORIA DE EDIFICACIÓN (para todas las Modalidades: A', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000126', N'TUP001', N'8.AUTORIZACIÓN TEMPORAL PARA EJERCER EL COMERCIO EN LA VIA PÚBLICA.', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000127', N'TUP001', N'8.CONFORMIDAD DE OBRA Y DECLARATORIA DE EDIFICACIÓN SIN VARIACIONES (para todas las Modalidades:', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000128', N'TUP001', N'8.RESELLADOS O AUTENTICACIÓN DE COPIA DE PLANOS APROBADOS', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000129', N'TUP001', N'9.AUTORIZACION TEMPORAL PARA EVENTOS Y/O ESPECTÁCULOS PUBLICOS NO DEPORTIVOS REALIZADOS ENLA VÍA', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000130', N'TUP001', N'9.CONFORMIDAD OBRA Y DECLARATORIA EDIFIC VARIACIONES.9.1. EDIFICACIONES CON LICENCIA A Y B', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000131', N'TUP001', N'9.CONFORMIDAD OBRA Y DECLARATORIA EDIFIC VARIACIONES.9.2. EDIFICACIONES CON LICENCIA C Y D', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000132', N'TUP001', N'9.VISACION DE PLANOS PARA TRAMITE DE PRESCRIPCION ADQUISITIVA', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000133', N'TUP001', N'ACCESO A LA INFORMACION DE OFICIO', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000134', N'TUP001', N'ACCESO A LA INFORMACIÓN PÚBLICA QUE POSEAN O PRODUZCAN LAS DIVERSAS UNIDADES ORGÁNICAS', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000135', N'TUP001', N'ACCESO A LA INFORMACIÓN QUE POSEA O PRODUZCA  LA MUNICIPALIDAD', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000136', N'TUP001', N'ACTUALIZACIÓN DE LA INFORMACIÓN CATASTRAL', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000137', N'TUP001', N'AMPLIACIÓN DE AUTORIZACIÓN EN ÁREA DE USO PÚBLICO DE INSTALACIÓN DE REDES DE TELECOMUNICACIONES', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000138', N'TUP001', N'AMPLIACIÓN DE AUTORIZACIÓN PARA AMPLIACIÓN DE REDES SUBTERRÁNEAS O CASOS ESPECIALES EN ÁREA DE U', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000139', N'TUP001', N'AMPLIACIÓN DE GIRO COMPATIBLE', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000140', N'TUP001', N'AMPLIACIÓN DE PLAZO DE LICENCIA DE OBRA (ANTES DE SU VENCIMIENTO)', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000141', N'TUP001', N'AMPLIACIÓN Y/O CAMBIO DE GIRO', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000142', N'TUP001', N'ANOTACIONES MARGINALES DE DIFERENTES CONCEPTOS', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000143', N'TUP001', N'ANTEPROYECTO EN CONSULTA', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000144', N'TUP001', N'ANTEPROYECTO EN CONSULTA (Opcional)', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000145', N'TUP001', N'APADRINAMIENTO', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000146', N'TUP001', N'APELACIÓN DE RESOLUCIONES QUE DENIEGAN TERCERÍAS', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000147', N'TUP001', N'APROBACIÓN DE HABILITACIÓN URBANA EN VÍAS DE', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000148', N'TUP001', N'APROBACIÓN DE HABILITACIÓN URBANA NUEVA', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000149', N'TUP001', N'APROBACIÓN DE PREHABILITACION URBANA', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000150', N'TUP001', N'ASISTENCIA LEGAL EXTRAJUDICIAL EN LOS DIVERSOS CASOS DE DERECHO DE FAMILIA', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000151', N'TUP001', N'AUDIENCIAS', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000152', N'TUP001', N'AUTENTICACIÓN DE DOCUMENTOS', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000153', N'TUP001', N'AUTORIZACION PARA EL COMERCIO AMBULATORIO C.O.C.O.A', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000154', N'TUP001', N'AUTORIZACIÓN  DE PARADERO DE TRANSPORTE  PARA VEHÍCULOS MAYORES (POR 1 AÑO PROVISIONAL)', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000155', N'TUP001', N'AUTORIZACIÓN  PARA EJECUCIÓN DE OBRAS EN ÁREAS DE DOMINIO PÚBLICO (CORRESPONDIENTE A UN GRUPO RE', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000156', N'TUP001', N'AUTORIZACIÓN DE ACUMULACIÓN DE LOTES SIN', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000157', N'TUP001', N'AUTORIZACIÓN DE EJECUCIÓN DE OBRAS DE', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000158', N'TUP001', N'AUTORIZACIÓN DE ESPECTÁCULOS PÚBLICOS NO DEPORTIVOS Y EVENTOS SOCIALES EN LA VÍA PÚBLICA', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000159', N'TUP001', N'AUTORIZACIÓN DE ESPECTÁCULOS PÚBLICOS NO DEPORTIVOS Y EVENTOS SOCIALES EN LOCALES CERRADO/ABIERT', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000160', N'TUP001', N'AUTORIZACIÓN DE FUNCIONAMIENTO DE KIOSKO DE DIARIOS Y REVISTAS EN ZONAS AUTORIZADAS', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000161', N'TUP001', N'AUTORIZACIÓN DE SUBDIVISIÓN DE LOTES SIN CAMBIO DE USO / INDEPENDIZACION DE PREDIO RUSTICO (*)', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000162', N'TUP001', N'AUTORIZACIÓN EN ÁREA DE USO PÚBLICO PARA INSTALACIÓN DOMICILIARIA DEL SERVICIO DE AGUA', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000163', N'TUP001', N'AUTORIZACIÓN MUNICIPAL DE ANUNCIOS PUBLICITARIOS', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000164', N'TUP001', N'AUTORIZACIÓN MUNICIPAL DE ANUNCIOS PUBLICITARIOS - CATEGORÍA I (HASTA 5 M2.)', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000165', N'TUP001', N'AUTORIZACIÓN MUNICIPAL DE ANUNCIOS PUBLICITARIOS - CATEGORÍA II (DESDE 5.01 A 30 M2.)', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000166', N'TUP001', N'AUTORIZACIÓN MUNICIPAL DE ANUNCIOS PUBLICITARIOS - CATEGORÍA III (DESDE 30.01  M2 A Mas)', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000167', N'TUP001', N'AUTORIZACIÓN MUNICIPAL DE ANUNCIOS PUBLICITARIOS CATEGORÍA IV ( TORRES MONUMENTALES)', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000168', N'TUP001', N'AUTORIZACIÓN PARA AMPLIACIÓN DE REDES SUBTERRÁNEAS O CASOS ESPECIALES EN ÁREA DE USO PÚBLICO (Te', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000169', N'TUP001', N'AUTORIZACIÓN PARA AMPLIACIÓN DE REDES SUBTERRÁNEAS O CASOS ESPECIALES EN ÁREA DE USO PÚBLICO NO', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000170', N'TUP001', N'AUTORIZACIÓN PARA CONSTRUCCIÓN DE BUZONES DE DESAGUE EN ÁREA DE USO PÚBLICO (Redes principales)', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000171', N'TUP001', N'AUTORIZACIÓN PARA CONSTRUCCIÓN Y/O REFACCIÓN DE SARDINELES Y VEREDAS EN ÁREA DE USO PÚBLICO', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000172', N'TUP001', N'AUTORIZACIÓN PARA DEPOSITAR MATERIALES', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000173', N'TUP001', N'AUTORIZACIÓN PARA EVENTOS Y/O ESPECTÁCULOS PÚBLICOS CON UNA AFLUENCIA MAYOR A 3000 PERSONAS', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000174', N'TUP001', N'AUTORIZACIÓN PARA EVENTOS Y/O ESPECTÁCULOS PÚBLICOS CON UNA AFLUENCIA MENOR O IGUAL A 3000 PERS', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000175', N'TUP001', N'AUTORIZACIÓN PARA EVENTOS Y/O ESPECTÁCULOS PÚBLICOS NO DEPORTIVOS REALIZADOS EN  LA VÍA PÚBLICA', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000176', N'TUP001', N'AUTORIZACIÓN PARA INSTALACIÓN DE CABINAS TELEFÓNICAS EN ÁREA DE USO PÚBLICO (No incluye ningún t', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000177', N'TUP001', N'AUTORIZACIÓN PARA INSTALACIÓN DE CABLEADO SUBTERRÁNEO (Redes de Telecomunicaciones)(No incluye n', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000178', N'TUP001', N'AUTORIZACIÓN PARA LA CONSTRUCCIÓN DE CÁMARA SUBTERRÁNEA EN ÁREA DE USO PÚBLICO (Telecomunicacion', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000179', N'TUP001', N'AUTORIZACIÓN PARA LA INSTALACIÓN DE ELEMENTOS DE SEGURIDAD (REJAS BATIENTES', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000180', N'TUP001', N'AUTORIZACIÓN PARA LA PUESTA A TIERRA EN  ÁREA DE USO PÚBLICO PARA TELECOMUNICACIONES (No incluy', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000181', N'TUP001', N'AUTORIZACIÓN PARA LA REMODELACIÓN DEL ÁREA DE USO PÚBLICO (sardineles', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000182', N'TUP001', N'AUTORIZACIÓN PARA LA UBICACIÓN DE ELEMENTOS DE PUBLICIDAD EXTERIOR Y/O  ANUNCIOS EN PANELES SIMP', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000183', N'TUP001', N'AUTORIZACIÓN PARA LA UBICACIÓN DE ELEMENTOS DE PUBLICIDAD EXTERIOR Y/O ANUNCIOS EN:AFICHES O BAN', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000184', N'TUP001', N'AUTORIZACIÓN PARA LA UBICACIÓN DE ELEMENTOS DE PUBLICIDAD EXTERIOR Y/O ANUNCIOS EN:AVISOS PUBLIC', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000185', N'TUP001', N'AUTORIZACIÓN PARA MANTENIMIENTO DE CABLEADO AÉREO DE TELECOMUNICACIONES EXISTENTE EN ÁREAS DE U', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000186', N'TUP001', N'AUTORIZACIÓN PARA REUBICACIÓN Y/O CAMBIO DE POSTES', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000187', N'TUP001', N'AUTORIZACIÓN TEMPORAL MUNICIPAL DE CARPAS', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000188', N'TUP001', N'AUTORIZACIÓN TEMPORAL PARA EL USO COMERCIAL DE RETIRO MUNICIPAL', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000189', N'TUP001', N'AUTORIZACIÓN TEMPORAL PARA USO DE RETIRO MUNICIPAL CON FINES COMERCIALES PARA ESTABLECIMIENTOS C', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000190', N'TUP001', N'BENEFICIO PARA PENSIONISTAS POR DEDUCCIÓN DE LA BASE IMPONIBLE PARA EL PAGO DEL IMPUESTO PREDIAL', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000191', N'TUP001', N'CAMBIO DE FORMATO DE LICENCIA DE FUNCIONAMIENTO', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000192', N'TUP001', N'CAMBIO DE USO DEL PREDIO', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000193', N'TUP001', N'CARNÉ DE SALUD', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000194', N'TUP001', N'CELEBRACIÓN DE MATRIMONIO CIVIL - 1.- MAYORES DE EDAD', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000195', N'TUP001', N'CELEBRACIÓN DE MATRIMONIO CIVIL - 2.- VIUDOS', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000196', N'TUP001', N'CELEBRACIÓN DE MATRIMONIO CIVIL - 4.- EXTRANJEROS', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000197', N'TUP001', N'CELEBRACIÓN DE MATRIMONIO CIVIL - 5.- MENORES', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000198', N'TUP001', N'CELEBRACIÓN DE MATRIMONIO CIVIL - 6.- MATRIMONIO IN EXTREMIS', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000199', N'TUP001', N'CELEBRACIÓN DE MATRIMONIO CIVIL - 7', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000200', N'TUP001', N'CELEBRACIÓN DE MATRIMONIO CIVIL- 3.- DIVORCIADOS', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000201', N'TUP001', N'CERTIFICADO CATASTRAL', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000202', N'TUP001', N'CERTIFICADO DE  PARÁMETROS  URBANÍSTICOS Y EDIFICATORIOS', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000203', N'TUP001', N'CERTIFICADO DE ALINEAMIENTO', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000204', N'TUP001', N'CERTIFICADO DE COMPATIBILIDAD DE USO Y ZONIFICACION (Validez:06 meses)', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000205', N'TUP001', N'CERTIFICADO DE COMPATIBILIDAD DE USO Y ZONIFICACIÓN (Validez: 06 meses) - CATEGORÍA I (HASTA 30', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000206', N'TUP001', N'CERTIFICADO DE COMPATIBILIDAD DE USO Y ZONIFICACIÓN (Validez: 06 meses). - CATEGORÍA  IV (DESDE', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000207', N'TUP001', N'CERTIFICADO DE COMPATIBILIDAD DE USO Y ZONIFICACIÓN (Validez: 06 meses). - CATEGORÍA II (DESDE 3', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000208', N'TUP001', N'CERTIFICADO DE COMPATIBILIDAD DE USO Y ZONIFICACIÓN (Validez: 06 meses).- CATEGORÍA III (DESDE 1', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000209', N'TUP001', N'CERTIFICADO DE CONFORMIDAD DE DEMOLICIÓN', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000210', N'TUP001', N'CERTIFICADO DE CONFORMIDAD DE OBRA EN ÁREA DE USO PÚBLICO', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000211', N'TUP001', N'CERTIFICADO DE CONFORMIDAD DE OBRA VINCULADO A LOS SERVICIOS PÚBLICOS DE TELECOMUNICACIONES', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000212', N'TUP001', N'CERTIFICADO DE CONFORMIDAD DE OBRAS EN LA VÍA PÚBLICA (Sin variaciones (1)', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000213', N'TUP001', N'CERTIFICADO DE FINALIZACIÓN DE OBRA Y ZONIFICACIÓN (Sin variaciones (1)', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000214', N'TUP001', N'CERTIFICADO DE HABITABILIDAD', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000215', N'TUP001', N'CERTIFICADO DE JURISDICCIÓN', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000216', N'TUP001', N'CERTIFICADO DE JURISDICCIÓN Y/O UBICACIÓN', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000217', N'TUP001', N'CERTIFICADO DE LIBRE DISPONIBILIDAD', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000218', N'TUP001', N'CERTIFICADO DE NUMERACIÓN DE INMUEBLE', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000219', N'TUP001', N'CERTIFICADO DE OPERACIÓN DE VEHÍCULOS MENORES (3 años)', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000220', N'TUP001', N'CERTIFICADO DE PARÁMETROS URBANÍSTICOS Y EDIFICATORIOS', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000221', N'TUP001', N'CERTIFICADO DE VIUDEZ', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000222', N'TUP001', N'CERTIFICADO DE ZONIFICACIÓN', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000223', N'TUP001', N'CERTIFICADO MÉDICO PRE-NUPCIAL (POR PAREJA)', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000224', N'TUP001', N'CERTIFICADO NEGATIVO CATASTRAL', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000225', N'TUP001', N'CESE DE ACTIVIDADES COMERCIALES', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000226', N'TUP001', N'CITACIONES JUDICIALES', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000227', N'TUP001', N'CODIFICACIÓN CATASTRAL PARA PREDIOS SIN', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000228', N'TUP001', N'COMPENSACIÓN DE LA DEUDA Y/O DEVOLUCIÓN DE DINERO DE PAGO INDEBIDO O EN EXCESO', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000229', N'TUP001', N'COMUNICACION', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000230', N'TUP001', N'CONCILIACIÓN EXTRAJUDICIAL EN ALIMENTOS', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000231', N'TUP001', N'CONFORMIDAD DE OBRA Y DECLARATORIA DE EDIFICACIÓN CON VARIACIÓN MODALIDAD A', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000232', N'TUP001', N'CONFORMIDAD DE OBRA Y DECLARATORIA DE EDIFICACIÓN SIN  VARIACIÓN MODALIDAD A', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000233', N'TUP001', N'CONSIGNACIONES EXTRAJUDICIALES DE PENSIONES DE ALIMENTOS', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000234', N'TUP001', N'CONSTANCIA CATASTRAL DEL PREDIO', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000235', N'TUP001', N'CONSTANCIA DE ENCONTRARSE REGISTRADO EN EL SISTEMA PREDIAL', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000236', N'TUP001', N'CONSTANCIA DE FICHA CATASTRAL', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000237', N'TUP001', N'CONSTANCIA DE LINDEROS Y MEDIDAS PERIMÉTRICAS', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000238', N'TUP001', N'CONSTANCIA DE NO ADEUDO TRIBUTARIO', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000239', N'TUP001', N'CONSTANCIA DE NO EJERCER ACTIVIDAD COMERCIAL', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000240', N'TUP001', N'CONSTANCIA DE NO INSCRIPCIÓN DE MATRIMONIO CIVIL', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000241', N'TUP001', N'CONSTANCIA DE POSESIÓN (Solo para trámites en  empresas', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000242', N'TUP001', N'CONSTANCIA DE POSESIÓN PARA FINES DEL OTORGAMIENTO DE SERVICIOS BÁSICOS', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000243', N'TUP001', N'CONSTANCIA MUNICIPAL', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000244', N'TUP001', N'COORDINACION DIVERSAS', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000245', N'TUP001', N'COPIA CERTIFICADA DE ACTA   MATRIMONIO', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000246', N'TUP001', N'COPIA CERTIFICADA DE DOCUMENTOS INSERTOS QUE OBRAN  EN EL ARCHIVO DE REGISTROS CIVILES', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000247', N'TUP001', N'COPIA DE PLANOS', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000248', N'TUP001', N'COPIAS DE ACTUACIONES COACTIVAS', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000249', N'TUP001', N'COPIAS DE DISPOSICIONES Y DOCUMENTOS MUNICIPALES', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000250', N'TUP001', N'COPIAS DE PLANOS - LAMINA', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000251', N'TUP001', N'CREDENCIAL DE  CONDUCTOR DE VEHÍCULOS MENORES (Inscripción y Registro del Conductor) -(Tres año)', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000252', N'TUP001', N'DECLARACIÓN JURADA ANUAL DE PERMANENCIA EN EL GIRO AUTORIZADO AL ESTABLECIMIENTO', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000253', N'TUP001', N'DECLARACIÓN JURADA PARA LA INSCRIPCIÓN DE CONTRIBUYENTES Y PREDIOS (POR INCORPORACIÓN O RECTIFIC', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000254', N'TUP001', N'DECLARATORIA DE FABRICA (Con Licencia de OBRA)', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000255', N'TUP001', N'DECLARATORIA DE FABRICA AL AMPARO DE', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000256', N'TUP001', N'DEDUCCIÓN DEL MONTO IMPONIBLE DEL PREDIO RUSTICO DESTINADO A LA ACTIVIDAD AGRARIA', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000257', N'TUP001', N'DESCARGO POR TRANSFERENCIA DE PREDIO', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000258', N'TUP001', N'DESCARGO Y/O RECLAMACIÓN DE NOTIFICACIÓN PREVENTIVA', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000259', N'TUP001', N'DIPLOMADOS', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000260', N'TUP001', N'DISPENSA DE PUBLICACIÓN DE EDICTO MATRIMONIAL', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000261', N'TUP001', N'DUPLICADO DE AUTOAVALUO', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000262', N'TUP001', N'DUPLICADO DE CERTIFICADO DE LICENCIA DE FUNCIONAMIENTO', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000263', N'TUP001', N'DUPLICADO DE CERTIFICADO DE OPERACIÓN', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000264', N'TUP001', N'DUPLICADO DE CERTIFICADO DE PERMISO DE OPERACIÓN', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000265', N'TUP001', N'DUPLICADO DE CONSTANCIA DE INSCRIPCIÓN', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000266', N'TUP001', N'DUPLICADO DE CREDENCIAL DEL CONDUCTOR', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000267', N'TUP001', N'DUPLICADO DE LICENCIAS', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000268', N'TUP001', N'DUPLICADO DE STICKER VEHICULAR', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000269', N'TUP001', N'DUPLICADO DEL CERTIFICADO DE INSPECCIÓN TÉCNICA BÁSICA  DE SEGURIDAD EN DEFENSA CIVIL', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000270', N'TUP001', N'ELABORACIÓN DE EXPEDIENTE TÉCNICO DE OBRAS', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000271', N'TUP001', N'ELEMENTOS DE SEGURIDAD', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000272', N'TUP001', N'EN AVISOS Y PANELES SIMPLES NO ADOSADOS FRONTALMENTE A LA FACHADA', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000273', N'TUP001', N'ENTREVISTAS', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000274', N'TUP001', N'EXONERACIÓN DEL IMPUESTO PREDIAL A LOS ESTABLECIMIENTOS DE HOSPEDAJE', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000275', N'TUP001', N'EXPEDICIÓN DE ESTADO DE CUENTA DE TRIBUTOS', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000276', N'TUP001', N'EXPEDICIÓN DE ESTADOS DE MULTAS ADMINISTRATIVAS', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000277', N'TUP001', N'EXPEDICIÓN DE PARTIDAS CERTIFICADAS', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000278', N'TUP001', N'FICHA ÚNICA CATASTRAL', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000279', N'TUP001', N'FRACCIONAMIENTO DE DEUDAS POR MULTAS ADMINISTRATIVAS', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000280', N'TUP001', N'FRACCIONAMIENTO DE DEUDAS TRIBUTARIAS Y/O ADMINISTRATIVAS', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000281', N'TUP001', N'FRACCIONAMIENTO DE DEUDAS  TRIBUTARIAS', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000282', N'TUP001', N'HOJA INFORMATIVA CATASTRAL', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000283', N'TUP001', N'INAFECTACIÓN DEL PAGO DEL IMPUESTO PREDIAL', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000284', N'TUP001', N'INDEPENDIZACIÓN O PARCELACIÓN DE TERRENOS RÚSTICOS', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000285', N'TUP001', N'INMUEBLES', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000286', N'TUP001', N'INSCRIPCIONES ORDINARIAS  DE DEFUNCIONES (Dentro de las 48 horas)', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000287', N'TUP001', N'INSCRIPCIONES ORDINARIAS  DE NACIMIENTOS (Dentro de los 30 días)', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000288', N'TUP001', N'INSCRIPCIÓN DE MATRIMONIOS Y NACIMIENTOS PARA EXTRANJEROS (dentro de los 03 meses)', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000289', N'TUP001', N'INSCRIPCIÓN EXTEMPORÁNEA DE NACIMIENTO DE NIÑOS', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000290', N'TUP001', N'INSCRIPCIÓN EXTEMPORÁNEA DE NACIMIENTO DE NIÑOS', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000291', N'TUP001', N'INSCRIPCIÓN Y REGISTRO DE VEHÍCULOS MENORES', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000292', N'TUP001', N'INSPECCION TECNICA DE SEGURIDAD PREVIA A ESPECTACULOS PUBLICOS', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000293', N'TUP001', N'INSPECCION TECNICAS DE SEGURIDAD EN DEFENSA CIVIL (ITSDC) BASICA', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000294', N'TUP001', N'INSPECCIÓN OCULAR EN ÁREA DE USO PÚBLICO A SOLICITUD DE PARTE', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000295', N'TUP001', N'INSPECCIÓN SANITARIA PARA LICENCIA DE FUNCIONAMIENTO', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000296', N'TUP001', N'INSPECCIÓN TÉCNICA', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000297', N'TUP001', N'INSPECCIÓN TÉCNICA BÁSICA DE SEGURIDAD EN DEFENSA CIVIL EX ANTE MAYOR A 100 M2 HASTA 500 M2', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000298', N'TUP001', N'INSPECCIÓN TÉCNICA BÁSICA DE SEGURIDAD EN DEFENSA CIVIL EX POST HASTA 100 M2 Y CAPACIDAD DE AL', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000299', N'TUP001', N'INSPECCIÓN TÉCNICA DE SEGURIDAD EN DEFENSA CIVIL (ITSDC)  BÁSICA - 118.1 Inmuebles', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000300', N'TUP001', N'INSPECCIÓN TÉCNICA DE SEGURIDAD EN DEFENSA CIVIL (ITSDC)  BÁSICA - 118.2 Inspección Técnica de S', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000301', N'TUP001', N'INSPECCIÓN TÉCNICA DE SEGURIDAD EN DEFENSA CIVIL (ITSDC)  BÁSICA - 118.3 En avisos y paneles sim', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000302', N'TUP001', N'INSPECCIÓN TÉCNICA DE SEGURIDAD EN DEFENSA CIVIL (ITSDC) BÁSICA - 118.4 Elementos de seguridad', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000303', N'TUP001', N'INSPECCIÓN TÉCNICA DE SEGURIDAD EN DEFENSA CIVIL (ITSDC) BÁSICA - 118.5 Renovación del Certifica', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000304', N'TUP001', N'INVITACIONES', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000305', N'TUP001', N'LEVANTAMIENTO DE INTERNAMIENTO DE VEHÍCULOS MENORES  DEL DEPOSITO MUNICIPAL', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000306', N'TUP001', N'LICENCIA DE EDIFICACION (Edificacion nueva', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000307', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A-1.3.AMPLIACIONES CONSIDERADAS OBRAS MENORES (según lo esta', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000308', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A-1.5.CONSTRUCCIÓN DE CERCOS (de más de de 20 ml', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000309', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A-1.6.DEMOLICIÓN TOTAL (de edificaciones menores de 5 pisos', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000310', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A-1.7.OBRAS DE CARÁCTER MILITAR (de las Fuerzas Armadas)', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000311', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A-1.8.LAS EDIFICACIONES NECESARIAS PARA EL DESARROLLO DE PRO', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000312', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A: AMPLIACIONES CONSIDERADAS OBRAS MENORES SEGÚN LO ESTABLEC', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000313', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A: LA DEMOLICIÓN TOTAL DE   EDIFICACIONES MENORES DE 5 PISOS', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000314', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A: LA REMODELACIÓN DE UNA VIVIENDA     UNIFAMILIAR SIN MODIF', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000315', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A:LA CONSTRUCCIÓN DE CERCOS DE MÁS   DE 20 METROS DE LONGITU', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000316', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD A:LA CONSTRUCCIÓN DE UNA VIVIENDA UNIFAMILIAR DE HASTA', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000317', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD B: LAS EDIFICACIONES PARA FINES DE   VIVIENDA UNIFAMILIAR', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000318', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD B: LAS OBRAS DE AMPLIACIÓN O   REMODELACIÓN DE UNA EDIFICACI', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000319', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD B:A CONSTRUCCIÓN DE CERCOS EN   INMUEBLES QUE SE ENCUENTREN', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000320', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD C: LAS EDIFICACIONES PARA FINES DE   VIVIENDA MULTIFAMILIAR', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000321', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD C: LAS EDIFICACIONES PARA LOCALES   COMERCIALES', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000322', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD C: LAS EDIFICACIONES PARA MERCADOS   QUE CUENTEN CON UN MÁX', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000323', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD C: LOCALES PARA ESPECTÁCULOS   DEPORTIVOS DE HASTA 20', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000324', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD C:LAS EDIFICACIONES DE USO MIXTO CON  VIVIENDA.', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000325', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD C:LAS EDIFICACIONES PARA FINES   DIFERENTES DE VIVIENDA A EX', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000326', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD D: EDIFICACIONES PARA FINES DE   INDUSTRIA.', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000327', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD D: LAS EDIFICACIONES PARA FINES   EDUCATIVOS', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000328', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD D: LAS EDIFICACIONES PARA LOCALES   COMERCIALES', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000329', N'TUP001', N'LICENCIA DE EDIFICACIÓN - MODALIDAD D:LAS EDIFICACIONES PARA MERCADOS   QUE CUENTEN CON MÁS DE', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000330', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO CORPORATIVAS PARA:', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000331', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO O LICENCIA DE FUNCIONAMIENTO TEMPORAL', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000332', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO O LICENCIA DE FUNCIONAMIENTO TEMPORAL ESTABLECIMIENTOS - CATEGORIA I', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000333', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO O LICENCIA DE FUNCIONAMIENTO TEMPORAL ESTABLECIMIENTOS - CATEGORIA II', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000334', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO O LICENCIA DE FUNCIONAMIENTO TEMPORAL ESTABLECIMIENTOS -CATEGORIA III', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000335', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO PARA CESIONARIOS HASTA 500 M2 DE ÁREA', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000336', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO PARA: 1.1\ - ESTABLECIMIENTOS CON UN ÁREA DE HASTA 100 M2 Y CON UNA C', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000337', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO PARA: 1.2\ - ESTABLECIMIENTOS CON UN ÁREA MÁS DE 100 M2 HASTA 500 M2', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000338', N'TUP001', N'LICENCIA DE FUNCIONAMIENTO PARA: 1.3\ - ESTABLECIMIENTOS CON UN ÁREA MÁS DE 500 M2 Y NO  COMPREN', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000339', N'TUP001', N'LICENCIA DE HABILITACIÓN URBANA. MODALIDAD B', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000340', N'TUP001', N'LICENCIA DE HABILITACIÓN URBANA. MODALIDAD C.  (Aprobación con evaluación previa del proyecto po', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000341', N'TUP001', N'LICENCIA DE HABILITACIÓN URBANA.MODALIDAD D (Aprobación con evaluación previa del proyecto por l', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000342', N'TUP001', N'LICENCIA DE OBRA PARA AUTOCONSTRUCCIÓN (Sin planos)', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000343', N'TUP001', N'LICENCIA DE OBRA PARA CERCADO', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000344', N'TUP001', N'LICENCIA DE OBRA PARA DEMOLICIÓN', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000345', N'TUP001', N'LICENCIA MUNICIPAL DEFINITIVA DE APERTURA DE ESTABLECIMIENTO - CATEGORÍA  IV (DESDE 500.01 M2. A', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000346', N'TUP001', N'LICENCIA MUNICIPAL DEFINITIVA DE APERTURA DE ESTABLECIMIENTO - CATEGORÍA I (HASTA 30 M2.)', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000347', N'TUP001', N'LICENCIA MUNICIPAL DEFINITIVA DE APERTURA DE ESTABLECIMIENTO - CATEGORÍA II (DESDE 30.01 A 190 M', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000348', N'TUP001', N'LICENCIA MUNICIPAL DEFINITIVA DE APERTURA DE ESTABLECIMIENTO - CATEGORÍA III (DESDE 190.01 A 500', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000349', N'TUP001', N'LICENCIA PARA OBRAS MENORES A 30 m2', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000350', N'TUP001', N'LICENCIA PROVISIONAL DE FUNCIONAMIENTO (Para Micro y Pequeñas Empresas- Válido x 01 año no renov', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000351', N'TUP001', N'MATRIMONIO CIVIL', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000352', N'TUP001', N'MATRIMONIO CIVIL - PARA DIVORCIADOS(AS)', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000353', N'TUP001', N'MATRIMONIO CIVIL - PARA EXTRANJEROS(AS)', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000354', N'TUP001', N'MATRIMONIO CIVIL - PARA MATRIMONIOS POR PODER', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000355', N'TUP001', N'MATRIMONIO CIVIL - PARA MENORES DE EDAD', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000356', N'TUP001', N'MATRIMONIO CIVIL - PARA VIUDOS(AS)', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000357', N'TUP001', N'MODALIDAD A (Aprobacion Automatica)', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000358', N'TUP001', N'MODALIDAD B (Aprobacion Automatica con firma de profesionales responsables)', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000359', N'TUP001', N'MODALIDADES C Y D (Aprovacion con evaluacion previa por Revisores Urb. o Comision)', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000360', N'TUP001', N'MODIFICACION DEL AUTOVALUO POR:AUMENTO', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000361', N'TUP001', N'MODIFICACIÓN DE DATOS DE  LA LICENCIA DE FUNCIONAMIENTO MANTENIENDO EL ÁREA Y GIRO', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000362', N'TUP001', N'MODIFICACIÓN DE DATOS DE  LA LICENCIA DE FUNCIONAMIENTO MANTENIENDO EL ÁREA Y GIRO POR  CAMBIO', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000363', N'TUP001', N'MODIFICACIÓN DE LEYENDA', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000364', N'TUP001', N'MODIFICACIÓN DEL REGISTRO MUNICIPAL DE VEHICULOS MENORES  POR CAMBIO DE  DATOS RESPECTO DEL: - T', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000365', N'TUP001', N'MODIFICACIÓN DEL REGISTRO MUNICIPAL DE VEHÍCULOS  MENORES POR CAMBIO DE DENOMINACIÓN O RAZÓN SOC', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000366', N'TUP001', N'MODIFICACIÓN DEL REGISTRO MUNICIPAL DE VEHÍCULOS MENORES POR INCREMENTO DE', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000367', N'TUP001', N'ORIENTACIÓN', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000368', N'TUP001', N'OTROS', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000369', N'TUP001', N'OTROS TRAMITES NO DEFINIDOS EN EL TUPA', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000370', N'TUP001', N'PAGO DE IMPUESTO DE ALCABALA  Y/O CONSTANCIA DE INAFECTACIÓN', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000371', N'TUP001', N'PERMISO DE OPERACIÓN  PARA EMPRESA O ASOCIACIÓN DE SERVICIO ESPECIAL DE TRANSPORTE URBANO', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000372', N'TUP001', N'PERMISO DE OPERACIÓN A PERSONAS JURÍDICAS PARA PRESTAR EL SERVICIO CON  VEHÍCULOS MENORES (VIGEN', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000373', N'TUP001', N'PERMISO DE OPERACIÓN PARA EMPRESAS O ASOC.CUYO OBJETO SEA VEHÍCULOS DE CARGA', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000374', N'TUP001', N'PLANO CATASTRAL', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000375', N'TUP001', N'PLANO CATASTRAL DEL PREDIO', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000376', N'TUP001', N'POSTERGACIÓN DE FECHA MATRIMONIAL', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000377', N'TUP001', N'PRACTICAS PROFESIONALES', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000378', N'TUP001', N'PRE-DECLARATORIA DE FABRICA', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000379', N'TUP001', N'PRESENTACIÓN DE DECLARACIÓN  JURADA DE CAMBIO DE DOMICILIO  FISCAL Y/O DATOS DEL CONTRIBUYENTE', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000380', N'TUP001', N'PRESENTACIÓN DE DECLARACIÓN  JURADA DE TRANSFERENCIA O DESCARGO', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000381', N'TUP001', N'PRESENTACIÓN DE DECLARACIÓN JURADA DE ACTUALIZACIÓN DE DATOS (Impuesto Predial y otros)', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000382', N'TUP001', N'PRESENTACIÓN DE DECLARACIÓN JURADA PARA LA INSCRIPCIÓN (Impuesto Predial)', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000383', N'TUP001', N'PRESENTACIÓN DE DECLARACIÓN JURADA RECTIFICATORIA QUE AUMENTA O MANTIENE LA BASE IMPONIBLE', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000384', N'TUP001', N'PRESENTACIÓN DE DECLARACIÓN JURADA RECTIFICATORIA QUE DISMINUYE LA BASE IMPONIBLE', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000385', N'TUP001', N'PRÓRROGA DE LA LICENCIA DE EDIFICACIÓN', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000386', N'TUP001', N'PUBLICACIÓN DE EDICTO DE OTRO MUNICIPIO', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000387', N'TUP001', N'QUEJA O DENUNCIA DE VECINOS', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000388', N'TUP001', N'REAPERTURA DE EXPEDIENTE EN ARCHIVO', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000389', N'TUP001', N'RECEPCIÓN DE OBRA DE HABILITACIÓN URBANA', 12, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000390', N'TUP001', N'RECEPCIÓN DE OBRAS DE HABILITACIÓN URBANA', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000391', N'TUP001', N'RECIBIR DONACIONES', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000392', N'TUP001', N'RECLAMACIÓN CONTRA ORDEN DE PAGO', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000393', N'TUP001', N'RECLAMOS', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000394', N'TUP001', N'RECONOCIMIENTO DEL COMITÉ DE CONTROL Y VIGILANCIA DISTRITAL', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000395', N'TUP001', N'RECONOCIMIENTO DEL COMITÉ DE GESTIÓN DE DESARROLLO TERRITORIAL', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000396', N'TUP001', N'RECTIFICACIÓN DE DATOS DE AUTOAVALUO: POR MODIFICACIÓN', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000397', N'TUP001', N'RECTIFICACIÓN DE FICHA CATASTRAL', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000398', N'TUP001', N'RECURSO DE APELACIÓN CONTRA  RESOLUCIÓN QUE DECLARA INFUNDADO O IMPROCEDENTE EL RECURSO DE RECO', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000399', N'TUP001', N'RECURSO DE RECLAMACIÓN', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000400', N'TUP001', N'RECURSO DE RECONSIDERACIÓN CONTRA MULTAS ADMINISTRATIVAS', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000401', N'TUP001', N'RECURSO IMPUGNATIVO CONTRA RESOLUCIÓN DE MULTA ADMINISTRATIVA', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000402', N'TUP001', N'REGISTRO DE CENTROS DE CUIDADO DIURNO', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000403', N'TUP001', N'REGISTRO DE INSCRIPCIÓN DE AGENTES PARTICIPANTES AL  PROCESO DE PRESUPUESTO PARTICIPATIVO', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000404', N'TUP001', N'REGISTRO DE INSCRIPCIÓN DE LAS ORGANIZACIONES DE LA  SOCIEDAD CIVIL PARA EL PROCESO DE ELECCIÓN', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000405', N'TUP001', N'REGISTRO DE NUEVA JUNTA DIRECTIVA', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000406', N'TUP001', N'REGISTRO DE ORGANIZACIONES CULTURALES', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000407', N'TUP001', N'REGISTRO DE ORGANIZACIONES SOCIALES', 9, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000408', N'TUP001', N'REGISTRO DE ORGANIZACIONES  SOCIALES', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000409', N'TUP001', N'REGISTRO NIÑOS', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000410', N'TUP001', N'REGULARIZACIÓN DE OBRA SIN LICENCIA (OBRA INICIADODESPUÉS DEL 20/07/99)', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000411', N'TUP001', N'REIMPRESIÓN DE DJ', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000412', N'TUP001', N'RENOVACION DEL CERTIFICADO DE SEGURIDAD DE DEFENSA CIVIL', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000413', N'TUP001', N'RENOVACIÓN DE LA AUTORIZACIÓN PARA INSTALACIÓN DE ELEMENTOS DE SEGURIDAD (REJAS BATIENTES', 0, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000414', N'TUP001', N'RENOVACIÓN DE PERMISO DE OPERACIÓN A PERSONAS JURÍDICAS PARA PRESTAR EL SERVICIO CON VEHÍCULOS', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000415', N'TUP001', N'RENOVACIÓN DEL CERTIFICADO DE INSPECCIÓN TÉCNICA BÁSICA DE SEGURIDAD EN DEFENSA CIVIL EX ANTE M', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000416', N'TUP001', N'RENOVACIÓN DEL CERTIFICADO DE INSPECCIÓN TÉCNICA BÁSICA DE SEGURIDAD EN DEFENSA CIVIL EX POST HA', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000417', N'TUP001', N'REPROGRAMACIÓN  DE FECHA DE MATRIMONIO (PEDIDO EFECTUADO CON ANTICIPACIÓN)', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000418', N'TUP001', N'REPROGRAMACIÓN DEL CRONOGRAMA DE OBRA A SOLICITUD DE PARTE', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000419', N'TUP001', N'RESELLADOS DE PLANOS POR LICENCIA DE CONSTRUCCIÓN', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000420', N'TUP001', N'RESELLADOS O AUTENTICACIÓN DE COPIA DE PLANOS APROBADOS', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000421', N'TUP001', N'RETIRO O DESGLOSE DE DOCUMENTACIÓN DEL EXPEDIENTE', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000422', N'TUP001', N'REVALIDACIÓN DE LICENCIA DE EDIFICACIÓN(Vencido el plazo de la licencia se podrá revalidarla por', 11, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000423', N'TUP001', N'REVALIDACIÓN DE LICENCIA DE OBRA DESPUÉS DE SU VENCIMIENTO', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000424', N'TUP001', N'SEPARACIÓN CONVENCIONAL Y DIVORCIO ULTERIOR SEPARACIÓN CONVENCIONAL', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000425', N'TUP001', N'SEPARACIÓN DIVORCIO ULTERIOR', 1, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000426', N'TUP001', N'SOLICITUD APOYO', 8, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000427', N'TUP001', N'SOLICITUD DE BENEFICIO TRIBUTARIO PARA PENSIONISTA (DESCUENTO DE 50 UIT DE LA BASE IMPONIBLE DEL', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000428', N'TUP001', N'SOLICITUD DE COMPENSACIÓN EN MATERIA TRIBUTARIA', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000429', N'TUP001', N'SOLICITUD DE COPIA CERTIFICADA DE DOCUMENTOS', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000430', N'TUP001', N'SOLICITUD DE DEVOLUCIÓN EN MATERIA TRIBUTARIA', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000431', N'TUP001', N'SOLICITUD DE DEVOLUCIÓN Y COMPENSACIÓN DE MULTAS   ADMINISTRATIVAS', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000432', N'TUP001', N'SOLICITUD DE INAFECTACIÓN', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000433', N'TUP001', N'SOLICITUD DE PRESCRIPCIÓN DE MULTAS ADMINISTRATIVAS', 4, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000434', N'TUP001', N'SOLICITUD DE PRESCRIPCIÓN EN MATERIA TRIBUTARIA', 10, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000435', N'TUP001', N'SOLICITUD DE SUSPENSIÓN DE COBRANZA COACTIVA DE OBLIGACIONES NO TRIBUTARIAS', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000436', N'TUP001', N'SOLICITUD DE SUSPENSIÓN DE COBRANZA COACTIVA DE OBLIGACIONES TRIBUTARIAS', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000437', N'TUP001', N'SOLICITUD DE TRABAJO', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000438', N'TUP001', N'SOLICITUD DONACION', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000439', N'TUP001', N'SUBDIVISIÓN DE LOTE URBANO', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000440', N'TUP001', N'SUSPENSIÓN DE PROCEDIMIENTO DE EJECUCIÓN COACTIVA.', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000441', N'TUP001', N'TERCERÍA DE PROPIEDAD', 7, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000442', N'TUP001', N'TERCERÍA DE PROPIEDAD ANTE COBRANZA DE OBLIGACIONES NO TRIBUTARIAS', 3, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000443', N'TUP001', N'TERCERÍA DE PROPIEDAD ANTE COBRANZA DE OBLIGACIONES TRIBUTARIAS', 13, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000444', N'TUP001', N'TITULACION DE LOTES INDUSTRIALES', 14, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000445', N'TUP001', N'TITULACIÓN DE LOTES INDUSTRIALES-GREMIOS EMPRESARIALES', 15, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000446', N'TUP001', N'TITULACIÓN DE LOTES INDUSTRIALES-PERSONAS JURIDICAS O NATURALES', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000447', N'TUP001', N'VARIACIÓN DE ÁREA COMERCIAL O ECONÓMICA', 2, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000448', N'TUP001', N'vc_nombre_tra', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000449', N'TUP001', N'VISACIÓN DE PLANOS', 5, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_expediente] ([cod_tip_expediente], [cod_tupa], [des_exp], [dias_maximo], [fec_registro], [usu_queregistro], [estado], [cod_area_encargada]) VALUES (N'EXP0000450', N'TUP001', N'VISACIÓN DE PLANOS PARA TRAMITES DE PRESCRIPCIÓN ADQUISITIVA', 6, CAST(N'2016-02-10 16:09:57.630' AS DateTime), N'USU006', 1, N'ARE002')
GO
INSERT [dbo].[tb_tip_usu] ([cod_tip_usu], [des_tip_usu]) VALUES (N'TUS001', N'EMPLEADO')
GO
INSERT [dbo].[tb_tip_usu] ([cod_tip_usu], [des_tip_usu]) VALUES (N'TUS002', N'ADMINISTRADO')
GO
INSERT [dbo].[tb_tipo_documento] ([cod_tipo_documento], [des_tipo_documento]) VALUES (N'TDC001', N'DNI')
GO
INSERT [dbo].[tb_tipo_documento] ([cod_tipo_documento], [des_tipo_documento]) VALUES (N'TDC002', N'RUC')
GO
INSERT [dbo].[tb_tipo_documento] ([cod_tipo_documento], [des_tipo_documento]) VALUES (N'TDC003', N'CARNET DE EXTRANJERIA')
GO
INSERT [dbo].[tb_tipo_tramite] ([cod_tipo_tramite], [des_tipo_tramite]) VALUES (N'TDT001', N'Expediente')
GO
INSERT [dbo].[tb_tipo_tramite] ([cod_tipo_tramite], [des_tipo_tramite]) VALUES (N'TDT002', N'Documento')
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000001', N'ADM0000001', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST004', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000002', N'ADM0000002', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000003', N'ADM0000003', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000004', N'ADM0000004', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000005', N'ADM0000005', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000006', N'ADM0000006', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000007', N'ADM0000007', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000008', N'ADM0000008', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000009', N'ADM0000009', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000010', N'ADM0000010', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000011', N'ADM0000011', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000012', N'ADM0000012', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000013', N'ADM0000013', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000014', N'ADM0000014', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000015', N'ADM0000015', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 0, N'TDT001', NULL)
GO
INSERT [dbo].[tb_tramite] ([cod_tramite], [cod_administrado], [des_tramite], [fec_recepcion], [observaciones], [folio], [asunto], [cod_exp], [ind_flujo_expediente], [cod_flujo_expediente], [cod_estado], [ind_confir_jefe], [cod_tipo_tramite], [recibo]) VALUES (N'TRA0000016', N'ADM0000016', N'Este tramite fue presentado con algunos errores de parte del implicado por ello se debe revisar y tener el minusioso cuidado', CAST(N'2016-02-10 21:49:57.720' AS DateTime), N'TRAMITE PARA SOLICITAR UN MATRIMONIO CIVIL', N'N/A', N'TRAMITE PARA SOLICITAR MATRIMONIO', N'EXP0000018', 0, N'             ', N'EST003', 1, N'TDT001', NULL)
GO
SET IDENTITY_INSERT [dbo].[tb_tramite_adjuntos] ON 

GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (1, N'TRA0000001', N'USU001', N'Adjunto 1', N'DOC1', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (2, N'TRA0000002', N'USU001', N'Adjunto 2', N'DOC2', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (3, N'TRA0000003', N'USU001', N'Adjunto 3', N'DOC3', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (4, N'TRA0000004', N'USU001', N'Adjunto 4', N'DOC4', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (5, N'TRA0000005', N'USU001', N'Adjunto 5', N'DOC5', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (6, N'TRA0000006', N'USU001', N'Adjunto 6', N'DOC6', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (7, N'TRA0000007', N'USU001', N'Adjunto 7', N'DOC7', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (8, N'TRA0000008', N'USU001', N'Adjunto 8', N'DOC8', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (9, N'TRA0000009', N'USU001', N'Adjunto 9', N'DOC9', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (10, N'TRA0000010', N'USU001', N'Adjunto 10', N'DOC10', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (11, N'TRA0000011', N'USU001', N'Adjunto 11', N'DOC11', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (12, N'TRA0000012', N'USU001', N'Adjunto 12', N'DOC12', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (13, N'TRA0000013', N'USU001', N'Adjunto 13', N'DOC13', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (14, N'TRA0000014', N'USU001', N'Adjunto 14', N'DOC14', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (15, N'TRA0000015', N'USU001', N'Adjunto 15', N'DOC15', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (16, N'TRA0000016', N'USU001', N'Adjunto 16', N'DOC16', N'C:\Users\JAGUILAR-SHARP\Google Drive\Proyecto Informatico 2\DocumentoDeveloper')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (17, N'TRA0000001', N'USU002', N'Adjuntamos', N'69817_1395955071077_2681389_n.jpg', N'FilesUpload/TRA0000001/Bc292/69817_1395955071077_2681389_n.jpg')
GO
INSERT [dbo].[tb_tramite_adjuntos] ([cod_tramite_adjuntos], [cod_tramite], [cod_usu], [des_adj], [nom_docu], [ruta_doc_adjunta]) VALUES (18, N'TRA0000001', N'USU002', N'dewdedwed', N'69817_1395955071077_2681389_n.jpg', N'FilesUpload/TRA0000001/bc123/69817_1395955071077_2681389_n.jpg')
GO
SET IDENTITY_INSERT [dbo].[tb_tramite_adjuntos] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_tramite_area_asignada] ON 

GO
INSERT [dbo].[tb_tramite_area_asignada] ([cod_tramite_documento_asigna], [cod_tramite], [cod_usu_queasigno], [cod_area], [fec_registro], [estado]) VALUES (15, N'TRA0000001', N'USU002', N'ARE002', CAST(N'2016-02-24 23:48:50.260' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[tb_tramite_area_asignada] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_tramite_iteracion] ON 

GO
INSERT [dbo].[tb_tramite_iteracion] ([cod_tramite_adjuntos], [cod_documento], [cod_tramite], [cod_usu], [des_adj]) VALUES (1, N'Bc292', N'TRA0000001', N'USU002', N'Adjuntamos')
GO
INSERT [dbo].[tb_tramite_iteracion] ([cod_tramite_adjuntos], [cod_documento], [cod_tramite], [cod_usu], [des_adj]) VALUES (2, N'bc123', N'TRA0000001', N'USU002', N'dewdedwed')
GO
INSERT [dbo].[tb_tramite_iteracion] ([cod_tramite_adjuntos], [cod_documento], [cod_tramite], [cod_usu], [des_adj]) VALUES (3, N'Docu1', N'TRA0000002', N'USU002', N'asdasdasd')
GO
INSERT [dbo].[tb_tramite_iteracion] ([cod_tramite_adjuntos], [cod_documento], [cod_tramite], [cod_usu], [des_adj]) VALUES (4, N'Prueba1', N'TRA0000002', N'USU002', N'123')
GO
INSERT [dbo].[tb_tramite_iteracion] ([cod_tramite_adjuntos], [cod_documento], [cod_tramite], [cod_usu], [des_adj]) VALUES (5, N'123', N'TRA0000003', N'USU002', N'123')
GO
INSERT [dbo].[tb_tramite_iteracion] ([cod_tramite_adjuntos], [cod_documento], [cod_tramite], [cod_usu], [des_adj]) VALUES (6, N'asasda', N'TRA0000003', N'USU002', N'asdsdasad')
GO
SET IDENTITY_INSERT [dbo].[tb_tramite_iteracion] OFF
GO
INSERT [dbo].[tb_tupa] ([cod_tupa], [des_tupa], [anio], [estado]) VALUES (N'TUP001', N'TUPA DEL Año 2016', N'2016', 1)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU001', N'MESA DE PARTES', N'jaguilar@munives.edu.pe', N'1234', N'TUS001', N'EMP0000001', N'          ', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU002', N'ANALISTA DE TRAMITE', N'rcadenas@munives.edu.pe', N'1234', N'TUS001', N'EMP0000002', N'          ', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU003', N'OPERADOR REGISTRO CIVIL', N'hchumpi@munives.edu.pe', N'1234', N'TUS001', N'EMP0000003', N'          ', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU004', N'JEFE REGISTRO CIVIL', N'gmedina@munives.edu.pe', N'1234', N'TUS001', N'EMP0000004', N'          ', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU005', N'JEFE TRAMITE', N'emendivil@munives.edu.pe', N'1234', N'TUS001', N'EMP0000005', N'          ', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU006', N'ADMINISTRADOR', N'administrador@munives.edu.pe', N'1234', N'TUS001', N'EMP0000006', N'          ', 1, 1)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU007', N'EDGAR LIGARDA HUAMAN ', N'ronaldo@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000001', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU008', N'', N'rroblescakca@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000002', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU009', N'', N'rblass@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000003', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU010', N'', N'bguevara@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000004', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU011', N'', N'agarcia@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000005', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU012', N' ', N'jguzman@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000006', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU013', N'', N'kfujimori@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000007', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU014', N'', N'lbenavides@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000008', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU015', N'', N'hmartinez@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000009', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU016', N'', N'lcastro@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000010', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU017', N'', N'jtomasevich@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000011', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU018', N'', N'jalvarez@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000012', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU019', N'', N'emicha@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000013', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU020', N'', N'cabezas@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000014', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU021', N'', N'cgutierrez@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000015', 1, 0)
GO
INSERT [dbo].[tb_user] ([cod_user], [des_user], [nom_user], [clave_user], [tip_user], [cod_empleado], [cod_administrado], [estado], [INDICADOR_SUPERUSUARIO]) VALUES (N'USU022', N'', N'jgutierrez@munives.edu.pe', N'1234', N'TUS002', N'          ', N'ADM0000016', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[tb_user_perfil] ON 

GO
INSERT [dbo].[tb_user_perfil] ([cod_user_perfil], [cod_perfil_ingreso], [cod_user], [estado]) VALUES (1, N'PFI0000002', N'USU002', 1)
GO
INSERT [dbo].[tb_user_perfil] ([cod_user_perfil], [cod_perfil_ingreso], [cod_user], [estado]) VALUES (2, N'PFI0000005', N'USU004', 1)
GO
INSERT [dbo].[tb_user_perfil] ([cod_user_perfil], [cod_perfil_ingreso], [cod_user], [estado]) VALUES (3, N'PFI0000004', N'USU003', 1)
GO
INSERT [dbo].[tb_user_perfil] ([cod_user_perfil], [cod_perfil_ingreso], [cod_user], [estado]) VALUES (4, N'PFI0000001', N'USU001', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_user_perfil] OFF
GO
ALTER TABLE [dbo].[tb_administrado]  WITH CHECK ADD FOREIGN KEY([cod_tipo_documento])
REFERENCES [dbo].[tb_tipo_documento] ([cod_tipo_documento])
GO
ALTER TABLE [dbo].[tb_administrado]  WITH CHECK ADD FOREIGN KEY([usu_queregistro])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_area_cargo]  WITH CHECK ADD FOREIGN KEY([cod_area])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_area_cargo]  WITH CHECK ADD FOREIGN KEY([cod_cargo])
REFERENCES [dbo].[tb_cargo] ([cod_cargo])
GO
ALTER TABLE [dbo].[tb_asignacion]  WITH CHECK ADD FOREIGN KEY([cod_estado_asigna])
REFERENCES [dbo].[tb_tip_estado_asigna] ([cod_estado_asig])
GO
ALTER TABLE [dbo].[tb_asignacion]  WITH CHECK ADD FOREIGN KEY([cod_usu_asignador])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_asignacion]  WITH CHECK ADD FOREIGN KEY([cod_usu_asignado])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_detalle_adj_requisitos]  WITH CHECK ADD FOREIGN KEY([cod_requisitos])
REFERENCES [dbo].[tb_requisitos] ([cod_requisitos])
GO
ALTER TABLE [dbo].[tb_detalle_perfil_modulo]  WITH CHECK ADD FOREIGN KEY([cod_modulo])
REFERENCES [dbo].[tb_modulo] ([cod_modulo])
GO
ALTER TABLE [dbo].[tb_detalle_perfil_modulo]  WITH CHECK ADD FOREIGN KEY([cod_perfil_ingreso])
REFERENCES [dbo].[tb_perfil_ingreso] ([cod_perfil_ingreso])
GO
ALTER TABLE [dbo].[tb_detalle_requisitos_exp]  WITH CHECK ADD FOREIGN KEY([cod_requisitos])
REFERENCES [dbo].[tb_requisitos] ([cod_requisitos])
GO
ALTER TABLE [dbo].[tb_detalle_requisitos_exp]  WITH CHECK ADD FOREIGN KEY([cod_tip_expediente])
REFERENCES [dbo].[tb_tip_expediente] ([cod_tip_expediente])
GO
ALTER TABLE [dbo].[tb_empleado]  WITH CHECK ADD FOREIGN KEY([cod_area])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_empleado]  WITH CHECK ADD FOREIGN KEY([cod_cargo])
REFERENCES [dbo].[tb_cargo] ([cod_cargo])
GO
ALTER TABLE [dbo].[tb_flujo_expediente]  WITH CHECK ADD FOREIGN KEY([cod_area])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_flujo_expediente]  WITH CHECK ADD FOREIGN KEY([cod_tip_expediente])
REFERENCES [dbo].[tb_tip_expediente] ([cod_tip_expediente])
GO
ALTER TABLE [dbo].[tb_flujo_expediente]  WITH CHECK ADD FOREIGN KEY([cod_user])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_flujo_tramite_real]  WITH CHECK ADD FOREIGN KEY([cod_area])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_flujo_tramite_real]  WITH CHECK ADD FOREIGN KEY([cod_estado])
REFERENCES [dbo].[tb_tip_estado_tramite] ([cod_estado])
GO
ALTER TABLE [dbo].[tb_flujo_tramite_real]  WITH CHECK ADD FOREIGN KEY([cod_tramite])
REFERENCES [dbo].[tb_tramite] ([cod_tramite])
GO
ALTER TABLE [dbo].[tb_flujo_tramite_real]  WITH CHECK ADD FOREIGN KEY([cod_usuario])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_log_ingr_salidas]  WITH CHECK ADD FOREIGN KEY([cod_area_dirig])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_log_ingr_salidas]  WITH CHECK ADD FOREIGN KEY([cod_folio])
REFERENCES [dbo].[tb_folio] ([cod_folio])
GO
ALTER TABLE [dbo].[tb_log_ingr_salidas]  WITH CHECK ADD FOREIGN KEY([cod_tipo_et])
REFERENCES [dbo].[tb_estado_archiv_log] ([cod_estado_a_l])
GO
ALTER TABLE [dbo].[tb_log_ingr_salidas]  WITH CHECK ADD FOREIGN KEY([cod_usu_solicitante])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_log_ingr_salidas]  WITH CHECK ADD FOREIGN KEY([cod_usu_dirigi])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_perfil_ingreso]  WITH CHECK ADD FOREIGN KEY([cod_area])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_requisitos]  WITH CHECK ADD FOREIGN KEY([usu_queregistro])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_solicitud]  WITH CHECK ADD FOREIGN KEY([cod_area_destino])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_solicitud]  WITH CHECK ADD FOREIGN KEY([cod_solicitante])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_solicitud]  WITH CHECK ADD FOREIGN KEY([cod_solicitado])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_solicitud_adj]  WITH CHECK ADD FOREIGN KEY([cod_solicitud])
REFERENCES [dbo].[tb_solicitud] ([cod_solicitud])
GO
ALTER TABLE [dbo].[tb_solicitud_resp]  WITH CHECK ADD FOREIGN KEY([cod_solicitud])
REFERENCES [dbo].[tb_solicitud] ([cod_solicitud])
GO
ALTER TABLE [dbo].[tb_solicitud_resp_adj]  WITH CHECK ADD FOREIGN KEY([cod_solicitud_resp])
REFERENCES [dbo].[tb_solicitud_resp] ([cod_solicitud_resp])
GO
ALTER TABLE [dbo].[tb_t_iteracion_detalle]  WITH CHECK ADD FOREIGN KEY([cod_tramite_adjuntos])
REFERENCES [dbo].[tb_tramite_iteracion] ([cod_tramite_adjuntos])
GO
ALTER TABLE [dbo].[tb_tip_expediente]  WITH CHECK ADD FOREIGN KEY([cod_area_encargada])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_tip_expediente]  WITH CHECK ADD FOREIGN KEY([cod_tupa])
REFERENCES [dbo].[tb_tupa] ([cod_tupa])
GO
ALTER TABLE [dbo].[tb_tip_expediente]  WITH CHECK ADD FOREIGN KEY([usu_queregistro])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_tramite]  WITH CHECK ADD FOREIGN KEY([cod_administrado])
REFERENCES [dbo].[tb_administrado] ([cod_administrado])
GO
ALTER TABLE [dbo].[tb_tramite]  WITH CHECK ADD FOREIGN KEY([cod_estado])
REFERENCES [dbo].[tb_tip_estado_tramite] ([cod_estado])
GO
ALTER TABLE [dbo].[tb_tramite_adjuntos]  WITH CHECK ADD FOREIGN KEY([cod_tramite])
REFERENCES [dbo].[tb_tramite] ([cod_tramite])
GO
ALTER TABLE [dbo].[tb_tramite_adjuntos]  WITH CHECK ADD FOREIGN KEY([cod_usu])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_tramite_area_asignada]  WITH CHECK ADD FOREIGN KEY([cod_area])
REFERENCES [dbo].[tb_area] ([cod_area])
GO
ALTER TABLE [dbo].[tb_tramite_area_asignada]  WITH CHECK ADD FOREIGN KEY([cod_tramite])
REFERENCES [dbo].[tb_tramite] ([cod_tramite])
GO
ALTER TABLE [dbo].[tb_tramite_area_asignada]  WITH CHECK ADD FOREIGN KEY([cod_usu_queasigno])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_tramite_iteracion]  WITH CHECK ADD FOREIGN KEY([cod_tramite])
REFERENCES [dbo].[tb_tramite] ([cod_tramite])
GO
ALTER TABLE [dbo].[tb_tramite_iteracion]  WITH CHECK ADD FOREIGN KEY([cod_usu])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
ALTER TABLE [dbo].[tb_tramite_rechazo]  WITH CHECK ADD FOREIGN KEY([cod_administrado])
REFERENCES [dbo].[tb_administrado] ([cod_administrado])
GO
ALTER TABLE [dbo].[tb_tramite_rechazo]  WITH CHECK ADD FOREIGN KEY([cod_tramite])
REFERENCES [dbo].[tb_tramite] ([cod_tramite])
GO
ALTER TABLE [dbo].[tb_tramite_resp]  WITH CHECK ADD FOREIGN KEY([cod_asignacion])
REFERENCES [dbo].[tb_asignacion] ([cod_asignacion])
GO
ALTER TABLE [dbo].[tb_tramite_resp]  WITH CHECK ADD FOREIGN KEY([cod_tramite])
REFERENCES [dbo].[tb_tramite] ([cod_tramite])
GO
ALTER TABLE [dbo].[tb_tramite_resp_adj]  WITH CHECK ADD FOREIGN KEY([cod_tramite_resp])
REFERENCES [dbo].[tb_tramite_resp] ([cod_tramite_resp])
GO
ALTER TABLE [dbo].[tb_user]  WITH CHECK ADD FOREIGN KEY([tip_user])
REFERENCES [dbo].[tb_tip_usu] ([cod_tip_usu])
GO
ALTER TABLE [dbo].[tb_user_perfil]  WITH CHECK ADD FOREIGN KEY([cod_perfil_ingreso])
REFERENCES [dbo].[tb_perfil_ingreso] ([cod_perfil_ingreso])
GO
ALTER TABLE [dbo].[tb_user_perfil]  WITH CHECK ADD FOREIGN KEY([cod_user])
REFERENCES [dbo].[tb_user] ([cod_user])
GO
USE [master]
GO
ALTER DATABASE [munives_tramite] SET  READ_WRITE 
GO
