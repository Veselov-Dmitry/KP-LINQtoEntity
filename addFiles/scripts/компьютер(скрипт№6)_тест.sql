USE [OASU]
GO
/****** Object:  Table [dbo].[Компьютер]    Script Date: 09.05.2017 9:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Компьютер]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Компьютер](
	[Inventory_number] [int] NOT NULL,
	[Computer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Net_Name] [varchar](8) NULL,
 CONSTRAINT [XPKКомпьютер] PRIMARY KEY NONCLUSTERED 
(
	[Computer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Trigger [dbo].[tD_Компьютер]    Script Date: 09.05.2017 9:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Компьютер]'))
EXEC dbo.sp_executesql @statement = N'
create trigger [dbo].[tD_Компьютер] on [dbo].[Компьютер] for DELETE as
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
             @errmsg = ''Cannot DELETE Компьютер because Рабочее_м_Компьюте exists.''
      goto error
    end


    /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
    return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end
' 
GO
/****** Object:  Trigger [dbo].[tU_Компьютер]    Script Date: 09.05.2017 9:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Компьютер]'))
EXEC dbo.sp_executesql @statement = N'
create trigger [dbo].[tU_Компьютер] on [dbo].[Компьютер] for UPDATE as
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
             @errmsg = ''Cannot UPDATE Компьютер because Рабочее_м_Компьюте exists.''
      goto error
    end
  end


  /* ERwin Builtin Thu Mar 23 12:45:10 2017 */
  return
error:
    raiserror (@errno, @errmsg,1)
    rollback transaction
end
' 
GO
