CREATE TABLE [rpt].[DimCustomerBucketing]
(
[SSID] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SourceSystem] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Firstname] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Middlename] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lastname] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailPrimary] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressPrimary] [nvarchar] (928) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PhonePrimary] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSB_CRMSYSTEM_Contact_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RE_Description] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RaisersEdgeCount100] [int] NOT NULL,
[RE_NumInvalidNames] [int] NOT NULL,
[RE_NumValidNames] [int] NOT NULL,
[RE_NumInvalidEmail] [int] NOT NULL,
[RE_NumValidEmail] [int] NOT NULL,
[RE_NumInvalidAddress] [int] NOT NULL,
[RE_NumValidAddress] [int] NOT NULL,
[RE_NumInvalidPhone] [int] NOT NULL,
[RE_NumValidPhone] [int] NOT NULL,
[RaisersEdgeInactiveCount9] [int] NOT NULL,
[RaisersEdgeDeceasedCount101] [int] NOT NULL,
[RaisersEdgeDupeCount1] [int] NOT NULL,
[RaisersEdgeTypeCountIndividual102] [int] NOT NULL,
[RaisersEdgeTypeCountOrganization103] [int] NOT NULL,
[RaisersEdgeDescCountFoundation] [int] NOT NULL,
[RaisersEdgeDescCountRetiredFaculty] [int] NOT NULL,
[RaisersEdgeDescCountPastParent] [int] NOT NULL,
[RaisersEdgeDescCountFormerStaff] [int] NOT NULL,
[RaisersEdgeDescCountFormerTrustee] [int] NOT NULL,
[RaisersEdgeDescCountEmeritusTrustee] [int] NOT NULL,
[RaisersEdgeDescCountCurrentParent] [int] NOT NULL,
[RaisersEdgeDescCountOrganization] [int] NOT NULL,
[RaisersEdgeDescCountFormerGrandparent] [int] NOT NULL,
[RaisersEdgeDescCountPastParentWithdrawl] [int] NOT NULL,
[RaisersEdgeDescCountFaculty] [int] NOT NULL,
[RaisersEdgeDescCountCornerstoneSociety] [int] NOT NULL,
[RaisersEdgeDescCountAlumnus] [int] NOT NULL,
[RaisersEdgeDescCountFriend] [int] NOT NULL,
[RaisersEdgeDescCountGrandparent] [int] NOT NULL,
[RaisersEdgeDescCountRetiredStaff] [int] NOT NULL,
[RaisersEdgeDescCountStudent] [int] NOT NULL,
[RaisersEdgeDescCountPromotionRecord] [int] NOT NULL,
[RaisersEdgeDescCountTrustee] [int] NOT NULL,
[RaisersEdgeDescCountNewParent] [int] NOT NULL,
[RaisersEdgeDescCountStaff] [int] NOT NULL,
[RaisersEdgeDescCountCorporation] [int] NOT NULL,
[RaisersEdgeDescCountFormerFaculty] [int] NOT NULL,
[FinancialEdgeCount130] [int] NOT NULL,
[FE_NumInvalidNames] [int] NOT NULL,
[FE_NumValidNames] [int] NOT NULL,
[FE_NumInvalidEmail] [int] NOT NULL,
[FE_NumValidEmail] [int] NOT NULL,
[FE_NumInvalidAddress] [int] NOT NULL,
[FE_NumValidAddress] [int] NOT NULL,
[FE_NumInvalidPhone] [int] NOT NULL,
[FE_NumValidPhone] [int] NOT NULL,
[FinancialEdgeDupeCount31] [int] NOT NULL,
[FinancialEdgeInactiveCount38] [int] NOT NULL,
[FinancialEdgeBalanceDueCount39] [int] NOT NULL,
[SeniorSystemsCount110] [int] NOT NULL,
[SS_NumInvalidNames] [int] NOT NULL,
[SS_NumValidNames] [int] NOT NULL,
[SS_NumInvalidEmail] [int] NOT NULL,
[SS_NumValidEmail] [int] NOT NULL,
[SS_NumInvalidAddress] [int] NOT NULL,
[SS_NumValidAddress] [int] NOT NULL,
[SS_NumInvalidPhone] [int] NOT NULL,
[SS_NumValidPhone] [int] NOT NULL,
[SeniorSystemsDupeCount11] [int] NOT NULL,
[SeniorSystemsDeceasedCount111] [int] NOT NULL,
[SeniorSystemsParentCount112] [int] NOT NULL,
[SeniorSystemsStudentCount113] [int] NOT NULL,
[SeniorSystemsFacultyCount114] [int] NOT NULL,
[SchoologyCount120] [int] NOT NULL,
[Sch_NumInvalidNames] [int] NOT NULL,
[Sch_NumValidNames] [int] NOT NULL,
[Sch_NumInvalidEmail] [int] NOT NULL,
[Sch_NumValidEmail] [int] NOT NULL,
[Sch_NumInvalidAddress] [int] NOT NULL,
[Sch_NumValidAddress] [int] NOT NULL,
[Sch_NumInvalidPhone] [int] NOT NULL,
[Sch_NumValidPhone] [int] NOT NULL,
[SchoologyDupeCount21] [int] NOT NULL,
[InREOnlyCount41] [int] NOT NULL,
[InSSOnlyCount42] [int] NOT NULL,
[InSchOnlyCount43] [int] NOT NULL,
[InFEOnlyCount44] [int] NOT NULL,
[InREAndSSOnlyCount45] [int] NOT NULL,
[InREAndSchOnlyCount46] [int] NOT NULL,
[InREAndFEOnlyCount47] [int] NOT NULL,
[InREAndSSAndSchOnlyCount48] [int] NOT NULL,
[InREAndFEAndSSOnlyCount49] [int] NOT NULL,
[InREAndFEAndSchOnlyCount141] [int] NOT NULL,
[InSSAndSchOnlyCount142] [int] NOT NULL,
[InSSAndFEOnlyCount143] [int] NOT NULL,
[InSchAndFEOnlyCount144] [int] NOT NULL,
[InSSAndSchAndFEOnlyCount145] [int] NOT NULL,
[InAllFourCount146] [int] NOT NULL
)
GO
