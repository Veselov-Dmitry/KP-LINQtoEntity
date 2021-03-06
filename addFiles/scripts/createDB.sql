USE [OASU]
GO
/****** Object:  Table [dbo].[Computer]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Computer](
	[Inventory_number] [int] NOT NULL,
	[Computer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Net_Name] [varchar](8) NULL,
 CONSTRAINT [XPKКомпьютер] PRIMARY KEY NONCLUSTERED 
(
	[Computer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[Name_Department] [varchar](200) NOT NULL,
	[Department_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [XPKОтдел] PRIMARY KEY NONCLUSTERED 
(
	[Department_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Developers]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developers](
	[Developer_part_ID] [int] IDENTITY(1,1) NOT NULL,
	[PS_ID] [int] NOT NULL,
	[Record_ID] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Prog_Lang_ID] [int] NOT NULL,
	[Office_ID] [int] NOT NULL,
	[Sub_System_ID] [int] NOT NULL,
	[Department_ID] [int] NOT NULL,
	[Profession_ID] [int] NOT NULL,
	[Date_start] [datetime] NULL,
 CONSTRAINT [XPKРазработчики] PRIMARY KEY NONCLUSTERED 
(
	[Developer_part_ID] ASC,
	[PS_ID] ASC,
	[Record_ID] ASC,
	[Employee_ID] ASC,
	[Prog_Lang_ID] ASC,
	[Office_ID] ASC,
	[Sub_System_ID] ASC,
	[Department_ID] ASC,
	[Profession_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document_types]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document_types](
	[Name_document_type] [varchar](100) NOT NULL,
	[Document_type_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [XPKВиды_документов] PRIMARY KEY NONCLUSTERED 
(
	[Document_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Documents](
	[Document_ID] [int] IDENTITY(1,1) NOT NULL,
	[Document_type_ID] [int] NOT NULL,
	[PS_ID] [int] NOT NULL,
	[Prg_Lang_ID] [int] NOT NULL,
	[Sub_System_ID] [int] NOT NULL,
	[Document_Number] [varchar](15) NULL,
	[Document_Date] [datetime] NULL,
 CONSTRAINT [XPKДокументация] PRIMARY KEY NONCLUSTERED 
(
	[Document_ID] ASC,
	[Document_type_ID] ASC,
	[PS_ID] ASC,
	[Prg_Lang_ID] ASC,
	[Sub_System_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[Employee_ID] [int] IDENTITY(1,1) NOT NULL,
	[Profession_ID] [int] NOT NULL,
	[Office_ID] [int] NOT NULL,
	[Department_ID] [int] NOT NULL,
	[Full_Name_Employee] [varchar](200) NOT NULL,
	[Personnel_Number] [int] NOT NULL,
 CONSTRAINT [XPKРаботники] PRIMARY KEY NONCLUSTERED 
(
	[Employee_ID] ASC,
	[Profession_ID] ASC,
	[Office_ID] ASC,
	[Department_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Offices](
	[Office_ID] [int] IDENTITY(1,1) NOT NULL,
	[Department_ID] [int] NOT NULL,
	[Name_Office] [varchar](200) NULL,
 CONSTRAINT [XPKБюро] PRIMARY KEY NONCLUSTERED 
(
	[Office_ID] ASC,
	[Department_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prg_Systems]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prg_Systems](
	[Prg_System] [int] IDENTITY(1,1) NOT NULL,
	[Prg_Lang_ID] [int] NOT NULL,
	[Sub_System_ID] [int] NOT NULL,
	[PS_Name] [varchar](200) NULL,
 CONSTRAINT [XPKПС] PRIMARY KEY NONCLUSTERED 
(
	[Prg_System] ASC,
	[Prg_Lang_ID] ASC,
	[Sub_System_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrgLangs]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrgLangs](
	[Prg_Lang] [varchar](20) NOT NULL,
	[Prg_Lang_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [XPKЯзыки_программирования] PRIMARY KEY NONCLUSTERED 
(
	[Prg_Lang_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Professions]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Professions](
	[Name_Profession] [varchar](100) NULL,
	[Profession_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [XPKПрофессии] PRIMARY KEY NONCLUSTERED 
(
	[Profession_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Records_history]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Records_history](
	[Record_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sub_System_ID] [int] NOT NULL,
	[Prog_Lang_ID] [int] NOT NULL,
	[PS_ID] [int] NOT NULL,
	[Note] [varchar](1000) NOT NULL,
 CONSTRAINT [XPKИстория_разработки_ПС] PRIMARY KEY NONCLUSTERED 
(
	[Record_ID] ASC,
	[Sub_System_ID] ASC,
	[Prog_Lang_ID] ASC,
	[PS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sub_Systems]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sub_Systems](
	[Sub_System] [varchar](20) NOT NULL,
	[Sub_System_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [XPKПодсистемы] PRIMARY KEY NONCLUSTERED 
(
	[Sub_System_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Employee_ID] [int] NULL,
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[PS_ID] [int] NULL,
	[Office_ID] [int] NULL,
	[Department_ID] [int] NULL,
	[Prog_Lang_ID] [int] NULL,
	[Profession_ID] [int] NULL,
	[Sub_System_ID] [int] NULL,
 CONSTRAINT [XPKПользователь] PRIMARY KEY NONCLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Workplace]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Workplace](
	[Office_ID] [int] NOT NULL,
	[Workplace_ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Floor] [int] NULL,
	[Housing] [int] NULL,
	[Telephone] [varchar](20) NULL,
	[Department_ID] [int] NOT NULL,
	[Profession_ID] [int] NOT NULL,
 CONSTRAINT [XPKРабочее_место] PRIMARY KEY NONCLUSTERED 
(
	[Workplace_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Workplace_to_Computer]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workplace_to_Computer](
	[Computer_ID] [int] NOT NULL,
	[Workplace_ID] [int] NOT NULL,
 CONSTRAINT [XPKРабочее_м_Компьюте] PRIMARY KEY NONCLUSTERED 
(
	[Computer_ID] ASC,
	[Workplace_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Developers]  WITH CHECK ADD  CONSTRAINT [R_19] FOREIGN KEY([Record_ID], [Sub_System_ID], [Prog_Lang_ID], [PS_ID])
REFERENCES [dbo].[Records_history] ([Record_ID], [Sub_System_ID], [Prog_Lang_ID], [PS_ID])
GO
ALTER TABLE [dbo].[Developers] CHECK CONSTRAINT [R_19]
GO
ALTER TABLE [dbo].[Developers]  WITH CHECK ADD  CONSTRAINT [R_20] FOREIGN KEY([Employee_ID], [Profession_ID], [Office_ID], [Department_ID])
REFERENCES [dbo].[Employees] ([Employee_ID], [Profession_ID], [Office_ID], [Department_ID])
GO
ALTER TABLE [dbo].[Developers] CHECK CONSTRAINT [R_20]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [R_1] FOREIGN KEY([Document_type_ID])
REFERENCES [dbo].[Document_types] ([Document_type_ID])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [R_1]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [R_2] FOREIGN KEY([PS_ID], [Prg_Lang_ID], [Sub_System_ID])
REFERENCES [dbo].[Prg_Systems] ([Prg_System], [Prg_Lang_ID], [Sub_System_ID])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [R_2]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [R_4] FOREIGN KEY([Office_ID], [Department_ID])
REFERENCES [dbo].[Offices] ([Office_ID], [Department_ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [R_4]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [R_5] FOREIGN KEY([Profession_ID])
REFERENCES [dbo].[Professions] ([Profession_ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [R_5]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [R_3] FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Departments] ([Department_ID])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [R_3]
GO
ALTER TABLE [dbo].[Prg_Systems]  WITH CHECK ADD  CONSTRAINT [R_11] FOREIGN KEY([Sub_System_ID])
REFERENCES [dbo].[Sub_Systems] ([Sub_System_ID])
GO
ALTER TABLE [dbo].[Prg_Systems] CHECK CONSTRAINT [R_11]
GO
ALTER TABLE [dbo].[Prg_Systems]  WITH CHECK ADD  CONSTRAINT [R_13] FOREIGN KEY([Prg_Lang_ID])
REFERENCES [dbo].[PrgLangs] ([Prg_Lang_ID])
GO
ALTER TABLE [dbo].[Prg_Systems] CHECK CONSTRAINT [R_13]
GO
ALTER TABLE [dbo].[Records_history]  WITH CHECK ADD  CONSTRAINT [R_16] FOREIGN KEY([PS_ID], [Prog_Lang_ID], [Sub_System_ID])
REFERENCES [dbo].[Prg_Systems] ([Prg_System], [Prg_Lang_ID], [Sub_System_ID])
GO
ALTER TABLE [dbo].[Records_history] CHECK CONSTRAINT [R_16]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [R_14] FOREIGN KEY([Employee_ID], [Profession_ID], [Office_ID], [Department_ID])
REFERENCES [dbo].[Employees] ([Employee_ID], [Profession_ID], [Office_ID], [Department_ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [R_14]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [R_15] FOREIGN KEY([PS_ID], [Prog_Lang_ID], [Sub_System_ID])
REFERENCES [dbo].[Prg_Systems] ([Prg_System], [Prg_Lang_ID], [Sub_System_ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [R_15]
GO
ALTER TABLE [dbo].[Workplace]  WITH CHECK ADD  CONSTRAINT [R_7] FOREIGN KEY([Office_ID], [Department_ID])
REFERENCES [dbo].[Offices] ([Office_ID], [Department_ID])
GO
ALTER TABLE [dbo].[Workplace] CHECK CONSTRAINT [R_7]
GO
ALTER TABLE [dbo].[Workplace]  WITH CHECK ADD  CONSTRAINT [R_8] FOREIGN KEY([Employee_ID], [Profession_ID], [Office_ID], [Department_ID])
REFERENCES [dbo].[Employees] ([Employee_ID], [Profession_ID], [Office_ID], [Department_ID])
GO
ALTER TABLE [dbo].[Workplace] CHECK CONSTRAINT [R_8]
GO
ALTER TABLE [dbo].[Workplace_to_Computer]  WITH CHECK ADD  CONSTRAINT [R_21] FOREIGN KEY([Workplace_ID])
REFERENCES [dbo].[Workplace] ([Workplace_ID])
GO
ALTER TABLE [dbo].[Workplace_to_Computer] CHECK CONSTRAINT [R_21]
GO
ALTER TABLE [dbo].[Workplace_to_Computer]  WITH CHECK ADD  CONSTRAINT [R_22] FOREIGN KEY([Computer_ID])
REFERENCES [dbo].[Computer] ([Computer_ID])
GO
ALTER TABLE [dbo].[Workplace_to_Computer] CHECK CONSTRAINT [R_22]
GO
/****** Object:  Trigger [dbo].[tD_Компьютер]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Компьютер] on [dbo].[Computer] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Компьютер */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Компьютер R/22 Рабочее_м_Компьюте ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Рабочее_м_Компьюте
      where
        /*  Рабочее_м_Компьюте.Computer_ID = deleted.Computer_ID */
        Рабочее_м_Компьюте.Computer_ID = deleted.Computer_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Компьютер because Рабочее_м_Компьюте exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Компьютер]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Компьютер] on [dbo].[Computer] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Компьютер */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insComputer_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Компьютер R/22 Рабочее_м_Компьюте ON PARENT UPDATE RESTRICT */
  if
    /* update(Computer_ID) */
    update(Computer_ID)
  begin
    if exists (
      select * from deleted,Рабочее_м_Компьюте
      where
        /*  Рабочее_м_Компьюте.Computer_ID = deleted.Computer_ID */
        Рабочее_м_Компьюте.Computer_ID = deleted.Computer_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Компьютер because Рабочее_м_Компьюте exists.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Отдел]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Отдел] on [dbo].[Departments] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Отдел */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Отдел R/3 Бюро ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Бюро
      where
        /*  Бюро.Department_ID = deleted.Department_ID */
        Бюро.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Отдел because Бюро exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Отдел]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Отдел] on [dbo].[Departments] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Отдел */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insDepartment_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Отдел R/3 Бюро ON PARENT UPDATE RESTRICT */
  if
    /* update(Department_ID) */
    update(Department_ID)
  begin
    if exists (
      select * from deleted,Бюро
      where
        /*  Бюро.Department_ID = deleted.Department_ID */
        Бюро.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Отдел because Бюро exists.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_Разработчики]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_Разработчики] on [dbo].[Developers] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on Разработчики */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/20 Разработчики ON CHILD INSERT RESTRICT */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Работники
        where
          /* inserted.Employee_ID = Работники.Employee_ID and
             inserted.Profession_ID = Работники.Profession_ID and
             inserted.Office_ID = Работники.Office_ID and
             inserted.Department_ID = Работники.Department_ID */
          inserted.Employee_ID = Работники.Employee_ID and
          inserted.Profession_ID = Работники.Profession_ID and
          inserted.Office_ID = Работники.Office_ID and
          inserted.Department_ID = Работники.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Разработчики because Работники does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* История_разработки_ПС R/19 Разработчики ON CHILD INSERT RESTRICT */
  if
    /* update(Record_ID) or
       update(Sub_System_ID) or
       update(Prog_Lang_ID) or
       update(PS_ID) */
    update(Record_ID) or
    update(Sub_System_ID) or
    update(Prog_Lang_ID) or
    update(PS_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,История_разработки_ПС
        where
          /* inserted.Record_ID = История_разработки_ПС.Record_ID and
             inserted.Sub_System_ID = История_разработки_ПС.Sub_System_ID and
             inserted.Prog_Lang_ID = История_разработки_ПС.Prog_Lang_ID and
             inserted.PS_ID = История_разработки_ПС.PS_ID */
          inserted.Record_ID = История_разработки_ПС.Record_ID and
          inserted.Sub_System_ID = История_разработки_ПС.Sub_System_ID and
          inserted.Prog_Lang_ID = История_разработки_ПС.Prog_Lang_ID and
          inserted.PS_ID = История_разработки_ПС.PS_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Разработчики because История_разработки_ПС does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Разработчики]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Разработчики] on [dbo].[Developers] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Разработчики */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insDeveloper_part_ID int, 
           @insPS_ID int, 
           @insRecord_ID int, 
           @insEmployee_ID int, 
           @insProg_Lang_ID int, 
           @insOffice_ID int, 
           @insSub_System_ID int, 
           @insDepartment_ID int, 
           @insProfession_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/20 Разработчики ON CHILD UPDATE RESTRICT */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Работники
        where
          /* inserted.Employee_ID = Работники.Employee_ID and
             inserted.Profession_ID = Работники.Profession_ID and
             inserted.Office_ID = Работники.Office_ID and
             inserted.Department_ID = Работники.Department_ID */
          inserted.Employee_ID = Работники.Employee_ID and
          inserted.Profession_ID = Работники.Profession_ID and
          inserted.Office_ID = Работники.Office_ID and
          inserted.Department_ID = Работники.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Разработчики because Работники does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* История_разработки_ПС R/19 Разработчики ON CHILD UPDATE RESTRICT */
  if
    /* update(Record_ID) or
       update(Sub_System_ID) or
       update(Prog_Lang_ID) or
       update(PS_ID) */
    update(Record_ID) or
    update(Sub_System_ID) or
    update(Prog_Lang_ID) or
    update(PS_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,История_разработки_ПС
        where
          /* inserted.Record_ID = История_разработки_ПС.Record_ID and
             inserted.Sub_System_ID = История_разработки_ПС.Sub_System_ID and
             inserted.Prog_Lang_ID = История_разработки_ПС.Prog_Lang_ID and
             inserted.PS_ID = История_разработки_ПС.PS_ID */
          inserted.Record_ID = История_разработки_ПС.Record_ID and
          inserted.Sub_System_ID = История_разработки_ПС.Sub_System_ID and
          inserted.Prog_Lang_ID = История_разработки_ПС.Prog_Lang_ID and
          inserted.PS_ID = История_разработки_ПС.PS_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Разработчики because История_разработки_ПС does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Виды_документов]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Виды_документов] on [dbo].[Document_types] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Виды_документов */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Виды_документов R/1 Документация ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Документация
      where
        /*  Документация.Document_type_ID = deleted.Document_type_ID */
        Документация.Document_type_ID = deleted.Document_type_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Виды_документов because Документация exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Виды_документов]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Виды_документов] on [dbo].[Document_types] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Виды_документов */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insDocument_type_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Виды_документов R/1 Документация ON PARENT UPDATE RESTRICT */
  if
    /* update(Document_type_ID) */
    update(Document_type_ID)
  begin
    if exists (
      select * from deleted,Документация
      where
        /*  Документация.Document_type_ID = deleted.Document_type_ID */
        Документация.Document_type_ID = deleted.Document_type_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Виды_документов because Документация exists.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_Документация]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_Документация] on [dbo].[Documents] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on Документация */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/2 Документация ON CHILD INSERT RESTRICT */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,ПС
        where
          /* inserted.PS_ID = ПС.PS_ID and
             inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
             inserted.Sub_System_ID = ПС.Sub_System_ID */
          inserted.PS_ID = ПС.PS_ID and
          inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
          inserted.Sub_System_ID = ПС.Sub_System_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Документация because ПС does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Виды_документов R/1 Документация ON CHILD INSERT RESTRICT */
  if
    /* update(Document_type_ID) */
    update(Document_type_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Виды_документов
        where
          /* inserted.Document_type_ID = Виды_документов.Document_type_ID */
          inserted.Document_type_ID = Виды_документов.Document_type_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Документация because Виды_документов does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Документация]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Документация] on [dbo].[Documents] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Документация */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insDocument_ID int, 
           @insDocument_type_ID int, 
           @insPS_ID int, 
           @insProg_Lang_ID int, 
           @insSub_System_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/2 Документация ON CHILD UPDATE RESTRICT */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,ПС
        where
          /* inserted.PS_ID = ПС.PS_ID and
             inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
             inserted.Sub_System_ID = ПС.Sub_System_ID */
          inserted.PS_ID = ПС.PS_ID and
          inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
          inserted.Sub_System_ID = ПС.Sub_System_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Документация because ПС does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Виды_документов R/1 Документация ON CHILD UPDATE RESTRICT */
  if
    /* update(Document_type_ID) */
    update(Document_type_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Виды_документов
        where
          /* inserted.Document_type_ID = Виды_документов.Document_type_ID */
          inserted.Document_type_ID = Виды_документов.Document_type_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Документация because Виды_документов does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Работники]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Работники] on [dbo].[Employees] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Работники */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Работники R/20 Разработчики ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Разработчики
      where
        /*  Разработчики.Employee_ID = deleted.Employee_ID and
            Разработчики.Profession_ID = deleted.Profession_ID and
            Разработчики.Office_ID = deleted.Office_ID and
            Разработчики.Department_ID = deleted.Department_ID */
        Разработчики.Employee_ID = deleted.Employee_ID and
        Разработчики.Profession_ID = deleted.Profession_ID and
        Разработчики.Office_ID = deleted.Office_ID and
        Разработчики.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Работники because Разработчики exists.'
      goto error
    end

    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Работники R/14 Пользователь ON PARENT DELETE SET NULL */
    update Пользователь
      set
        /* Пользователь.Employee_ID = NULL,
           Пользователь.Profession_ID = NULL,
           Пользователь.Office_ID = NULL,
           Пользователь.Department_ID = NULL */
        Пользователь.Employee_ID = NULL,
        Пользователь.Profession_ID = NULL,
        Пользователь.Office_ID = NULL,
        Пользователь.Department_ID = NULL
      from Пользователь,deleted
      where
        /* Пользователь.Employee_ID = deleted.Employee_ID and
           Пользователь.Profession_ID = deleted.Profession_ID and
           Пользователь.Office_ID = deleted.Office_ID and
           Пользователь.Department_ID = deleted.Department_ID */
        Пользователь.Employee_ID = deleted.Employee_ID and
        Пользователь.Profession_ID = deleted.Profession_ID and
        Пользователь.Office_ID = deleted.Office_ID and
        Пользователь.Department_ID = deleted.Department_ID

    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Работники R/8 Рабочее_место ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Рабочее_место
      where
        /*  Рабочее_место.Employee_ID = deleted.Employee_ID and
            Рабочее_место.Profession_ID = deleted.Profession_ID and
            Рабочее_место.Office_ID = deleted.Office_ID and
            Рабочее_место.Department_ID = deleted.Department_ID */
        Рабочее_место.Employee_ID = deleted.Employee_ID and
        Рабочее_место.Profession_ID = deleted.Profession_ID and
        Рабочее_место.Office_ID = deleted.Office_ID and
        Рабочее_место.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Работники because Рабочее_место exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_Работники]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_Работники] on [dbo].[Employees] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on Работники */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Профессии R/5 Работники ON CHILD INSERT RESTRICT */
  if
    /* update(Profession_ID) */
    update(Profession_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Профессии
        where
          /* inserted.Profession_ID = Профессии.Profession_ID */
          inserted.Profession_ID = Профессии.Profession_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Работники because Профессии does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Бюро R/4 Работники ON CHILD INSERT RESTRICT */
  if
    /* update(Office_ID) or
       update(Department_ID) */
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Бюро
        where
          /* inserted.Office_ID = Бюро.Office_ID and
             inserted.Department_ID = Бюро.Department_ID */
          inserted.Office_ID = Бюро.Office_ID and
          inserted.Department_ID = Бюро.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Работники because Бюро does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Работники]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Работники] on [dbo].[Employees] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Работники */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployee_ID int, 
           @insProfession_ID int, 
           @insOffice_ID int, 
           @insDepartment_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/20 Разработчики ON PARENT UPDATE RESTRICT */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    if exists (
      select * from deleted,Разработчики
      where
        /*  Разработчики.Employee_ID = deleted.Employee_ID and
            Разработчики.Profession_ID = deleted.Profession_ID and
            Разработчики.Office_ID = deleted.Office_ID and
            Разработчики.Department_ID = deleted.Department_ID */
        Разработчики.Employee_ID = deleted.Employee_ID and
        Разработчики.Profession_ID = deleted.Profession_ID and
        Разработчики.Office_ID = deleted.Office_ID and
        Разработчики.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Работники because Разработчики exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/14 Пользователь ON PARENT UPDATE SET NULL */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    update Пользователь
      set
        /* Пользователь.Employee_ID = NULL,
           Пользователь.Profession_ID = NULL,
           Пользователь.Office_ID = NULL,
           Пользователь.Department_ID = NULL */
        Пользователь.Employee_ID = NULL,
        Пользователь.Profession_ID = NULL,
        Пользователь.Office_ID = NULL,
        Пользователь.Department_ID = NULL
      from Пользователь,deleted
      where
        /* Пользователь.Employee_ID = deleted.Employee_ID and
           Пользователь.Profession_ID = deleted.Profession_ID and
           Пользователь.Office_ID = deleted.Office_ID and
           Пользователь.Department_ID = deleted.Department_ID */
        Пользователь.Employee_ID = deleted.Employee_ID and
        Пользователь.Profession_ID = deleted.Profession_ID and
        Пользователь.Office_ID = deleted.Office_ID and
        Пользователь.Department_ID = deleted.Department_ID
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/8 Рабочее_место ON PARENT UPDATE RESTRICT */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    if exists (
      select * from deleted,Рабочее_место
      where
        /*  Рабочее_место.Employee_ID = deleted.Employee_ID and
            Рабочее_место.Profession_ID = deleted.Profession_ID and
            Рабочее_место.Office_ID = deleted.Office_ID and
            Рабочее_место.Department_ID = deleted.Department_ID */
        Рабочее_место.Employee_ID = deleted.Employee_ID and
        Рабочее_место.Profession_ID = deleted.Profession_ID and
        Рабочее_место.Office_ID = deleted.Office_ID and
        Рабочее_место.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Работники because Рабочее_место exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Профессии R/5 Работники ON CHILD UPDATE RESTRICT */
  if
    /* update(Profession_ID) */
    update(Profession_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Профессии
        where
          /* inserted.Profession_ID = Профессии.Profession_ID */
          inserted.Profession_ID = Профессии.Profession_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Работники because Профессии does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Бюро R/4 Работники ON CHILD UPDATE RESTRICT */
  if
    /* update(Office_ID) or
       update(Department_ID) */
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Бюро
        where
          /* inserted.Office_ID = Бюро.Office_ID and
             inserted.Department_ID = Бюро.Department_ID */
          inserted.Office_ID = Бюро.Office_ID and
          inserted.Department_ID = Бюро.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Работники because Бюро does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Бюро]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create trigger [dbo].[tD_Бюро] on [dbo].[Offices] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Бюро */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Бюро R/7 Рабочее_место ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Рабочее_место
      where
        /*  Рабочее_место.Office_ID = deleted.Office_ID and
            Рабочее_место.Department_ID = deleted.Department_ID */
        Рабочее_место.Office_ID = deleted.Office_ID and
        Рабочее_место.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Бюро because Рабочее_место exists.'
      goto error
    end

    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Бюро R/4 Работники ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Работники
      where
        /*  Работники.Office_ID = deleted.Office_ID and
            Работники.Department_ID = deleted.Department_ID */
        Работники.Office_ID = deleted.Office_ID and
        Работники.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Бюро because Работники exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_Бюро]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_Бюро] on [dbo].[Offices] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on Бюро */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Отдел R/3 Бюро ON CHILD INSERT RESTRICT */
  if
    /* update(Department_ID) */
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Отдел
        where
          /* inserted.Department_ID = Отдел.Department_ID */
          inserted.Department_ID = Отдел.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Бюро because Отдел does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Бюро]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Бюро] on [dbo].[Offices] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Бюро */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOffice_ID int, 
           @insDepartment_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Бюро R/7 Рабочее_место ON PARENT UPDATE RESTRICT */
  if
    /* update(Office_ID) or
       update(Department_ID) */
    update(Office_ID) or
    update(Department_ID)
  begin
    if exists (
      select * from deleted,Рабочее_место
      where
        /*  Рабочее_место.Office_ID = deleted.Office_ID and
            Рабочее_место.Department_ID = deleted.Department_ID */
        Рабочее_место.Office_ID = deleted.Office_ID and
        Рабочее_место.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Бюро because Рабочее_место exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Бюро R/4 Работники ON PARENT UPDATE RESTRICT */
  if
    /* update(Office_ID) or
       update(Department_ID) */
    update(Office_ID) or
    update(Department_ID)
  begin
    if exists (
      select * from deleted,Работники
      where
        /*  Работники.Office_ID = deleted.Office_ID and
            Работники.Department_ID = deleted.Department_ID */
        Работники.Office_ID = deleted.Office_ID and
        Работники.Department_ID = deleted.Department_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Бюро because Работники exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Отдел R/3 Бюро ON CHILD UPDATE RESTRICT */
  if
    /* update(Department_ID) */
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Отдел
        where
          /* inserted.Department_ID = Отдел.Department_ID */
          inserted.Department_ID = Отдел.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Бюро because Отдел does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_ПС]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_ПС] on [dbo].[Prg_Systems] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on ПС */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* ПС R/16 История_разработки_ПС ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,История_разработки_ПС
      where
        /*  История_разработки_ПС.PS_ID = deleted.PS_ID and
            История_разработки_ПС.Prog_Lang_ID = deleted.Prog_Lang_ID and
            История_разработки_ПС.Sub_System_ID = deleted.Sub_System_ID */
        История_разработки_ПС.PS_ID = deleted.PS_ID and
        История_разработки_ПС.Prog_Lang_ID = deleted.Prog_Lang_ID and
        История_разработки_ПС.Sub_System_ID = deleted.Sub_System_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE ПС because История_разработки_ПС exists.'
      goto error
    end

    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* ПС R/15 Пользователь ON PARENT DELETE SET NULL */
    update Пользователь
      set
        /* Пользователь.PS_ID = NULL,
           Пользователь.Prog_Lang_ID = NULL,
           Пользователь.Sub_System_ID = NULL */
        Пользователь.PS_ID = NULL,
        Пользователь.Prog_Lang_ID = NULL,
        Пользователь.Sub_System_ID = NULL
      from Пользователь,deleted
      where
        /* Пользователь.PS_ID = deleted.PS_ID and
           Пользователь.Prog_Lang_ID = deleted.Prog_Lang_ID and
           Пользователь.Sub_System_ID = deleted.Sub_System_ID */
        Пользователь.PS_ID = deleted.PS_ID and
        Пользователь.Prog_Lang_ID = deleted.Prog_Lang_ID and
        Пользователь.Sub_System_ID = deleted.Sub_System_ID

    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* ПС R/2 Документация ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Документация
      where
        /*  Документация.PS_ID = deleted.PS_ID and
            Документация.Prog_Lang_ID = deleted.Prog_Lang_ID and
            Документация.Sub_System_ID = deleted.Sub_System_ID */
        Документация.PS_ID = deleted.PS_ID and
        Документация.Prog_Lang_ID = deleted.Prog_Lang_ID and
        Документация.Sub_System_ID = deleted.Sub_System_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE ПС because Документация exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_ПС]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_ПС] on [dbo].[Prg_Systems] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on ПС */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Языки_программирования R/13 ПС ON CHILD INSERT RESTRICT */
  if
    /* update(Prog_Lang_ID) */
    update(Prog_Lang_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Языки_программирования
        where
          /* inserted.Prog_Lang_ID = Языки_программирования.Prog_Lang_ID */
          inserted.Prog_Lang_ID = Языки_программирования.Prog_Lang_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT ПС because Языки_программирования does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Подсистемы R/11 ПС ON CHILD INSERT RESTRICT */
  if
    /* update(Sub_System_ID) */
    update(Sub_System_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Подсистемы
        where
          /* inserted.Sub_System_ID = Подсистемы.Sub_System_ID */
          inserted.Sub_System_ID = Подсистемы.Sub_System_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT ПС because Подсистемы does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_ПС]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_ПС] on [dbo].[Prg_Systems] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on ПС */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insPS_ID int, 
           @insProg_Lang_ID int, 
           @insSub_System_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/16 История_разработки_ПС ON PARENT UPDATE RESTRICT */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    if exists (
      select * from deleted,История_разработки_ПС
      where
        /*  История_разработки_ПС.PS_ID = deleted.PS_ID and
            История_разработки_ПС.Prog_Lang_ID = deleted.Prog_Lang_ID and
            История_разработки_ПС.Sub_System_ID = deleted.Sub_System_ID */
        История_разработки_ПС.PS_ID = deleted.PS_ID and
        История_разработки_ПС.Prog_Lang_ID = deleted.Prog_Lang_ID and
        История_разработки_ПС.Sub_System_ID = deleted.Sub_System_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE ПС because История_разработки_ПС exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/15 Пользователь ON PARENT UPDATE SET NULL */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    update Пользователь
      set
        /* Пользователь.PS_ID = NULL,
           Пользователь.Prog_Lang_ID = NULL,
           Пользователь.Sub_System_ID = NULL */
        Пользователь.PS_ID = NULL,
        Пользователь.Prog_Lang_ID = NULL,
        Пользователь.Sub_System_ID = NULL
      from Пользователь,deleted
      where
        /* Пользователь.PS_ID = deleted.PS_ID and
           Пользователь.Prog_Lang_ID = deleted.Prog_Lang_ID and
           Пользователь.Sub_System_ID = deleted.Sub_System_ID */
        Пользователь.PS_ID = deleted.PS_ID and
        Пользователь.Prog_Lang_ID = deleted.Prog_Lang_ID and
        Пользователь.Sub_System_ID = deleted.Sub_System_ID
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/2 Документация ON PARENT UPDATE RESTRICT */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    if exists (
      select * from deleted,Документация
      where
        /*  Документация.PS_ID = deleted.PS_ID and
            Документация.Prog_Lang_ID = deleted.Prog_Lang_ID and
            Документация.Sub_System_ID = deleted.Sub_System_ID */
        Документация.PS_ID = deleted.PS_ID and
        Документация.Prog_Lang_ID = deleted.Prog_Lang_ID and
        Документация.Sub_System_ID = deleted.Sub_System_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE ПС because Документация exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Языки_программирования R/13 ПС ON CHILD UPDATE RESTRICT */
  if
    /* update(Prog_Lang_ID) */
    update(Prog_Lang_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Языки_программирования
        where
          /* inserted.Prog_Lang_ID = Языки_программирования.Prog_Lang_ID */
          inserted.Prog_Lang_ID = Языки_программирования.Prog_Lang_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE ПС because Языки_программирования does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Подсистемы R/11 ПС ON CHILD UPDATE RESTRICT */
  if
    /* update(Sub_System_ID) */
    update(Sub_System_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Подсистемы
        where
          /* inserted.Sub_System_ID = Подсистемы.Sub_System_ID */
          inserted.Sub_System_ID = Подсистемы.Sub_System_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE ПС because Подсистемы does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Языки_программирования]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Языки_программирования] on [dbo].[PrgLangs] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Языки_программирования */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Языки_программирования R/13 ПС ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,ПС
      where
        /*  ПС.Prog_Lang_ID = deleted.Prog_Lang_ID */
        ПС.Prog_Lang_ID = deleted.Prog_Lang_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Языки_программирования because ПС exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Языки_программирования]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Языки_программирования] on [dbo].[PrgLangs] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Языки_программирования */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProg_Lang_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Языки_программирования R/13 ПС ON PARENT UPDATE RESTRICT */
  if
    /* update(Prog_Lang_ID) */
    update(Prog_Lang_ID)
  begin
    if exists (
      select * from deleted,ПС
      where
        /*  ПС.Prog_Lang_ID = deleted.Prog_Lang_ID */
        ПС.Prog_Lang_ID = deleted.Prog_Lang_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Языки_программирования because ПС exists.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Профессии]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Профессии] on [dbo].[Professions] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Профессии */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Профессии R/5 Работники ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Работники
      where
        /*  Работники.Profession_ID = deleted.Profession_ID */
        Работники.Profession_ID = deleted.Profession_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Профессии because Работники exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Профессии]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Профессии] on [dbo].[Professions] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Профессии */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProfession_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Профессии R/5 Работники ON PARENT UPDATE RESTRICT */
  if
    /* update(Profession_ID) */
    update(Profession_ID)
  begin
    if exists (
      select * from deleted,Работники
      where
        /*  Работники.Profession_ID = deleted.Profession_ID */
        Работники.Profession_ID = deleted.Profession_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Профессии because Работники exists.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_История_разработки_ПС]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_История_разработки_ПС] on [dbo].[Records_history] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on История_разработки_ПС */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* История_разработки_ПС R/19 Разработчики ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Разработчики
      where
        /*  Разработчики.Record_ID = deleted.Record_ID and
            Разработчики.Sub_System_ID = deleted.Sub_System_ID and
            Разработчики.Prog_Lang_ID = deleted.Prog_Lang_ID and
            Разработчики.PS_ID = deleted.PS_ID */
        Разработчики.Record_ID = deleted.Record_ID and
        Разработчики.Sub_System_ID = deleted.Sub_System_ID and
        Разработчики.Prog_Lang_ID = deleted.Prog_Lang_ID and
        Разработчики.PS_ID = deleted.PS_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE История_разработки_ПС because Разработчики exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_История_разработки_ПС]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_История_разработки_ПС] on [dbo].[Records_history] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on История_разработки_ПС */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/16 История_разработки_ПС ON CHILD INSERT RESTRICT */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,ПС
        where
          /* inserted.PS_ID = ПС.PS_ID and
             inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
             inserted.Sub_System_ID = ПС.Sub_System_ID */
          inserted.PS_ID = ПС.PS_ID and
          inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
          inserted.Sub_System_ID = ПС.Sub_System_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT История_разработки_ПС because ПС does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_История_разработки_ПС]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_История_разработки_ПС] on [dbo].[Records_history] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on История_разработки_ПС */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insRecord_ID int, 
           @insSub_System_ID int, 
           @insProg_Lang_ID int, 
           @insPS_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* История_разработки_ПС R/19 Разработчики ON PARENT UPDATE RESTRICT */
  if
    /* update(Record_ID) or
       update(Sub_System_ID) or
       update(Prog_Lang_ID) or
       update(PS_ID) */
    update(Record_ID) or
    update(Sub_System_ID) or
    update(Prog_Lang_ID) or
    update(PS_ID)
  begin
    if exists (
      select * from deleted,Разработчики
      where
        /*  Разработчики.Record_ID = deleted.Record_ID and
            Разработчики.Sub_System_ID = deleted.Sub_System_ID and
            Разработчики.Prog_Lang_ID = deleted.Prog_Lang_ID and
            Разработчики.PS_ID = deleted.PS_ID */
        Разработчики.Record_ID = deleted.Record_ID and
        Разработчики.Sub_System_ID = deleted.Sub_System_ID and
        Разработчики.Prog_Lang_ID = deleted.Prog_Lang_ID and
        Разработчики.PS_ID = deleted.PS_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE История_разработки_ПС because Разработчики exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/16 История_разработки_ПС ON CHILD UPDATE RESTRICT */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,ПС
        where
          /* inserted.PS_ID = ПС.PS_ID and
             inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
             inserted.Sub_System_ID = ПС.Sub_System_ID */
          inserted.PS_ID = ПС.PS_ID and
          inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
          inserted.Sub_System_ID = ПС.Sub_System_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE История_разработки_ПС because ПС does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Подсистемы]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Подсистемы] on [dbo].[Sub_Systems] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Подсистемы */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Подсистемы R/11 ПС ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,ПС
      where
        /*  ПС.Sub_System_ID = deleted.Sub_System_ID */
        ПС.Sub_System_ID = deleted.Sub_System_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Подсистемы because ПС exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Подсистемы]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Подсистемы] on [dbo].[Sub_Systems] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Подсистемы */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSub_System_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Подсистемы R/11 ПС ON PARENT UPDATE RESTRICT */
  if
    /* update(Sub_System_ID) */
    update(Sub_System_ID)
  begin
    if exists (
      select * from deleted,ПС
      where
        /*  ПС.Sub_System_ID = deleted.Sub_System_ID */
        ПС.Sub_System_ID = deleted.Sub_System_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Подсистемы because ПС exists.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_Пользователь]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_Пользователь] on [dbo].[Users] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on Пользователь */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/15 Пользователь ON CHILD INSERT SET NULL */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    update Пользователь
      set
        /* Пользователь.PS_ID = NULL,
           Пользователь.Prog_Lang_ID = NULL,
           Пользователь.Sub_System_ID = NULL */
        Пользователь.PS_ID = NULL,
        Пользователь.Prog_Lang_ID = NULL,
        Пользователь.Sub_System_ID = NULL
      from Пользователь,inserted
      where not exists (
          select * from ПС
          where
            /* inserted.PS_ID = ПС.PS_ID and
               inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
               inserted.Sub_System_ID = ПС.Sub_System_ID */
            inserted.PS_ID = ПС.PS_ID and
            inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
            inserted.Sub_System_ID = ПС.Sub_System_ID
        )
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/14 Пользователь ON CHILD INSERT SET NULL */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    update Пользователь
      set
        /* Пользователь.Employee_ID = NULL,
           Пользователь.Profession_ID = NULL,
           Пользователь.Office_ID = NULL,
           Пользователь.Department_ID = NULL */
        Пользователь.Employee_ID = NULL,
        Пользователь.Profession_ID = NULL,
        Пользователь.Office_ID = NULL,
        Пользователь.Department_ID = NULL
      from Пользователь,inserted
      where not exists (
          select * from Работники
          where
            /* inserted.Employee_ID = Работники.Employee_ID and
               inserted.Profession_ID = Работники.Profession_ID and
               inserted.Office_ID = Работники.Office_ID and
               inserted.Department_ID = Работники.Department_ID */
            inserted.Employee_ID = Работники.Employee_ID and
            inserted.Profession_ID = Работники.Profession_ID and
            inserted.Office_ID = Работники.Office_ID and
            inserted.Department_ID = Работники.Department_ID
        )
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Пользователь]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Пользователь] on [dbo].[Users] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Пользователь */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insUser_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* ПС R/15 Пользователь ON CHILD UPDATE SET NULL */
  if
    /* update(PS_ID) or
       update(Prog_Lang_ID) or
       update(Sub_System_ID) */
    update(PS_ID) or
    update(Prog_Lang_ID) or
    update(Sub_System_ID)
  begin
    update Пользователь
      set
        /* Пользователь.PS_ID = NULL,
           Пользователь.Prog_Lang_ID = NULL,
           Пользователь.Sub_System_ID = NULL */
        Пользователь.PS_ID = NULL,
        Пользователь.Prog_Lang_ID = NULL,
        Пользователь.Sub_System_ID = NULL
      from Пользователь,inserted
      where not exists (
          select * from ПС
          where
            /* inserted.PS_ID = ПС.PS_ID and
               inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
               inserted.Sub_System_ID = ПС.Sub_System_ID */
            inserted.PS_ID = ПС.PS_ID and
            inserted.Prog_Lang_ID = ПС.Prog_Lang_ID and
            inserted.Sub_System_ID = ПС.Sub_System_ID
        )
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/14 Пользователь ON CHILD UPDATE SET NULL */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    update Пользователь
      set
        /* Пользователь.Employee_ID = NULL,
           Пользователь.Profession_ID = NULL,
           Пользователь.Office_ID = NULL,
           Пользователь.Department_ID = NULL */
        Пользователь.Employee_ID = NULL,
        Пользователь.Profession_ID = NULL,
        Пользователь.Office_ID = NULL,
        Пользователь.Department_ID = NULL
      from Пользователь,inserted
      where not exists (
          select * from Работники
          where
            /* inserted.Employee_ID = Работники.Employee_ID and
               inserted.Profession_ID = Работники.Profession_ID and
               inserted.Office_ID = Работники.Office_ID and
               inserted.Department_ID = Работники.Department_ID */
            inserted.Employee_ID = Работники.Employee_ID and
            inserted.Profession_ID = Работники.Profession_ID and
            inserted.Office_ID = Работники.Office_ID and
            inserted.Department_ID = Работники.Department_ID
        )
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tD_Рабочее_место]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tD_Рабочее_место] on [dbo].[Workplace] for DELETE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* DELETE trigger on Рабочее_место */
begin
  declare  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    /* Рабочее_место R/21 Рабочее_м_Компьюте ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,Рабочее_м_Компьюте
      where
        /*  Рабочее_м_Компьюте.Workplace_ID = deleted.Workplace_ID */
        Рабочее_м_Компьюте.Workplace_ID = deleted.Workplace_ID
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE Рабочее_место because Рабочее_м_Компьюте exists.'
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_Рабочее_место]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_Рабочее_место] on [dbo].[Workplace] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on Рабочее_место */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/8 Рабочее_место ON CHILD INSERT RESTRICT */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Работники
        where
          /* inserted.Employee_ID = Работники.Employee_ID and
             inserted.Profession_ID = Работники.Profession_ID and
             inserted.Office_ID = Работники.Office_ID and
             inserted.Department_ID = Работники.Department_ID */
          inserted.Employee_ID = Работники.Employee_ID and
          inserted.Profession_ID = Работники.Profession_ID and
          inserted.Office_ID = Работники.Office_ID and
          inserted.Department_ID = Работники.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Рабочее_место because Работники does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Бюро R/7 Рабочее_место ON CHILD INSERT RESTRICT */
  if
    /* update(Office_ID) or
       update(Department_ID) */
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Бюро
        where
          /* inserted.Office_ID = Бюро.Office_ID and
             inserted.Department_ID = Бюро.Department_ID */
          inserted.Office_ID = Бюро.Office_ID and
          inserted.Department_ID = Бюро.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Рабочее_место because Бюро does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Рабочее_место]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Рабочее_место] on [dbo].[Workplace] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Рабочее_место */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insWorkplace_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Рабочее_место R/21 Рабочее_м_Компьюте ON PARENT UPDATE RESTRICT */
  if
    /* update(Workplace_ID) */
    update(Workplace_ID)
  begin
    if exists (
      select * from deleted,Рабочее_м_Компьюте
      where
        /*  Рабочее_м_Компьюте.Workplace_ID = deleted.Workplace_ID */
        Рабочее_м_Компьюте.Workplace_ID = deleted.Workplace_ID
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE Рабочее_место because Рабочее_м_Компьюте exists.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Работники R/8 Рабочее_место ON CHILD UPDATE RESTRICT */
  if
    /* update(Employee_ID) or
       update(Profession_ID) or
       update(Office_ID) or
       update(Department_ID) */
    update(Employee_ID) or
    update(Profession_ID) or
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Работники
        where
          /* inserted.Employee_ID = Работники.Employee_ID and
             inserted.Profession_ID = Работники.Profession_ID and
             inserted.Office_ID = Работники.Office_ID and
             inserted.Department_ID = Работники.Department_ID */
          inserted.Employee_ID = Работники.Employee_ID and
          inserted.Profession_ID = Работники.Profession_ID and
          inserted.Office_ID = Работники.Office_ID and
          inserted.Department_ID = Работники.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Рабочее_место because Работники does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Бюро R/7 Рабочее_место ON CHILD UPDATE RESTRICT */
  if
    /* update(Office_ID) or
       update(Department_ID) */
    update(Office_ID) or
    update(Department_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Бюро
        where
          /* inserted.Office_ID = Бюро.Office_ID and
             inserted.Department_ID = Бюро.Department_ID */
          inserted.Office_ID = Бюро.Office_ID and
          inserted.Department_ID = Бюро.Department_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Рабочее_место because Бюро does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tI_Рабочее_м_Компьюте]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tI_Рабочее_м_Компьюте] on [dbo].[Workplace_to_Computer] for INSERT as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* INSERT trigger on Рабочее_м_Компьюте */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Компьютер R/22 Рабочее_м_Компьюте ON CHILD INSERT RESTRICT */
  if
    /* update(Computer_ID) */
    update(Computer_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Компьютер
        where
          /* inserted.Computer_ID = Компьютер.Computer_ID */
          inserted.Computer_ID = Компьютер.Computer_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Рабочее_м_Компьюте because Компьютер does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Рабочее_место R/21 Рабочее_м_Компьюте ON CHILD INSERT RESTRICT */
  if
    /* update(Workplace_ID) */
    update(Workplace_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Рабочее_место
        where
          /* inserted.Workplace_ID = Рабочее_место.Workplace_ID */
          inserted.Workplace_ID = Рабочее_место.Workplace_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT Рабочее_м_Компьюте because Рабочее_место does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
/****** Object:  Trigger [dbo].[tU_Рабочее_м_Компьюте]    Script Date: 10.05.2017 21:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tU_Рабочее_м_Компьюте] on [dbo].[Workplace_to_Computer] for UPDATE as
/* ERwin Builtin Thu Mar 23 12:45:10 2017 */
/* UPDATE trigger on Рабочее_м_Компьюте */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insComputer_ID int, 
           @insWorkplace_ID int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Компьютер R/22 Рабочее_м_Компьюте ON CHILD UPDATE RESTRICT */
  if
    /* update(Computer_ID) */
    update(Computer_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Компьютер
        where
          /* inserted.Computer_ID = Компьютер.Computer_ID */
          inserted.Computer_ID = Компьютер.Computer_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Рабочее_м_Компьюте because Компьютер does not exist.'
      goto error
    end
  end

  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  /* Рабочее_место R/21 Рабочее_м_Компьюте ON CHILD UPDATE RESTRICT */
  if
    /* update(Workplace_ID) */
    update(Workplace_ID)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,Рабочее_место
        where
          /* inserted.Workplace_ID = Рабочее_место.Workplace_ID */
          inserted.Workplace_ID = Рабочее_место.Workplace_ID
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE Рабочее_м_Компьюте because Рабочее_место does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end

GO
