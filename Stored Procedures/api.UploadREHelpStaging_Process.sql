SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [api].[UploadREHelpStaging_Process]  
    @DataTable dbo.[UploadREHelpStaging_Type] READONLY  
AS  
BEGIN  
  
	DECLARE @finalXml  XML  
  
	BEGIN TRY  

		--UPDATE stg
		--SET IsDeleted = 1
		--FROM api.UploadTestFileStaging stg
		--INNER JOIN @DataTable dt
		--	ON  stg.Email = dt.Email
  
		DECLARE @recordCount INT  
		SELECT @recordCount = COUNT(*)  
			FROM @DataTable  
			  
		INSERT INTO ods.Blackbaud_REHelp
		(SessionId
, [Bio_ID] 
, [CnVolTy_1_01_Status] 
, [CnVolTy_1_01_Volunteer_Type] 
, [CnVolTy_1_01_Start_Date] 
, [CnVolTy_1_01_End_Date] 
, [CnVolTy_1_01_Reason_Finished] 
, [CnVolTy_1_02_Status] 
, [CnVolTy_1_02_Volunteer_Type] 
, [CnVolTy_1_02_Start_Date] 
, [CnVolTy_1_02_End_Date] 
, [CnVolTy_1_02_Reason_Finished] 
, [CnVolTy_1_03_Status] 
, [CnVolTy_1_03_Volunteer_Type] 
, [CnVolTy_1_03_Start_Date] 
, [CnVolTy_1_03_End_Date] 
, [CnVolTy_1_03_Reason_Finished] 
, [CnVolTy_1_04_Status] 
, [CnVolTy_1_04_Volunteer_Type] 
, [CnVolTy_1_04_Start_Date] 
, [CnVolTy_1_04_End_Date] 
, [CnVolTy_1_04_Reason_Finished] 
, [CnVolTy_1_05_Status] 
, [CnVolTy_1_05_Volunteer_Type] 
, [CnVolTy_1_05_Start_Date] 
, [CnVolTy_1_05_End_Date] 
, [CnVolTy_1_05_Reason_Finished] 
, [CnVolTy_1_06_Status] 
, [CnVolTy_1_06_Volunteer_Type] 
, [CnVolTy_1_06_Start_Date] 
, [CnVolTy_1_06_End_Date] 
, [CnVolTy_1_06_Reason_Finished] 
, [CnVolTy_1_07_Status] 
, [CnVolTy_1_07_Volunteer_Type] 
, [CnVolTy_1_07_Start_Date] 
, [CnVolTy_1_07_End_Date] 
, [CnVolTy_1_07_Reason_Finished] 
, [CnVolTy_1_08_Status] 
, [CnVolTy_1_08_Volunteer_Type] 
, [CnVolTy_1_08_Start_Date] 
, [CnVolTy_1_08_End_Date] 
, [CnVolTy_1_08_Reason_Finished] 
, [CnVolTy_1_09_Status] 
, [CnVolTy_1_09_Volunteer_Type] 
, [CnVolTy_1_09_Start_Date] 
, [CnVolTy_1_09_End_Date] 
, [CnVolTy_1_09_Reason_Finished] 
, [CnVolTy_1_10_Status] 
, [CnVolTy_1_10_Volunteer_Type] 
, [CnVolTy_1_10_Start_Date] 
, [CnVolTy_1_10_End_Date] 
, [CnVolTy_1_10_Reason_Finished] 
, [CnVolTy_1_11_Status] 
, [CnVolTy_1_11_Volunteer_Type] 
, [CnVolTy_1_11_Start_Date] 
, [CnVolTy_1_11_End_Date] 
, [CnVolTy_1_11_Reason_Finished] 
, [CnVolTy_1_12_Status] 
, [CnVolTy_1_12_Volunteer_Type] 
, [CnVolTy_1_12_Start_Date] 
, [CnVolTy_1_12_End_Date] 
, [CnVolTy_1_12_Reason_Finished] 
, [CnVolTy_1_13_Status] 
, [CnVolTy_1_13_Volunteer_Type] 
, [CnVolTy_1_13_Start_Date] 
, [CnVolTy_1_13_End_Date] 
, [CnVolTy_1_13_Reason_Finished] 
, [CnVolTy_1_14_Status] 
, [CnVolTy_1_14_Volunteer_Type] 
, [CnVolTy_1_14_Start_Date] 
, [CnVolTy_1_14_End_Date] 
, [CnVolTy_1_14_Reason_Finished] 
, [CnVolTy_1_15_Status] 
, [CnVolTy_1_15_Volunteer_Type] 
, [CnVolTy_1_15_Start_Date] 
, [CnVolTy_1_15_End_Date] 
, [CnVolTy_1_15_Reason_Finished] 
, [CnVolTy_1_16_Status] 
, [CnVolTy_1_16_Volunteer_Type] 
, [CnVolTy_1_16_Start_Date] 
, [CnVolTy_1_16_End_Date] 
, [CnVolTy_1_16_Reason_Finished] 
, [CnVolTy_1_17_Status] 
, [CnVolTy_1_17_Volunteer_Type] 
, [CnVolTy_1_17_Start_Date] 
, [CnVolTy_1_17_End_Date] 
, [CnVolTy_1_17_Reason_Finished] 
, [CnVolTy_1_18_Status] 
, [CnVolTy_1_18_Volunteer_Type] 
, [CnVolTy_1_18_Start_Date] 
, [CnVolTy_1_18_End_Date] 
, [CnVolTy_1_18_Reason_Finished] 
, [CnVolTy_1_19_Status] 
, [CnVolTy_1_19_Volunteer_Type] 
, [CnVolTy_1_19_Start_Date] 
, [CnVolTy_1_19_End_Date] 
, [CnVolTy_1_19_Reason_Finished] 
, [CnVolTy_1_20_Status] 
, [CnVolTy_1_20_Volunteer_Type] 
, [CnVolTy_1_20_Start_Date] 
, [CnVolTy_1_20_End_Date] 
, [CnVolTy_1_20_Reason_Finished] 
, [CnVolTy_1_21_Status] 
, [CnVolTy_1_21_Volunteer_Type] 
, [CnVolTy_1_21_Start_Date] 
, [CnVolTy_1_21_End_Date] 
, [CnVolTy_1_21_Reason_Finished] 
, [CnVolTy_1_22_Status] 
, [CnVolTy_1_22_Volunteer_Type] 
, [CnVolTy_1_22_Start_Date] 
, [CnVolTy_1_22_End_Date] 
, [CnVolTy_1_22_Reason_Finished] 
, [CnVolTy_1_23_Status] 
, [CnVolTy_1_23_Volunteer_Type] 
, [CnVolTy_1_23_Start_Date] 
, [CnVolTy_1_23_End_Date] 
, [CnVolTy_1_23_Reason_Finished] 
, [CnVolTy_1_24_Status] 
, [CnVolTy_1_24_Volunteer_Type] 
, [CnVolTy_1_24_Start_Date] 
, [CnVolTy_1_24_End_Date] 
, [CnVolTy_1_24_Reason_Finished] 
, [CnVolTy_1_25_Status] 
, [CnVolTy_1_25_Volunteer_Type] 
, [CnVolTy_1_25_Start_Date] 
, [CnVolTy_1_25_End_Date] 
, [CnVolTy_1_25_Reason_Finished] 
, [CnVolTy_1_26_Status] 
, [CnVolTy_1_26_Volunteer_Type] 
, [CnVolTy_1_26_Start_Date] 
, [CnVolTy_1_26_End_Date] 
, [CnVolTy_1_26_Reason_Finished] 
, [CnVolTy_1_27_Status] 
, [CnVolTy_1_27_Volunteer_Type] 
, [CnVolTy_1_27_Start_Date] 
, [CnVolTy_1_27_End_Date] 
, [CnVolTy_1_27_Reason_Finished] 
, [CnVolTy_1_28_Status] 
, [CnVolTy_1_28_Volunteer_Type] 
, [CnVolTy_1_28_Start_Date] 
, [CnVolTy_1_28_End_Date] 
, [CnVolTy_1_28_Reason_Finished] 
, [CnVolTy_1_29_Status] 
, [CnVolTy_1_29_Volunteer_Type] 
, [CnVolTy_1_29_Start_Date] 
, [CnVolTy_1_29_End_Date] 
, [CnVolTy_1_29_Reason_Finished] 
, [CnVolTy_1_30_Status] 
, [CnVolTy_1_30_Volunteer_Type] 
, [CnVolTy_1_30_Start_Date] 
, [CnVolTy_1_30_End_Date] 
, [CnVolTy_1_30_Reason_Finished] 
, [CnVolTy_1_31_Status] 
, [CnVolTy_1_31_Volunteer_Type] 
, [CnVolTy_1_31_Start_Date] 
, [CnVolTy_1_31_End_Date] 
, [CnVolTy_1_31_Reason_Finished] 
, [CnVolTy_1_32_Status] 
, [CnVolTy_1_32_Volunteer_Type] 
, [CnVolTy_1_32_Start_Date] 
, [CnVolTy_1_32_End_Date] 
, [CnVolTy_1_32_Reason_Finished] 
, [CnVolTy_1_33_Status] 
, [CnVolTy_1_33_Volunteer_Type] 
, [CnVolTy_1_33_Start_Date] 
, [CnVolTy_1_33_End_Date] 
, [CnVolTy_1_33_Reason_Finished] 
, [CnVolTy_1_34_Status] 
, [CnVolTy_1_34_Volunteer_Type] 
, [CnVolTy_1_34_Start_Date] 
, [CnVolTy_1_34_End_Date] 
, [CnVolTy_1_34_Reason_Finished] 
, [CnVolTy_1_35_Status] 
, [CnVolTy_1_35_Volunteer_Type] 
, [CnVolTy_1_35_Start_Date] 
, [CnVolTy_1_35_End_Date] 
, [CnVolTy_1_35_Reason_Finished] 
, [CnVolTy_1_36_Status] 
, [CnVolTy_1_36_Volunteer_Type] 
, [CnVolTy_1_36_Start_Date] 
, [CnVolTy_1_36_End_Date] 
, [CnVolTy_1_36_Reason_Finished] 
, [CnVolTy_1_37_Status] 
, [CnVolTy_1_37_Volunteer_Type] 
, [CnVolTy_1_37_Start_Date] 
, [CnVolTy_1_37_End_Date] 
, [CnVolTy_1_37_Reason_Finished] 
, [CnVolTy_1_38_Status] 
, [CnVolTy_1_38_Volunteer_Type] 
, [CnVolTy_1_38_Start_Date] 
, [CnVolTy_1_38_End_Date] 
, [CnVolTy_1_38_Reason_Finished] 
, [CnVolTy_1_39_Status] 
, [CnVolTy_1_39_Volunteer_Type] 
, [CnVolTy_1_39_Start_Date] 
, [CnVolTy_1_39_End_Date] 
, [CnVolTy_1_39_Reason_Finished] 
, [CnVolTy_1_40_Status] 
, [CnVolTy_1_40_Volunteer_Type] 
, [CnVolTy_1_40_Start_Date] 
, [CnVolTy_1_40_End_Date] 
, [CnVolTy_1_40_Reason_Finished] 
, [CnVolTy_1_41_Status] 
, [CnVolTy_1_41_Volunteer_Type] 
, [CnVolTy_1_41_Start_Date] 
, [CnVolTy_1_41_End_Date] 
, [CnVolTy_1_41_Reason_Finished] 
, [CnVolTy_1_42_Status] 
, [CnVolTy_1_42_Volunteer_Type] 
, [CnVolTy_1_42_Start_Date] 
, [CnVolTy_1_42_End_Date] 
, [CnVolTy_1_42_Reason_Finished] 
, [CnVolTy_1_43_Status] 
, [CnVolTy_1_43_Volunteer_Type] 
, [CnVolTy_1_43_Start_Date] 
, [CnVolTy_1_43_End_Date] 
, [CnVolTy_1_43_Reason_Finished] 
, [CnVolTy_1_44_Status] 
, [CnVolTy_1_44_Volunteer_Type] 
, [CnVolTy_1_44_Start_Date] 
, [CnVolTy_1_44_End_Date] 
, [CnVolTy_1_44_Reason_Finished] 
, [CnVolTy_1_45_Status] 
, [CnVolTy_1_45_Volunteer_Type] 
, [CnVolTy_1_45_Start_Date] 
, [CnVolTy_1_45_End_Date] 
, [CnVolTy_1_45_Reason_Finished] 
)
		SELECT 		SessionId
		
, [Bio ID] 
, [CnVolTy_1_01_Status] 
, [CnVolTy_1_01_Volunteer_Type] 
, [CnVolTy_1_01_Start_Date] 
, [CnVolTy_1_01_End_Date] 
, [CnVolTy_1_01_Reason_Finished] 
, [CnVolTy_1_02_Status] 
, [CnVolTy_1_02_Volunteer_Type] 
, [CnVolTy_1_02_Start_Date] 
, [CnVolTy_1_02_End_Date] 
, [CnVolTy_1_02_Reason_Finished] 
, [CnVolTy_1_03_Status] 
, [CnVolTy_1_03_Volunteer_Type] 
, [CnVolTy_1_03_Start_Date] 
, [CnVolTy_1_03_End_Date] 
, [CnVolTy_1_03_Reason_Finished] 
, [CnVolTy_1_04_Status] 
, [CnVolTy_1_04_Volunteer_Type] 
, [CnVolTy_1_04_Start_Date] 
, [CnVolTy_1_04_End_Date] 
, [CnVolTy_1_04_Reason_Finished] 
, [CnVolTy_1_05_Status] 
, [CnVolTy_1_05_Volunteer_Type] 
, [CnVolTy_1_05_Start_Date] 
, [CnVolTy_1_05_End_Date] 
, [CnVolTy_1_05_Reason_Finished] 
, [CnVolTy_1_06_Status] 
, [CnVolTy_1_06_Volunteer_Type] 
, [CnVolTy_1_06_Start_Date] 
, [CnVolTy_1_06_End_Date] 
, [CnVolTy_1_06_Reason_Finished] 
, [CnVolTy_1_07_Status] 
, [CnVolTy_1_07_Volunteer_Type] 
, [CnVolTy_1_07_Start_Date] 
, [CnVolTy_1_07_End_Date] 
, [CnVolTy_1_07_Reason_Finished] 
, [CnVolTy_1_08_Status] 
, [CnVolTy_1_08_Volunteer_Type] 
, [CnVolTy_1_08_Start_Date] 
, [CnVolTy_1_08_End_Date] 
, [CnVolTy_1_08_Reason_Finished] 
, [CnVolTy_1_09_Status] 
, [CnVolTy_1_09_Volunteer_Type] 
, [CnVolTy_1_09_Start_Date] 
, [CnVolTy_1_09_End_Date] 
, [CnVolTy_1_09_Reason_Finished] 
, [CnVolTy_1_10_Status] 
, [CnVolTy_1_10_Volunteer_Type] 
, [CnVolTy_1_10_Start_Date] 
, [CnVolTy_1_10_End_Date] 
, [CnVolTy_1_10_Reason_Finished] 
, [CnVolTy_1_11_Status] 
, [CnVolTy_1_11_Volunteer_Type] 
, [CnVolTy_1_11_Start_Date] 
, [CnVolTy_1_11_End_Date] 
, [CnVolTy_1_11_Reason_Finished] 
, [CnVolTy_1_12_Status] 
, [CnVolTy_1_12_Volunteer_Type] 
, [CnVolTy_1_12_Start_Date] 
, [CnVolTy_1_12_End_Date] 
, [CnVolTy_1_12_Reason_Finished] 
, [CnVolTy_1_13_Status] 
, [CnVolTy_1_13_Volunteer_Type] 
, [CnVolTy_1_13_Start_Date] 
, [CnVolTy_1_13_End_Date] 
, [CnVolTy_1_13_Reason_Finished] 
, [CnVolTy_1_14_Status] 
, [CnVolTy_1_14_Volunteer_Type] 
, [CnVolTy_1_14_Start_Date] 
, [CnVolTy_1_14_End_Date] 
, [CnVolTy_1_14_Reason_Finished] 
, [CnVolTy_1_15_Status] 
, [CnVolTy_1_15_Volunteer_Type] 
, [CnVolTy_1_15_Start_Date] 
, [CnVolTy_1_15_End_Date] 
, [CnVolTy_1_15_Reason_Finished] 
, [CnVolTy_1_16_Status] 
, [CnVolTy_1_16_Volunteer_Type] 
, [CnVolTy_1_16_Start_Date] 
, [CnVolTy_1_16_End_Date] 
, [CnVolTy_1_16_Reason_Finished] 
, [CnVolTy_1_17_Status] 
, [CnVolTy_1_17_Volunteer_Type] 
, [CnVolTy_1_17_Start_Date] 
, [CnVolTy_1_17_End_Date] 
, [CnVolTy_1_17_Reason_Finished] 
, [CnVolTy_1_18_Status] 
, [CnVolTy_1_18_Volunteer_Type] 
, [CnVolTy_1_18_Start_Date] 
, [CnVolTy_1_18_End_Date] 
, [CnVolTy_1_18_Reason_Finished] 
, [CnVolTy_1_19_Status] 
, [CnVolTy_1_19_Volunteer_Type] 
, [CnVolTy_1_19_Start_Date] 
, [CnVolTy_1_19_End_Date] 
, [CnVolTy_1_19_Reason_Finished] 
, [CnVolTy_1_20_Status] 
, [CnVolTy_1_20_Volunteer_Type] 
, [CnVolTy_1_20_Start_Date] 
, [CnVolTy_1_20_End_Date] 
, [CnVolTy_1_20_Reason_Finished] 
, [CnVolTy_1_21_Status] 
, [CnVolTy_1_21_Volunteer_Type] 
, [CnVolTy_1_21_Start_Date] 
, [CnVolTy_1_21_End_Date] 
, [CnVolTy_1_21_Reason_Finished] 
, [CnVolTy_1_22_Status] 
, [CnVolTy_1_22_Volunteer_Type] 
, [CnVolTy_1_22_Start_Date] 
, [CnVolTy_1_22_End_Date] 
, [CnVolTy_1_22_Reason_Finished] 
, [CnVolTy_1_23_Status] 
, [CnVolTy_1_23_Volunteer_Type] 
, [CnVolTy_1_23_Start_Date] 
, [CnVolTy_1_23_End_Date] 
, [CnVolTy_1_23_Reason_Finished] 
, [CnVolTy_1_24_Status] 
, [CnVolTy_1_24_Volunteer_Type] 
, [CnVolTy_1_24_Start_Date] 
, [CnVolTy_1_24_End_Date] 
, [CnVolTy_1_24_Reason_Finished] 
, [CnVolTy_1_25_Status] 
, [CnVolTy_1_25_Volunteer_Type] 
, [CnVolTy_1_25_Start_Date] 
, [CnVolTy_1_25_End_Date] 
, [CnVolTy_1_25_Reason_Finished] 
, [CnVolTy_1_26_Status] 
, [CnVolTy_1_26_Volunteer_Type] 
, [CnVolTy_1_26_Start_Date] 
, [CnVolTy_1_26_End_Date] 
, [CnVolTy_1_26_Reason_Finished] 
, [CnVolTy_1_27_Status] 
, [CnVolTy_1_27_Volunteer_Type] 
, [CnVolTy_1_27_Start_Date] 
, [CnVolTy_1_27_End_Date] 
, [CnVolTy_1_27_Reason_Finished] 
, [CnVolTy_1_28_Status] 
, [CnVolTy_1_28_Volunteer_Type] 
, [CnVolTy_1_28_Start_Date] 
, [CnVolTy_1_28_End_Date] 
, [CnVolTy_1_28_Reason_Finished] 
, [CnVolTy_1_29_Status] 
, [CnVolTy_1_29_Volunteer_Type] 
, [CnVolTy_1_29_Start_Date] 
, [CnVolTy_1_29_End_Date] 
, [CnVolTy_1_29_Reason_Finished] 
, [CnVolTy_1_30_Status] 
, [CnVolTy_1_30_Volunteer_Type] 
, [CnVolTy_1_30_Start_Date] 
, [CnVolTy_1_30_End_Date] 
, [CnVolTy_1_30_Reason_Finished] 
, [CnVolTy_1_31_Status] 
, [CnVolTy_1_31_Volunteer_Type] 
, [CnVolTy_1_31_Start_Date] 
, [CnVolTy_1_31_End_Date] 
, [CnVolTy_1_31_Reason_Finished] 
, [CnVolTy_1_32_Status] 
, [CnVolTy_1_32_Volunteer_Type] 
, [CnVolTy_1_32_Start_Date] 
, [CnVolTy_1_32_End_Date] 
, [CnVolTy_1_32_Reason_Finished] 
, [CnVolTy_1_33_Status] 
, [CnVolTy_1_33_Volunteer_Type] 
, [CnVolTy_1_33_Start_Date] 
, [CnVolTy_1_33_End_Date] 
, [CnVolTy_1_33_Reason_Finished] 
, [CnVolTy_1_34_Status] 
, [CnVolTy_1_34_Volunteer_Type] 
, [CnVolTy_1_34_Start_Date] 
, [CnVolTy_1_34_End_Date] 
, [CnVolTy_1_34_Reason_Finished] 
, [CnVolTy_1_35_Status] 
, [CnVolTy_1_35_Volunteer_Type] 
, [CnVolTy_1_35_Start_Date] 
, [CnVolTy_1_35_End_Date] 
, [CnVolTy_1_35_Reason_Finished] 
, [CnVolTy_1_36_Status] 
, [CnVolTy_1_36_Volunteer_Type] 
, [CnVolTy_1_36_Start_Date] 
, [CnVolTy_1_36_End_Date] 
, [CnVolTy_1_36_Reason_Finished] 
, [CnVolTy_1_37_Status] 
, [CnVolTy_1_37_Volunteer_Type] 
, [CnVolTy_1_37_Start_Date] 
, [CnVolTy_1_37_End_Date] 
, [CnVolTy_1_37_Reason_Finished] 
, [CnVolTy_1_38_Status] 
, [CnVolTy_1_38_Volunteer_Type] 
, [CnVolTy_1_38_Start_Date] 
, [CnVolTy_1_38_End_Date] 
, [CnVolTy_1_38_Reason_Finished] 
, [CnVolTy_1_39_Status] 
, [CnVolTy_1_39_Volunteer_Type] 
, [CnVolTy_1_39_Start_Date] 
, [CnVolTy_1_39_End_Date] 
, [CnVolTy_1_39_Reason_Finished] 
, [CnVolTy_1_40_Status] 
, [CnVolTy_1_40_Volunteer_Type] 
, [CnVolTy_1_40_Start_Date] 
, [CnVolTy_1_40_End_Date] 
, [CnVolTy_1_40_Reason_Finished] 
, [CnVolTy_1_41_Status] 
, [CnVolTy_1_41_Volunteer_Type] 
, [CnVolTy_1_41_Start_Date] 
, [CnVolTy_1_41_End_Date] 
, [CnVolTy_1_41_Reason_Finished] 
, [CnVolTy_1_42_Status] 
, [CnVolTy_1_42_Volunteer_Type] 
, [CnVolTy_1_42_Start_Date] 
, [CnVolTy_1_42_End_Date] 
, [CnVolTy_1_42_Reason_Finished] 
, [CnVolTy_1_43_Status] 
, [CnVolTy_1_43_Volunteer_Type] 
, [CnVolTy_1_43_Start_Date] 
, [CnVolTy_1_43_End_Date] 
, [CnVolTy_1_43_Reason_Finished] 
, [CnVolTy_1_44_Status] 
, [CnVolTy_1_44_Volunteer_Type] 
, [CnVolTy_1_44_Start_Date] 
, [CnVolTy_1_44_End_Date] 
, [CnVolTy_1_44_Reason_Finished] 
, [CnVolTy_1_45_Status] 
, [CnVolTy_1_45_Volunteer_Type] 
, [CnVolTy_1_45_Start_Date] 
, [CnVolTy_1_45_End_Date] 
, [CnVolTy_1_45_Reason_Finished] 
			FROM @DataTable  
		  
		SET @finalXml = '<Root><ResponseInfo><Success>true</Success><RecordsInserted>' + CAST(@recordCount AS NVARCHAR(10)) + '</RecordsInserted></ResponseInfo></Root>'  
  
	END TRY  
  
  
	BEGIN CATCH  
	  
		-- TODO: Better error messaging here  
		SET @finalXml = '<Root><ResponseInfo><Success>false</Success><ErrorMessage>There was an error attempting to upload this data.</ErrorMessage></ResponseInfo></Root>'  
  
	END CATCH  
  
  
	-- Return response  
	SELECT CAST(@finalXml AS XML)  
  
END 

GO
