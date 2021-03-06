CREATE OR REPLACE PROCEDURE SP_UPDATE_INCENTIVES_LE_TABLE
(
	I_PROCID            IN      NUMBER
)
IS
	l_count	int;
BEGIN
	IF I_PROCID IS NOT NULL AND I_PROCID > 0 THEN 
		SELECT count(*) INTO l_count FROM VW_INCENTIVES_LE WHERE PROC_ID = I_PROCID;
		IF 0 < l_count THEN
			MERGE INTO INCENTIVES_LE t
			USING ( SELECT * FROM VW_INCENTIVES_LE WHERE PROC_ID = I_PROCID ) v
			ON (t.PROC_ID = v.PROC_ID)
			WHEN MATCHED THEN
				UPDATE 
				SET t.COC_NAME = v.COC_NAME,
					t.COC_EMAIL = v.COC_EMAIL,
					t.COC_ID = v.COC_ID,
					t.COC_TITLE = v.COC_TITLE,
					t.INIT_ANN_LA_RATE = v.INIT_ANN_LA_RATE,
					t.SUPPORT_LE = v.SUPPORT_LE,
					t.PROPS_ANN_LA_RATE = v.PROPS_ANN_LA_RATE,
					t.TOTAL_CREDITABLE_YEARS = v.TOTAL_CREDITABLE_YEARS,
					t.TOTAL_CREDITABLE_MONTHS = v.TOTAL_CREDITABLE_MONTHS,
					t.JUSTIFICATION_LASTMOD_NAME = v.JUSTIFICATION_LASTMOD_NAME,
					t.JUSTIFICATION_LASTMOD_ID = v.JUSTIFICATION_LASTMOD_ID,
					t.JUSTIFICATION_MOD_REASON = v.JUSTIFICATION_MOD_REASON,
					t.JUSTIFICATION_MOD_SUMMARY = v.JUSTIFICATION_MOD_SUMMARY,
					t.JUSTIFICATION_MODIFIER_NAME = v.JUSTIFICATION_MODIFIER_NAME,
					t.JUSTIFICATION_MODIFIER_ID = v.JUSTIFICATION_MODIFIER_ID,
					t.JUSTIFICATION_MODIFIED_DATE = v.JUSTIFICATION_MODIFIED_DATE,
					t.JUSTIFICATION_SKILL_EXP = v.JUSTIFICATION_SKILL_EXP,
					t.JUSTIFICATION_AGENCY_GOAL = v.JUSTIFICATION_AGENCY_GOAL,
					t.SELECTEE_ELIGIBILITY = v.SELECTEE_ELIGIBILITY,
					t.HRS_RVW_CERT = v.HRS_RVW_CERT,
					t.HRS_NOT_SPT_RSN = v.HRS_NOT_SPT_RSN,
					t.RVW_HRS = v.RVW_HRS,
					t.HRS_RVW_DATE = v.HRS_RVW_DATE,
					t.RCMD_LA_RATE = v.RCMD_LA_RATE,
					t.APPROVAL_SO_VALUE = v.APPROVAL_SO_VALUE,
					t.APPROVAL_SO_ACTING = v.APPROVAL_SO_ACTING,
					t.APPROVAL_SO = v.APPROVAL_SO,
					t.APPROVAL_SO_RESP_DATE = v.APPROVAL_SO_RESP_DATE,
					t.APPROVAL_COC_VALUE = v.APPROVAL_COC_VALUE,
					t.APPROVAL_COC_ACTING = v.APPROVAL_COC_ACTING,
					t.APPROVAL_COC = v.APPROVAL_COC,
					t.APPROVAL_COC_RESP_DATE = v.APPROVAL_COC_RESP_DATE,
					t.APPROVAL_DGHO_VALUE = v.APPROVAL_DGHO_VALUE,
					t.APPROVAL_DGHO_ACTING = v.APPROVAL_DGHO_ACTING,
					t.APPROVAL_DGHO = v.APPROVAL_DGHO,
					t.APPROVAL_DGHO_RESP_DATE = v.APPROVAL_DGHO_RESP_DATE,
					t.APPROVAL_TABG_VALUE = v.APPROVAL_TABG_VALUE,
					t.APPROVAL_TABG_ACTING = v.APPROVAL_TABG_ACTING,
					t.APPROVAL_TABG = v.APPROVAL_TABG,
					t.APPROVAL_TABG_RESP_DATE = v.APPROVAL_TABG_RESP_DATE
			WHEN NOT MATCHED THEN
				INSERT (t.PROC_ID,
					t.COC_NAME,
					t.COC_EMAIL,
					t.COC_ID,
					t.COC_TITLE,
					t.INIT_ANN_LA_RATE,
					t.SUPPORT_LE,
					t.PROPS_ANN_LA_RATE,
					t.TOTAL_CREDITABLE_YEARS,
					t.TOTAL_CREDITABLE_MONTHS,
					t.JUSTIFICATION_LASTMOD_NAME, 
					t.JUSTIFICATION_LASTMOD_ID,
					t.JUSTIFICATION_MOD_REASON,
					t.JUSTIFICATION_MOD_SUMMARY,
					t.JUSTIFICATION_MODIFIER_NAME,
					t.JUSTIFICATION_MODIFIER_ID,
					t.JUSTIFICATION_MODIFIED_DATE,
					t.JUSTIFICATION_SKILL_EXP,
					t.JUSTIFICATION_AGENCY_GOAL,
					t.SELECTEE_ELIGIBILITY,
					t.HRS_RVW_CERT,
					t.HRS_NOT_SPT_RSN,
					t.RVW_HRS,
					t.HRS_RVW_DATE,
					t.RCMD_LA_RATE,
					t.APPROVAL_SO_VALUE,
					t.APPROVAL_SO_ACTING,
					t.APPROVAL_SO,
					t.APPROVAL_SO_RESP_DATE,
					t.APPROVAL_COC_VALUE,
					t.APPROVAL_COC_ACTING,
					t.APPROVAL_COC,
					t.APPROVAL_COC_RESP_DATE,
					t.APPROVAL_DGHO_VALUE,
					t.APPROVAL_DGHO_ACTING,
					t.APPROVAL_DGHO,
					t.APPROVAL_DGHO_RESP_DATE,
					t.APPROVAL_TABG_VALUE,
					t.APPROVAL_TABG_ACTING,
					t.APPROVAL_TABG,
					t.APPROVAL_TABG_RESP_DATE)
				VALUES (
					v.PROC_ID,
					v.COC_NAME,
					v.COC_EMAIL,
					v.COC_ID,
					v.COC_TITLE,
					v.INIT_ANN_LA_RATE,
					v.SUPPORT_LE,
					v.PROPS_ANN_LA_RATE,
					v.TOTAL_CREDITABLE_YEARS,
					v.TOTAL_CREDITABLE_MONTHS,
					v.JUSTIFICATION_LASTMOD_NAME, 
					v.JUSTIFICATION_LASTMOD_ID,
					v.JUSTIFICATION_MOD_REASON,
					v.JUSTIFICATION_MOD_SUMMARY,
					v.JUSTIFICATION_MODIFIER_NAME,
					v.JUSTIFICATION_MODIFIER_ID,
					v.JUSTIFICATION_MODIFIED_DATE,
					v.JUSTIFICATION_SKILL_EXP,
					v.JUSTIFICATION_AGENCY_GOAL,
					v.SELECTEE_ELIGIBILITY,
					v.HRS_RVW_CERT,
					v.HRS_NOT_SPT_RSN,
					v.RVW_HRS,
					v.HRS_RVW_DATE,
					v.RCMD_LA_RATE,
					v.APPROVAL_SO_VALUE,
					v.APPROVAL_SO_ACTING,
					v.APPROVAL_SO,
					v.APPROVAL_SO_RESP_DATE,
					v.APPROVAL_COC_VALUE,
					v.APPROVAL_COC_ACTING,
					v.APPROVAL_COC,
					v.APPROVAL_COC_RESP_DATE,
					v.APPROVAL_DGHO_VALUE,
					v.APPROVAL_DGHO_ACTING,
					v.APPROVAL_DGHO,
					v.APPROVAL_DGHO_RESP_DATE,
					v.APPROVAL_TABG_VALUE,
					v.APPROVAL_TABG_ACTING,
					v.APPROVAL_TABG,
					v.APPROVAL_TABG_RESP_DATE);

			DELETE INCENTIVES_LE_CRED WHERE PROC_ID = I_PROCID;
			INSERT INTO INCENTIVES_LE_CRED(PROC_ID,
				SEQ_NUM,
				START_DATE,
				END_DATE,
				WORK_SCHEDULE,
				POS_TITLE,
				CALCULATED_YEARS,
				CALCULATED_MONTHS,
				CREDITABLE_YEARS,
				CREDITABLE_MONTHS)
			SELECT 
				v.PROC_ID,
				v.SEQ_NUM,
				v.START_DATE,
				v.END_DATE,
				v.WORK_SCHEDULE,
				v.POS_TITLE,
				v.CALCULATED_YEARS,
				v.CALCULATED_MONTHS,
				v.CREDITABLE_YEARS,
				v.CREDITABLE_MONTHS
			FROM VW_INCENTIVES_LE_CRED v
			WHERE PROC_ID = I_PROCID;
		END IF;
	END IF;

	EXCEPTION
	WHEN OTHERS THEN
		SP_ERROR_LOG();
END;
/
