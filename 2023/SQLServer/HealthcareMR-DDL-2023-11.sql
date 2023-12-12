/****** Object:  TABLE [Interventions]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Interventions](
    [InterventionID] [bigint] IDENTITY(1,1) NOT NULL,
    [AdmitDate] [varchar](10) NULL,
    [AdmitTime] [varchar](12) NULL,
    [DischargeDate] [varchar](10) NULL,
    [DischargeTime] [varchar](12) NULL,
    [AccountID] [bigint] NULL,
    [PersonID] [bigint] NULL,
    [TreatingFacility] [varchar](12) NULL,
    [PlatformAppsID] [varchar](12) NULL,
    [DateCreated] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_clnclinterventions] PRIMARY KEY CLUSTERED
(
[InterventionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [Allergies]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Allergies](
    [AllergiesID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [AllergyCode] [varchar](20) NULL,
    [AllergyDesc] [varchar](100) NULL,
    [LineOrderID] [smallint] NULL,
    [ClinicalDateTime] [varchar](15) NULL,
    [DateReported] [varchar](10) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Allergies] PRIMARY KEY CLUSTERED
(
[AllergiesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

/****** Object:  TABLE [Diagnosis]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Diagnosis](
    [DiagnosisID] [bigint] IDENTITY(1,1) NOT NULL,
    [Diagnosis] [varchar](5) NULL,
    [InterventionID] [bigint] NULL,
    [DiagnosisDate] [varchar](12) NULL,
    [DiagnosisTime] [varchar](20) NULL,
    [ClinicalDateTime] [varchar](15) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Diagnosis] PRIMARY KEY CLUSTERED
(
[DiagnosisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [Genomics]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Genomics](
    [GenomicsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [GenomicsLink] [varchar](65) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Genomics] PRIMARY KEY CLUSTERED
(
[GenomicsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [HeightsWeights]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Vitals](
    [VitalsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [DateReported] [varchar](10) NULL,
    [TimeReported] [varchar](10) NULL,
    [VitalType] [smallint] NULL,
    [Vital1] [nchar](10) NULL,
    [Vital2] [nchar](10) NULL,
    [Vital3] [nchar](10) NULL,
    [VitalNotes] [nchar](500) NULL,
    [StatusID] [smallint] NULL,
    [CreatedDate] [date] NULL,
    CONSTRAINT [PK_Vtals] PRIMARY KEY CLUSTERED
(
[VitalsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [PersonImmunizations]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Immunizations](
    [PersonToImmunizationID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [ImmunizationCode] [varchar](5) NULL,
    [ImmunizationDesc] [varchar](75) NULL,
    [ImmunizationDate] [varchar](12) NULL,
    [ImmunizationTime] [varchar](18) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_PersonImmunizations] PRIMARY KEY CLUSTERED
(
[PersonToImmunizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [Observations]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Observations](
    [ObservationsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionsID] [bigint] NULL,
    [OrderNumberID] [bigint] NULL,
    [ObservationCode] [varchar](60) NULL,
    [ObservationUnit] [varchar](60) NULL,
    [ReferenceRange] [varchar](60) NULL,
    [AbnormalFlags] [varchar](5) NULL,
    [Probability] [varchar](5) NULL,
    [AbnormalTestNature] [varchar](2) NULL,
    [ProducerID] [varchar](60) NULL,
    [ObservationMethod] [varchar](60) NULL,
    [ValueType] [varchar](3) NULL,
    [ObservationDate] [varchar](10) NULL,
    [ObservationTime] [varchar](10) NULL,
    [StatusID] [smallint] NULL,
    [CreatedDate] [date] NULL,
    CONSTRAINT [PK_Observations] PRIMARY KEY CLUSTERED
(
[ObservationsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [Orders]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Orders](
    [OrderNumberID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionsID] [bigint] NULL,
    [FillerOrderNumber] [bigint] NULL,
    [FiillerGroupNumber] [bigint] NULL,
    [OrderControlType] [uniqueidentifier] NULL,
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
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED
(
[OrderNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
CREATE TABLE [Care_Medications](
    [MedicationID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionsID] [bigint] NULL,
    [IncidentDate] [varchar](12) NULL,
    [DrugCode] [varchar](8) NULL,
    [DrugName] [varchar](249) NULL,
    [DrugQuantity] [nvarchar](12) NULL,
    [ScriptDate] [varchar](12) NULL,
    [FilledDate] [varchar](12) NULL,
    [NPI] [varchar](12) NULL,
    [PhysicianName] [varchar](99) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NOT NULL,
    CONSTRAINT [PK_Medications] PRIMARY KEY CLUSTERED
(
[MedicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [Problems]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Problems](
    [PersonProblemID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [ProblemID] [varchar](8) NULL,
    [ProblemDesc] [varchar](50) NULL,
    [ClinicalDateTime] [varchar](15) NULL,
    [CreatedDate] [date] NULL,
    [StatusId] [smallint] NULL,
    CONSTRAINT [PK_Problems] PRIMARY KEY CLUSTERED
(
[PersonProblemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [Procedures]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Procedures](
    [ProceduresID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [ProcedureCode] [varchar](5) NULL,
    [ProcedureDesc] [varchar](99) NULL,
    [ProcedureDate] [varchar](12) NULL,
    [ProcedureTime] [varchar](16) NULL,
    [DateCreated] [date] NULL,
    [StatusId] [smallint] NULL,
    CONSTRAINT [PK_Procedures] PRIMARY KEY CLUSTERED
(
[ProceduresID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  TABLE [Reports]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Care_Reports](
    [ReportsID] [bigint] IDENTITY(1,1) NOT NULL,
    [InterventionID] [bigint] NULL,
    [OrderID] [varchar](20) NULL,
    [InterventionsNotesDetail] [varchar](175) NULL,
    [StatusID] [smallint] NULL,
    [DateCreated] [date] NULL,
    CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED
(
[ReportsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

/****** Object:  Table [persondata].[ExtrnlCommunications]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Person_ExtrnlCommunications](
    [ExtrnlCommunictionID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [CommunicationDateTime] [datetime] NULL,
    [CommunicationType] [smallint] NULL,
    [CommunicationDetails] [varchar](1024) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Communications] PRIMARY KEY CLUSTERED
(
[ExtrnlCommunictionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [ExtrnlDeviceAssociation]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Person_ExtrnlDeviceAssociation](
    [DeviceAssociationID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [DeviceAssociationDateTime] [datetime] NULL,
    [DeviceID] [varchar](50) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_ExtrnlDeviceAssociation] PRIMARY KEY CLUSTERED
(
[DeviceAssociationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [persondata].[Person]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Person](
    [PersonId] [bigint] IDENTITY(1,1) NOT NULL,
    [NameFirst] [varchar](35) NOT NULL,
    [NameMiddle] [varchar](1) NULL,
    [NameLast] [varchar](50) NOT NULL,
    [NameSuffix] [varchar](8) NULL,
    [CompleteName]  AS (([NameLast]+', ')+[NameFirst]) PERSISTED NOT NULL,
    [DLN] [varchar](25) NULL,
    [DLSState] [varchar](2) NULL,
    [SSN] [varchar](12) NULL,
    [DOB] [varchar](14) NULL,
    [TreatmentFacilityID] [varchar](12) NULL,
    [PlatformAppsID] [varchar](12) NULL,
    [UID] [varchar](149) NULL,
    [CreatedDate] [date] NOT NULL,
    [Status] [smallint] NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED
(
[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [persondata].[PersonAccounts]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Person_Accounts](
    [PersonAccountsID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [PatientID] [varchar](20) NULL,
    [AltPatientID] [varchar](20) NULL,
    [AccountNumber] [varchar](30) NULL,
    [CustomAccountNumber] [varchar](50) NULL,
    [EMPI] [varchar](25) NULL,
    [SelfSoveriegnID] [uniqueidentifier] NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_PersonAccount] PRIMARY KEY CLUSTERED
(
[PersonAccountsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [persondata].[PersonAddresses]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Person_Addresses](
    [PersonAddressID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [Address] [varchar](65) NULL,
    [Address2] [varchar](25) NULL,
    [City] [varchar](45) NULL,
    [StateId] [varchar](2) NULL,
    [PostalCode] [varchar](12) NULL,
    [CountryID] [varchar](3) NULL,
    [AddressTypeID] [bigint] NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_PersonAddress] PRIMARY KEY CLUSTERED
(
[PersonAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [persondata].[PersonDemographics]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Person_Demographics](
    [PersonDemographicID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [DemographicInfoTypeID] [smallint] NULL,
    [CodeValue] [varchar](10) NULL,
    [CodeDesc] [varchar](75) NULL,
    [Address] [varchar](50) NULL,
    [City] [varchar](6) NULL,
    [StateID] [varchar](2) NULL,
    [PhoneNumber] [varchar](14) NULL,
    [CustomData] [varchar](25) NULL,
    [CreatedDate] [date] NOT NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_PersonDemographics] PRIMARY KEY CLUSTERED
(
[PersonDemographicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [persondata].[PersonEmployers]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Person_Employers](
    [PersonEmployerId] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NULL,
    [EmployerCode] [varchar](20) NULL,
    [EmployerName] [varchar](50) NULL,
    [EmployerAddress] [varchar](120) NULL,
    [EmployerCityStateZip] [varchar](120) NULL,
    [JobTitle] [varchar](50) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_PersonEmployer] PRIMARY KEY CLUSTERED
(
[PersonEmployerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
CREATE TABLE [Person_Phones](
    [PersonPhoneID] [bigint] IDENTITY(1,1) NOT NULL,
    [PersonID] [bigint] NOT NULL,
    [PhoneTypeID] [smallint] NOT NULL,
    [PhoneNumber] [varchar](12) NOT NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_PersonPhone] PRIMARY KEY CLUSTERED
(
[PersonPhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [Insurances]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_Insurances](
    [InsuranceId] [uniqueidentifier] NOT NULL,
    [InsuranceExternalId] [varchar](10) NULL,
    [InsuranceCompanyName] [varchar](99) NULL,
    [Address] [varchar](60) NULL,
    [Address2] [varchar](25) NULL,
    [City] [varchar](65) NULL,
    [StateId] [varchar](2) NULL,
    [Postalcode] [varchar](10) NULL,
    [PhoneNumber] [varchar](12) NULL,
    [FaxNumber] [varchar](12) NULL,
    [InsCompanyTypeId] [bigint] NULL,
    [CountryId] [varchar](3) NULL,
    [TreatingFacilitiesID] [varchar](12) NULL,
    [PlatformAppID] [varchar](12) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Insurance] PRIMARY KEY CLUSTERED
(
[InsuranceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [InsuranceTypes]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_InsuranceTypes](
    [InsuranceTypeId] [bigint] IDENTITY(1,1) NOT NULL,
    [InsuranceTypeCode] [varchar](10) NULL,
    [InsuranceTypeDesc] [varchar](30) NOT NULL,
    [HealthcareEntitiesID] [bigint] NULL,
    [PlatformAppsID] [smallint] NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_RefInsuranceType] PRIMARY KEY CLUSTERED
(
[InsuranceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

/****** Object:  Table [refdataclinical].[Physician]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Physician](
    [PhysicianId] [uniqueidentifier] NOT NULL,
    [PhysicianExternalId] [varchar](10) NULL,
    [CompleteName]  AS (([NameLast]+', ')+[NameFirst]) PERSISTED,
    [NameFirst] [varchar](45) NULL,
    [NameMiddle] [varchar](45) NULL,
    [NameLast] [varchar](45) NULL,
    [NPI] [varchar](12) NULL,
    [Address] [varchar](60) NULL,
    [Address2] [varchar](25) NULL,
    [City] [varchar](65) NULL,
    [StateId] [varchar](2) NULL,
    [Postalcode] [varchar](10) NULL,
    [PhoneNumber] [varchar](12) NULL,
    [FaxNumber] [varchar](12) NULL,
    [MobileNumber] [varchar](12) NULL,
    [TreatingFacilityID] [varchar](12) NULL,
    [PlatformAppID] [varchar](12) NULL,
    [CountryId] [varchar](3) NULL,
    [DateCreated] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Physician] PRIMARY KEY CLUSTERED
(
[PhysicianId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [refdataclinical].[PhysicianType]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
/****** Object:  Table[Application]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_Application](
    [ApplicationID] [varchar](12) NOT NULL,
    [ApplicationName] [varchar](35) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED
(
[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [refdatagnrl].[CommunicationType]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_CommunicationType](
    [CommunicationTypeID] [smallint] IDENTITY(1,1) NOT NULL,
    [CommunicationTypeDesc] [varchar](50) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_CommunicationType] PRIMARY KEY CLUSTERED
(
[CommunicationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [refdatagnrl].[ConfigurationSettingType]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_Facilities](
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
    [OIDID] [varchar](50) NULL,
    [CreatedDate] [date] NOT NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED
(
[FacilitiesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [refdatagnrl].[FacilityRooms]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
/****** Object:  Table [OIDS]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_OIDS](
    [OIDID] [varchar](50) NOT NULL,
    [OIDDesc] [varchar](499) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_OIDS] PRIMARY KEY CLUSTERED
(
[OIDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [refdatagnrl].[Organization]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_Organization](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
CREATE TABLE [RefData_Statuses](
    [StatusID] [smallint] IDENTITY(1,1) NOT NULL,
    [StatusDescription] [varchar](45) NOT NULL,
    [CreatedDate] [date] NULL,
    CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED
(
[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [USStates]    Script Date: 7/3/2020 10:54:02 PM ******/
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [RefData_USStates](
    [StateID] [varchar](2) NOT NULL,
    [StateDescription] [varchar](65) NOT NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED
(
[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
SET ANSI_NULLS ON
    GO
SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [Terms_TermData](
    [TermID] [bigint] NOT NULL,
    [Identifier] [varchar](20) NULL,
    [TermText] [varchar](199) NULL,
    [TermGroup] [varchar](20) NULL,
    [AlternativeID] [varchar](20) NULL,
    [AlternativeText] [varchar](199) NULL,
    [AlternativeTermGroup] [varchar](20) NULL,
    [CreatedDate] [date] NULL,
    [StatusID] [smallint] NULL,
    CONSTRAINT [PK_Terms] PRIMARY KEY CLUSTERED
(
[TermID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

/****** Object:  Index [IDX_clnclinterventionss]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IDX_clnclinterventionss] ON[Care_Interventions]
(
	[InterventionID] ASC,
	[AdmitDate] ASC,
	[AdmitTime] ASC,
	[DischargeDate] ASC,
	[DischargeTime] ASC,
	[AccountID] ASC,
	[PersonID] ASC,
	[TreatingFacility] ASC,
	[PlatformAppsID] ASC,
	[DateCreated] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Allergies]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Allergies] ON[Care_Allergies]
(
	[AllergiesID] ASC,
	[InterventionID] ASC,
	[AllergyCode] ASC,
	[AllergyDesc] ASC,
	[LineOrderID] ASC,
	[ClinicalDateTime] ASC,
	[DateReported] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Diagnosis]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Diagnosis] ON[Care_Diagnosis]
(
	[DiagnosisID] ASC,
	[Diagnosis] ASC,
	[InterventionID] ASC,
	[DiagnosisDate] ASC,
	[DiagnosisTime] ASC,
	[ClinicalDateTime] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Genomics]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Genomics] ON[Care_Genomics]
(
	[GenomicsID] ASC,
	[InterventionID] ASC,
	[GenomicsLink] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_HeightsWeights]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vitals] ON[Care_Vitals]
(
	[VitalsID] ASC,
	[InterventionID] ASC,
	[DateReported] ASC,
	[TimeReported] ASC,
	[VitalType] ASC,
	[Vital1] ASC,
	[Vital2] ASC,
	[Vital3] ASC,
	[VitalNotes] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_PersonImmunizations]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonImmunizations] ON [Care_Immunizations]
(
	[PersonToImmunizationID] ASC,
	[PersonID] ASC,
	[ImmunizationCode] ASC,
	[ImmunizationDesc] ASC,
	[ImmunizationDate] ASC,
	[ImmunizationTime] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Observations]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Observations] ON[Care_Observations]
(
	[ObservationsID] ASC,
	[InterventionsID] ASC,
	[OrderNumberID] ASC,
	[ObservationCode] ASC,
	[ObservationUnit] ASC,
	[ReferenceRange] ASC,
	[AbnormalFlags] ASC,
	[Probability] ASC,
	[AbnormalTestNature] ASC,
	[ProducerID] ASC,
	[ObservationMethod] ASC,
	[ValueType] ASC,
	[ObservationDate] ASC,
	[ObservationTime] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Orders]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders] ON[Care_Orders]
(
	[OrderNumberID] ASC,
	[InterventionsID] ASC,
	[Confidentiality] ASC,
	[FiillerGroupNumber] ASC,
	[FillerOrderNumber] ASC,
	[OrderControlReason] ASC,
	[OrderControlType] ASC,
	[OrderDate] ASC,
	[OrderEffectiveDate] ASC,
	[OrderingDevice] ASC,
	[OrderingPhysicianID] ASC,
	[OrderStatus] ASC,
	[OrderStatusModifier] ASC,
	[OrderTime] ASC,
	[OrderType] ASC,
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Pharmacy]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Pharmacy] ON[Care_Medications]
(
	[MedicationID] ASC,
	[InterventionsID] ASC,
	[IncidentDate] ASC,
	[DrugCode] ASC,
	[DrugName] ASC,
	[DrugQuantity] ASC,
	[ScriptDate] ASC,
	[FilledDate] ASC,
	[NPI] ASC,
	[PhysicianName] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Problems]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Problems] ON[Care_Problems]
(
	[PersonProblemID] ASC,
	[InterventionID] ASC,
	[ProblemID] ASC,
	[ProblemDesc] ASC,
	[ClinicalDateTime] ASC,
	[CreatedDate] ASC,
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Procedures]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Procedures] ON[Care_Procedures]
(
	[ProceduresID] ASC,
	[InterventionID] ASC,
	[ProcedureCode] ASC,
	[ProcedureDesc] ASC,
	[ProcedureDate] ASC,
	[ProcedureTime] ASC,
	[DateCreated] ASC,
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Reports]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reports] ON[Care_Reports]
(
	[ReportsID] ASC,
	[InterventionID] ASC,
	[OrderID] ASC,
	[InterventionsNotesDetail] ASC,
	[DateCreated] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO

CREATE NONCLUSTERED INDEX [IX_Communications] ON [Person_ExtrnlCommunications]
(
	[ExtrnlCommunictionID] ASC,
	[PersonID] ASC,
	[CommunicationType] ASC,
	[CommunicationDateTime] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_ExtrnlDeviceAssociation]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExtrnlDeviceAssociation] ON [Person_ExtrnlDeviceAssociation]
(
	[DeviceAssociationID] ASC,
	[DeviceAssociationDateTime] ASC,
	[DeviceID] ASC,
	[PersonID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Person]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Person] ON [Person]
(
	[PersonId] ASC,
	[NameFirst] ASC,
	[NameMiddle] ASC,
	[NameLast] ASC,
	[NameSuffix] ASC,
	[DLN] ASC,
	[SSN] ASC,
	[CompleteName] ASC,
	[CreatedDate] ASC,
	[DOB] ASC,
	[Status] ASC,
	[UID] ASC,
	[TreatmentFacilityID] ASC,
	[PlatformAppsID] ASC,
	[DLSState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO

/***** Object:  Index [IX_PersonAccounts]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonAccounts] ON [Person_Accounts]
(
	[PersonAccountsID] ASC,
	[PersonID] ASC,
	[PatientID] ASC,
	[AltPatientID] ASC,
	[AccountNumber] ASC,
	[CustomAccountNumber] ASC,
	[EMPI] ASC,
	[SelfSoveriegnID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_PersonAddresses]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonAddresses] ON [Person_Addresses]
(
	[PersonAddressID] ASC,
	[PersonID] ASC,
	[Address] ASC,
	[Address2] ASC,
	[City] ASC,
	[StateId] ASC,
	[PostalCode] ASC,
	[CountryID] ASC,
	[AddressTypeID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_PersonDemographics]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonDemographics] ON [Person_Demographics]
(
	[PersonDemographicID] ASC,
	[PersonID] ASC,
	[DemographicInfoTypeID] ASC,
	[CodeValue] ASC,
	[CodeDesc] ASC,
	[Address] ASC,
	[City] ASC,
	[StateID] ASC,
	[PhoneNumber] ASC,
	[CustomData] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_PersonEmployers]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonEmployers] ON [Person_Employers]
(
	[PersonEmployerId] ASC,
	[PersonID] ASC,
	[EmployerCode] ASC,
	[EmployerName] ASC,
	[EmployerAddress] ASC,
	[EmployerCityStateZip] ASC,
	[JobTitle] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
CREATE NONCLUSTERED INDEX [IX_Employer] ON [Person_Employers]
(
	[PersonEmployerID] ASC,
	[PersonID] ASC,
	[EmployerCode] ASC,
	[EmployerName] ASC,
	[EmployerAddress] ASC,
	[EmployerCityStateZip] ASC,
	[JobTitle] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Insurance]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Insurance] ON [RefData_Insurances]
(
	[InsuranceId] ASC,
	[InsuranceExternalId] ASC,
	[InsuranceCompanyName] ASC,
	[Address] ASC,
	[Address2] ASC,
	[City] ASC,
	[StateId] ASC,
	[Postalcode] ASC,
	[PhoneNumber] ASC,
	[FaxNumber] ASC,
	[InsCompanyTypeId] ASC,
	[CountryId] ASC,
	[TreatingFacilitiesID] ASC,
	[PlatformAppID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO

CREATE NONCLUSTERED INDEX [IX_InsuranceTypes] ON [RefData_InsuranceTypes]
(
	[InsuranceTypeId] ASC,
	[InsuranceTypeCode] ASC,
	[InsuranceTypeDesc] ASC,
	[HealthcareEntitiesID] ASC,
	[PlatformAppsID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Physician]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Physician] ON [Physician]
(
	[PhysicianId] ASC,
	[PhysicianExternalId] ASC,
	[NameFirst] ASC,
	[NameMiddle] ASC,
	[NameLast] ASC,
	[NPI] ASC,
	[Address] ASC,
	[CountryId] ASC,
	[MobileNumber] ASC,
	[FaxNumber] ASC,
	[PhoneNumber] ASC,
	[Postalcode] ASC,
	[StateId] ASC,
	[City] ASC,
	[Address2] ASC,
	[DateCreated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Application] ON [RefData_Application]
(
	[ApplicationID] ASC,
	[ApplicationName] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CommunicationType] ON [RefData_CommunicationType]
(
	[CommunicationTypeID] ASC,
	[CommunicationTypeDesc] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Facilities] ON [RefData_Facilities]
(
	[FacilitiesID] ASC,
	[FacilitiesName] ASC,
	[Address] ASC,
	[Address2] ASC,
	[City] ASC,
	[State] ASC,
	[PostalCode] ASC,
	[CountryID] ASC,
	[Notes] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[LicenseNumber] ASC,
	[LicensedState] ASC,
	[OIDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_Organization]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Organization] ON [RefData_Organization]
(
	[OrganizationID] ASC,
	[OrganizationName] ASC,
	[Address] ASC,
	[Address2] ASC,
	[City] ASC,
	[State] ASC,
	[PostalCode] ASC,
	[Country] ASC,
	[Notes] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[LicenseNumber] ASC,
	[LicensedState] ASC,
	[OIDID] ASC,
	[IncorporatedState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Status] ON [RefData_Statuses]
(
	[StatusID] ASC,
	[StatusDescription] ASC,
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO
/****** Object:  Index [IX_States]    Script Date: 7/3/2020 10:54:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_States] ON [RefData_USStates]
(
	[StateID] ASC,
	[StateDescription] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CWETerms] ON [Terms_TermData]
(
	[TermID] ASC,
	[Identifier] ASC,
	[TermText] ASC,
	[TermGroup] ASC,
	[AlternativeID] ASC,
	[AlternativeText] ASC,
	[AlternativeTermGroup] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
    GO

ALTER TABLE [Care_Interventions] ADD  CONSTRAINT [DF_clnclinterventions_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
    GO
ALTER TABLE [Care_Interventions] ADD  CONSTRAINT [DF_clnclinterventions_Status]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [Care_Allergies] ADD  CONSTRAINT [DF_Allergies_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [Care_Allergies] ADD  CONSTRAINT [DF_Allergies_Status]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [Care_Diagnosis] ADD  CONSTRAINT [DF_Diagnosis_DiagnosisDateTime]  DEFAULT (getdate()) FOR [ClinicalDateTime]
    GO
ALTER TABLE [Care_Diagnosis] ADD  CONSTRAINT [DF_Diagnosis_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [Care_Diagnosis] ADD  CONSTRAINT [DF_Diagnosis_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [Care_Genomics] ADD  CONSTRAINT [DF_Genomics_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [Care_Genomics] ADD  CONSTRAINT [DF_Genomics_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [Care_Vitals] ADD  CONSTRAINT [DF_Vitals_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [Care_Vitals] ADD  CONSTRAINT [DF_Vitals_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [Care_Observations] ADD  CONSTRAINT [DF_Observations_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [Care_Observations] ADD  CONSTRAINT [DF_Observations_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
ALTER TABLE [Care_Orders] ADD  CONSTRAINT [DF_Orders_StatusID]  DEFAULT ((1)) FOR [StatusID]
    GO
ALTER TABLE [Care_Orders] ADD  CONSTRAINT [DF_Orders_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
    GO
