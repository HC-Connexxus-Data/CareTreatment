/****** Object:  Table [dbo].[Care_Allergies]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Allergies](
    [AllergiesID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [AllergyCode] [varchar](20) NULL,
    [AllergyDesc] [varchar](100) NULL,
    [ClinicalDateTime] [varchar](15) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [FacilitiesID] [varchar](12) NULL,
    CONSTRAINT [PK_Allergies] PRIMARY KEY CLUSTERED
(
[AllergiesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Diagnosis]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Diagnosis](
    [DiagnosisID] [bigint] IDENTITY(1,1) NOT NULL,
    [Diagnosis] [varchar](10) NULL,
    [DiagnosisModifier] [varchar](10) NULL,
    [DiagnosisDateTime] [varchar](20) NULL,
    [InterventionID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [FacilityID] [varchar](12) NULL,
    CONSTRAINT [PK_Diagnosis] PRIMARY KEY CLUSTERED
(
[DiagnosisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Genomics]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Genomics](
    [GenomicsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [GenomicsLink] [varchar](65) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [FacilitiesID] [varchar](12) NULL,
    CONSTRAINT [PK_Genomics] PRIMARY KEY CLUSTERED
(
[GenomicsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Immunizations]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Immunizations](
    [ImmunizationID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [ImmunizationCode] [varchar](5) NULL,
    [ImmunizationDesc] [varchar](75) NULL,
    [ImmunizationDateTime] [varchar](20) NULL,
    [ImmunizationType] [varchar](25) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [FacilitiesID] [varchar](12) NULL,
    CONSTRAINT [PK_PersonImmunizations] PRIMARY KEY CLUSTERED
(
[ImmunizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Interventions]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Interventions](
    [InterventionID] [bigint] IDENTITY(1,1) NOT NULL,
    [AdmitDateTime] [varchar](20) NULL,
    [DischargeDateTime] [varchar](20) NULL,
    [PersonID] [bigint] NULL,
    [FacilitiesID] [varchar](12) NULL,
    [ApplicationID] [varchar](12) NULL,
    [DateCreated] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_clnclinterventions] PRIMARY KEY CLUSTERED
(
[InterventionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Medications]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Medications](
    [MedicationID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionsID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [IncidentDateTime] [varchar](20) NULL,
    [DrugCode] [varchar](8) NULL,
    [DrugName] [varchar](249) NULL,
    [DrugQuantity] [nvarchar](12) NULL,
    [ScriptDateTime] [varchar](20) NULL,
    [NPI] [varchar](12) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NOT NULL,
    [FacilitiesID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_Medications] PRIMARY KEY CLUSTERED
(
[MedicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Observations]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Observations](
    [ObservationsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionsID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [OrderNumberID] [varchar](25) NULL,
    [ObservationCode] [varchar](60) NULL,
    [ObservationUnit] [varchar](60) NULL,
    [ReferenceRange] [varchar](60) NULL,
    [AbnormalFlags] [varchar](5) NULL,
    [Probability] [varchar](5) NULL,
    [AbnormalTestNature] [varchar](2) NULL,
    [ProducerID] [varchar](60) NULL,
    [ObservationMethod] [varchar](60) NULL,
    [ValueType] [varchar](3) NULL,
    [ObservationDateTime] [varchar](20) NULL,
    [StatusID] [smallint] NULL,
    [CreatedDate] [date] NULL,
    [OrganizationID] [varchar](12) NULL,
    [FacilitiesID] [varchar](12) NULL,
    CONSTRAINT [PK_Observations] PRIMARY KEY CLUSTERED
(
[ObservationsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Orders]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Orders](
    [OrderNumberID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionsID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [FillerOrderNumber] [varchar](20) NULL,
    [FiillerGroupNumber] [varchar](20) NULL,
    [OrderControlType] [varchar](25) NULL,
    [OrderingPhysicianID] [varchar](10) NULL,
    [OrderEffectiveDate] [varchar](10) NULL,
    [OrderControlReason] [varchar](20) NULL,
    [OrderStatusModifier] [varchar](20) NULL,
    [Confidentiality] [varchar](20) NULL,
    [OrderType] [varchar](20) NULL,
    [OrderingDevice] [varchar](20) NULL,
    [OrderDate] [varchar](10) NULL,
    [OrderTime] [varchar](10) NULL,
    [OrderStatus] [varchar](10) NULL,
    [StatusID] [smallint] NULL,
    [CreatedDate] [date] NULL,
    [FacilitiesID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED
(
[OrderNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Problems]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Problems](
    [PersonProblemID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [ProblemCode] [varchar](8) NULL,
    [ProblemDesc] [varchar](50) NULL,
    [ClinicalDateTime] [varchar](20) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [OrganizationID] [varchar](12) NULL,
    [FacilitiesID] [varchar](12) NULL,
    CONSTRAINT [PK_Problems] PRIMARY KEY CLUSTERED
(
[PersonProblemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Procedures]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Procedures](
    [ProceduresID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [ProcedureCode] [varchar](10) NULL,
    [ProcedureModifierCode] [varchar](10) NULL,
    [ProcedureDesc] [varchar](99) NULL,
    [ProcedureCodeDateTime] [varchar](20) NULL,
    [ProcedureCodeType] [varchar](20) NULL,
    [DateCreated] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_Procedures] PRIMARY KEY CLUSTERED
(
[ProceduresID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Providers]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Providers](
    [ProviderID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionsID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [PhysicianExternalID] [varchar](15) NULL,
    [CompleteName]  AS (([NameLast]+', ')+[NameFirst]) PERSISTED,
    [NameFirst] [varchar](45) NULL,
    [NameMiddle] [varchar](45) NULL,
    [NameLast] [varchar](45) NULL,
    [NPI] [varchar](12) NULL,
    [Address] [varchar](60) NULL,
    [Address2] [varchar](25) NULL,
    [City] [varchar](65) NULL,
    [StateID] [varchar](2) NULL,
    [PostalCode] [varchar](10) NULL,
    [PhoneNumber] [varchar](12) NULL,
    [FaxNumber] [varchar](12) NULL,
    [MobileNumber] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    [PlatformAppID] [varchar](12) NULL,
    [Specialty] [varchar](50) NULL,
    [DateCreated] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Physician] PRIMARY KEY CLUSTERED
(
[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Reports]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Reports](
    [ReportsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [ReportLink] [varchar](99) NULL,
    [ReportDateTime] [varchar](20) NULL,
    [DateCreated] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED
(
[ReportsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Care_Vitals]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Care_Vitals](
    [VitalsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [DateTimeReported] [varchar](20) NULL,
    [VitalType] [varchar](20) NULL,
    [Vital] [varchar](20) NULL,
    [VitalNotes] [nchar](500) NULL,
    [StatusID] [smallint] NULL,
    [CreatedDate] [date] NULL,
    [ApplicationID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_Vtals] PRIMARY KEY CLUSTERED
(
[VitalsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Person](
    [PersonID] [bigint] IDENTITY(1,1) NOT NULL,
    [NameFirst] [varchar](35) NOT NULL,
    [NameMiddle] [varchar](1) NULL,
    [NameLast] [varchar](50) NOT NULL,
    [NameSuffix] [varchar](8) NULL,
    [CompleteName]  AS (([NameLast]+', ')+[NameFirst]) PERSISTED NOT NULL,
    [DLN] [varchar](25) NULL,
    [DLNState] [varchar](2) NULL,
    [SSN] [varchar](12) NULL,
    [DOB] [varchar](14) NULL,
    [OrganizationID] [varchar](12) NULL,
    [ApplicationID] [varchar](12) NULL,
    [UID] [varchar](149) NULL,
    [CreatedDate] [date] NOT NULL,
    [Status] [smallint] NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED
(
[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Person_Accounts]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Person_Accounts](
    [PersonAccountsID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [PatientID] [varchar](20) NULL,
    [AltPatientID] [varchar](20) NULL,
    [AccountNumber] [varchar](30) NULL,
    [CustomAccountNumber] [varchar](50) NULL,
    [EMPI] [varchar](25) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [OrganizationID] [varchar](12) NULL,
    [ApplicationID] [varchar](12) NULL,
    CONSTRAINT [PK_PersonAccount] PRIMARY KEY CLUSTERED
(
[PersonAccountsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Person_Addresses]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Person_Addresses](
    [PersonAddressID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [Address] [varchar](65) NULL,
    [Address2] [varchar](25) NULL,
    [City] [varchar](45) NULL,
    [StateID] [varchar](2) NULL,
    [PostalCode] [varchar](12) NULL,
    [CountryID] [varchar](3) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_PersonAddress] PRIMARY KEY CLUSTERED
(
[PersonAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Person_Demographics]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Person_Demographics](
    [PersonDemographicID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [DemographicInfoTypeID] [varchar](20) NULL,
    [CodeValue] [varchar](10) NULL,
    [CodeDesc] [varchar](75) NULL,
    [Address] [varchar](50) NULL,
    [City] [varchar](6) NULL,
    [StateID] [varchar](2) NULL,
    [PhoneNumber] [varchar](14) NULL,
    [CustomData] [varchar](25) NULL,
    [CreatedDate] [date] NOT NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_PersonDemographics] PRIMARY KEY CLUSTERED
(
[PersonDemographicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Person_Employers]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Person_Employers](
    [PersonEmployerID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [EmployerCode] [varchar](20) NULL,
    [EmployerName] [varchar](50) NULL,
    [EmployerAddress] [varchar](120) NULL,
    [EmployerCityStateZip] [varchar](120) NULL,
    [JobTitle] [varchar](50) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_PersonEmployer] PRIMARY KEY CLUSTERED
(
[PersonEmployerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Person_ExtrnlCommunications]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Person_ExtrnlCommunications](
    [CommunictionID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [CommunicationDateTime] [datetime] NULL,
    [CommunicationType] [varchar](20) NULL,
    [CommunicationDetails] [varchar](50) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_Communications] PRIMARY KEY CLUSTERED
(
[CommunictionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Person_ExtrnlDeviceAssociation]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Person_ExtrnlDeviceAssociation](
    [DeviceAssociationID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [DeviceAssociationDateTime] [datetime] NULL,
    [DeviceID] [varchar](50) NULL,
    [DeviceDetails] [varchar](75) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    [ApplicationID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    CONSTRAINT [PK_ExtrnlDeviceAssociation] PRIMARY KEY CLUSTERED
(
[DeviceAssociationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[RefData_Application]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[RefData_Application](
    [ApplicationID] [varchar](12) NOT NULL,
    [ApplicationName] [varchar](35) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED
(
[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[RefData_Facilities]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[RefData_Facilities](
    [FacilitiesID] [varchar](12) NOT NULL,
    [FacilitiesName] [varchar](25) NULL,
    [Address] [varchar](60) NULL,
    [Address2] [varchar](25) NULL,
    [City] [varchar](40) NULL,
    [State] [varchar](2) NULL,
    [CountryID] [varchar](3) NULL,
    [PostalCode] [varchar](12) NOT NULL,
    [Notes] [varchar](256) NULL,
    [LicenseNumber] [varchar](20) NULL,
    [LicenseType] [varchar](20) NULL,
    [LicensedState] [varchar](2) NULL,
    [OID] [varchar](50) NULL,
    [CreatedDate] [date] NOT NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED
(
[FacilitiesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[RefData_OIDS]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[RefData_OIDS](
    [OIDID] [varchar](50) NOT NULL,
    [OIDDesc] [varchar](499) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_OIDS] PRIMARY KEY CLUSTERED
(
[OIDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[RefData_Organization]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[RefData_Organization](
    [OrganizationID] [varchar](12) NOT NULL,
    [OrganizationName] [varchar](25) NULL,
    [Address] [varchar](60) NULL,
    [Address2] [varchar](25) NULL,
    [City] [varchar](40) NULL,
    [State] [varchar](2) NULL,
    [Country] [varchar](3) NULL,
    [PostalCode] [varchar](12) NOT NULL,
    [Notes] [varchar](256) NULL,
    [LicenseNumber] [varchar](20) NULL,
    [LicenseType] [varchar](20) NULL,
    [LicensedState] [varchar](2) NULL,
    [IncorporatedState] [varchar](2) NULL,
    [OIDID] [varchar](50) NULL,
    [CreatedDate] [date] NOT NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED
(
[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[RefData_Status]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[RefData_Status](
    [StatusID] [smallint] IDENTITY(1,1) NOT NULL,
    [StatusDescription] [varchar](45) NOT NULL,
    [CreatedDate] [date] NULL,
    CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED
(
[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[RefData_USStates]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[RefData_USStates](
    [StateID] [varchar](2) NOT NULL,
    [StateDescription] [varchar](65) NOT NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED
(
[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Terms_TermData]    Script Date: 12/12/2023 3:11:21 AM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Terms_TermData](
    [TermID] [bigint] IDENTITY(1,1) NOT NULL,
    [CodeIdentifier] [varchar](20) NULL,
    [TermText] [varchar](199) NULL,
    [TermGroup] [varchar](20) NULL,
    [AlternativeID] [varchar](20) NULL,
    [AlternativeText] [varchar](199) NULL,
    [AlternativeTermGroup] [varchar](20) NULL,
    [FacilitiesID] [varchar](12) NULL,
    [OrganizationID] [varchar](12) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Terms] PRIMARY KEY CLUSTERED
(
[TermID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
ALTER TABLE [dbo].[Care_Allergies] ADD  CONSTRAINT [DF_Allergies_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Allergies] ADD  CONSTRAINT [DF_Allergies_Status]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Diagnosis] ADD  CONSTRAINT [DF_Diagnosis_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Diagnosis] ADD  CONSTRAINT [DF_Diagnosis_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Genomics] ADD  CONSTRAINT [DF_Genomics_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Genomics] ADD  CONSTRAINT [DF_Genomics_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Immunizations] ADD  CONSTRAINT [DF_Care_Immunizations_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Immunizations] ADD  CONSTRAINT [DF_Care_Immunizations_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Interventions] ADD  CONSTRAINT [DF_clnclinterventions_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
    GO
ALTER TABLE [dbo].[Care_Interventions] ADD  CONSTRAINT [DF_clnclinterventions_Status]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Medications] ADD  CONSTRAINT [DF_Care_Medications_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Medications] ADD  CONSTRAINT [DF_Care_Medications_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Observations] ADD  CONSTRAINT [DF_Observations_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Observations] ADD  CONSTRAINT [DF_Observations_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Orders] ADD  CONSTRAINT [DF_Orders_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Orders] ADD  CONSTRAINT [DF_Orders_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Problems] ADD  CONSTRAINT [DF_Care_Problems_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Care_Problems] ADD  CONSTRAINT [DF_Care_Problems_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Procedures] ADD  CONSTRAINT [DF_Care_Procedures_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
    GO
ALTER TABLE [dbo].[Care_Procedures] ADD  CONSTRAINT [DF_Care_Procedures_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Providers] ADD  CONSTRAINT [DF_Physician_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
    GO
ALTER TABLE [dbo].[Care_Providers] ADD  CONSTRAINT [DF_Physician_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Reports] ADD  CONSTRAINT [DF_Care_Reports_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
    GO
ALTER TABLE [dbo].[Care_Reports] ADD  CONSTRAINT [DF_Care_Reports_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Vitals] ADD  CONSTRAINT [DF_Vitals_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Care_Vitals] ADD  CONSTRAINT [DF_Vitals_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF_Person_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF_Person_Status]  DEFAULT ((1)) FOR [Status]
    GO
ALTER TABLE [dbo].[Person_Accounts] ADD  CONSTRAINT [DF_Person_Accounts_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person_Accounts] ADD  CONSTRAINT [DF_Person_Accounts_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Person_Addresses] ADD  CONSTRAINT [DF_Person_Addresses_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person_Addresses] ADD  CONSTRAINT [DF_Person_Addresses_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Person_Demographics] ADD  CONSTRAINT [DF_Person_Demographics_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person_Demographics] ADD  CONSTRAINT [DF_Person_Demographics_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Person_Employers] ADD  CONSTRAINT [DF_Person_Employers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person_Employers] ADD  CONSTRAINT [DF_Person_Employers_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Person_ExtrnlCommunications] ADD  CONSTRAINT [DF_Person_ExtrnlCommunications_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person_ExtrnlCommunications] ADD  CONSTRAINT [DF_Person_ExtrnlCommunications_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Person_ExtrnlDeviceAssociation] ADD  CONSTRAINT [DF_Person_ExtrnlDeviceAssociation_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Person_ExtrnlDeviceAssociation] ADD  CONSTRAINT [DF_Person_ExtrnlDeviceAssociation_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[RefData_Application] ADD  CONSTRAINT [DF_RefData_Application_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[RefData_Application] ADD  CONSTRAINT [DF_RefData_Application_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[RefData_Facilities] ADD  CONSTRAINT [DF_RefData_Facilities_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[RefData_Facilities] ADD  CONSTRAINT [DF_RefData_Facilities_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[RefData_OIDS] ADD  CONSTRAINT [DF_RefData_OIDS_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[RefData_OIDS] ADD  CONSTRAINT [DF_RefData_OIDS_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[RefData_Organization] ADD  CONSTRAINT [DF_RefData_Organization_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[RefData_Organization] ADD  CONSTRAINT [DF_RefData_Organization_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[RefData_Status] ADD  CONSTRAINT [DF_RefData_Status_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[RefData_USStates] ADD  CONSTRAINT [DF_RefData_USStates_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[RefData_USStates] ADD  CONSTRAINT [DF_RefData_USStates_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [dbo].[Terms_TermData] ADD  CONSTRAINT [DF_Terms_TermData_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [dbo].[Terms_TermData] ADD  CONSTRAINT [DF_Terms_TermData_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
