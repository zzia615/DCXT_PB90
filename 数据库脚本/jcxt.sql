/*==============================================================*/
/* Database: dcxt                                               */
/*==============================================================*/
create database dcxt
go

use dcxt
go

/*==============================================================*/
/* Table: cp                                                    */
/*==============================================================*/
create table cp (
   id                   int                  identity,
   mc                   varchar(100)         null,
   ms                   text                 null,
   pym                  varchar(10)          null,
   ydj                  numeric(14,2)        null,
   xdj                  numeric(14,2)        null,
   fl                   varchar(20)          null,
   kw                   varchar(20)          null,
   tjc                  int                  null default 0,
   rxc                  int                  null default 0,
   sj                   int                  null default 0,
   constraint PK_CP primary key (id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'mc')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'mc'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'cp', 'column', 'mc'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ms')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'ms'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'cp', 'column', 'ms'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'pym')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'pym'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ƴ����',
   'user', @CurrentUser, 'table', 'cp', 'column', 'pym'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ydj')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'ydj'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ԭ����',
   'user', @CurrentUser, 'table', 'cp', 'column', 'ydj'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'xdj')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'xdj'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ֵ���',
   'user', @CurrentUser, 'table', 'cp', 'column', 'xdj'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'fl')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'fl'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'cp', 'column', 'fl'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'kw')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'kw'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ��ζ ��/΢��/һ����/����/������',
   'user', @CurrentUser, 'table', 'cp', 'column', 'kw'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'tjc')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'tjc'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��Ƽ� 1�Ƽ� 0���Ƽ�',
   'user', @CurrentUser, 'table', 'cp', 'column', 'tjc'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'rxc')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'rxc'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ����� 1���� 0������',
   'user', @CurrentUser, 'table', 'cp', 'column', 'rxc'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cp')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'sj')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cp', 'column', 'sj'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��ϼ� 1�ϼ� 0�¼�',
   'user', @CurrentUser, 'table', 'cp', 'column', 'sj'
go

/*==============================================================*/
/* Table: cz                                                    */
/*==============================================================*/
create table cz (
   id                   int                  identity,
   wz                   varchar(20)          null,
   mc                   varchar(50)          null,
   zt                   varchar(20)          null default '����',
   ty                   int                  null default 0,
   dcbh                 varchar(20)          null,
   constraint PK_CZ primary key (id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cz')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cz', 'column', 'id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'cz', 'column', 'id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cz')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'wz')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cz', 'column', 'wz'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ͳ�λ�ã���1¥����',
   'user', @CurrentUser, 'table', 'cz', 'column', 'wz'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cz')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'mc')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cz', 'column', 'mc'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'cz', 'column', 'mc'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cz')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'zt')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cz', 'column', 'zt'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬ ����/δ֧��/��֧��',
   'user', @CurrentUser, 'table', 'cz', 'column', 'zt'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('cz')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ty')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'cz', 'column', 'ty'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�ͣ�� 1ͣ�� 0����',
   'user', @CurrentUser, 'table', 'cz', 'column', 'ty'
go

/*==============================================================*/
/* Table: dc                                                    */
/*==============================================================*/
create table dc (
   bh                   varchar(20)          not null,
   jcrs                 int                  null,
   jcrq                 datetime             null,
   czid                 int                  null,
   czmc                 varchar(50)          null,
   zffs                 varchar(30)          null,
   hykh                 varchar(50)          null,
   zje                  numeric(14,2)        null,
   hyyhje               numeric(14,2)        null,
   qtyhje               numeric(14,2)        null,
   jzrq                 datetime             null,
   jzzt                 int                  null,
   constraint PK_DC primary key (bh)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'jcrs')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'jcrs'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ͳ�����',
   'user', @CurrentUser, 'table', 'dc', 'column', 'jcrs'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'jcrq')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'jcrq'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ͳ�����',
   'user', @CurrentUser, 'table', 'dc', 'column', 'jcrq'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'czid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'czid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dc', 'column', 'czid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'czmc')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'czmc'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dc', 'column', 'czmc'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'zffs')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'zffs'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧����ʽ ��Ա��/���п�/֧����/΢��/ApplePay/�ֽ�',
   'user', @CurrentUser, 'table', 'dc', 'column', 'zffs'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'hykh')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'hykh'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ա����',
   'user', @CurrentUser, 'table', 'dc', 'column', 'hykh'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'zje')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'zje'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ܽ��',
   'user', @CurrentUser, 'table', 'dc', 'column', 'zje'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'hyyhje')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'hyyhje'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ա�Żݽ��',
   'user', @CurrentUser, 'table', 'dc', 'column', 'hyyhje'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'qtyhje')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'qtyhje'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����Żݽ��',
   'user', @CurrentUser, 'table', 'dc', 'column', 'qtyhje'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'jzrq')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'jzrq'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dc', 'column', 'jzrq'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dc')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'jzzt')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dc', 'column', 'jzzt'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����״̬ δ����/�ѽ���',
   'user', @CurrentUser, 'table', 'dc', 'column', 'jzzt'
go

/*==============================================================*/
/* Table: dcmx                                                  */
/*==============================================================*/
create table dcmx (
   id                   int                  identity,
   bh                   varchar(20)          null,
   cpid                 int                  null,
   cpmc                 varchar(100)         null,
   sl                   int                  null,
   dj                   numeric(14,2)        null,
   constraint PK_DCMX primary key (id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dcmx')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dcmx')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'bh')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'bh'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ͱ��',
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'bh'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dcmx')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'cpid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'cpid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ƷID',
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'cpid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dcmx')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'cpmc')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'cpmc'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����',
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'cpmc'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dcmx')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'sl')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'sl'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'sl'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('dcmx')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'dj')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'dj'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dcmx', 'column', 'dj'
go

/*==============================================================*/
/* Table: hyk                                                   */
/*==============================================================*/
create table hyk (
   kh                   varchar(50)          not null,
   xm                   varchar(30)          null,
   xb                   varchar(10)          null,
   lxdh                 varchar(20)          null,
   jf                   int                  null,
   ye                   numeric(14,2)        null,
   zx                   int                  null,
   dj                   varchar(20)          null,
   zk                   numeric(14,2)        null,
   constraint PK_HYK primary key (kh)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'xm')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'xm'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'xm'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'xb')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'xb'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ա� ��/Ů',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'xb'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'lxdh')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'lxdh'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ϵ�绰',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'lxdh'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'jf')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'jf'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'jf'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ye')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'ye'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'ye'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'zx')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'zx'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�ע�� 1ע�� 0����',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'zx'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'dj')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'dj'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ա�ȼ�',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'dj'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('hyk')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'zk')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'hyk', 'column', 'zk'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ա�ۿ�',
   'user', @CurrentUser, 'table', 'hyk', 'column', 'zk'
go

alter table cz
   add constraint FK_CZ_REFERENCE_DC foreign key (dcbh)
      references dc (bh)
go

alter table dc
   add constraint FK_DC_REFERENCE_CZ foreign key (czid)
      references cz (id)
go

alter table dc
   add constraint FK_DC_REFERENCE_HYK foreign key (hykh)
      references hyk (kh)
go

alter table dcmx
   add constraint FK_DCMX_REFERENCE_DC foreign key (bh)
      references dc (bh)
go

alter table dcmx
   add constraint FK_DCMX_REFERENCE_CP foreign key (cpid)
      references cp (id)
go
