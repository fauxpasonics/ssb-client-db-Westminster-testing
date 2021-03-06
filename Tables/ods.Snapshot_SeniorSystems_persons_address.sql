CREATE TABLE [ods].[Snapshot_SeniorSystems_persons_address]
(
[SeniorSystems_persons_addressSK] [int] NOT NULL IDENTITY(1, 1),
[EntityNo] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address3] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishAddressLines] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Zip] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishCityStateZip] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HouseholdID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Country] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishCountry] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishPhone] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email1] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishEmail1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SendHouseholdEmail1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email2] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishEmail2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SendHouseholdEmail2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumberType1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumber1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishOtherNumber1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumberType2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumber2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishOtherNumber2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumberType3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumber3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishOtherNumber3] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumberType4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherNumber4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishOtherNumber4] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ActiveFromDate] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ActiveToDate] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InternalAddressCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CompanyName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishCompany] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Occupation] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JobTitle] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Industry] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BillCode] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSendGrades] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPrimaryAddress] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsEmergencyContact] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotPublishEntireAddress] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsAdditionalContact] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasPendingChanges] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPendingRecord] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPendingDelete] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1EntityNo] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1Title] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1FirstName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1MiddleName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1LastName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1Suffix] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1PreferredName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1FullName] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name1Relation] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2EntityNo] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2Title] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2FirstName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2MiddleName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2LastName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2Suffix] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2PreferredName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2FullName] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name2Relation] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ETL_CreatedOn] [datetime] NULL,
[ETL_CreatedBy] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ETL_UpdatedOn] [datetime] NULL,
[ETL_UpdatedBy] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RecordEndDate] [datetime] NULL
)
GO
ALTER TABLE [ods].[Snapshot_SeniorSystems_persons_address] ADD CONSTRAINT [PK__Snapshot__532018AB1003F645] PRIMARY KEY CLUSTERED  ([SeniorSystems_persons_addressSK])
GO
