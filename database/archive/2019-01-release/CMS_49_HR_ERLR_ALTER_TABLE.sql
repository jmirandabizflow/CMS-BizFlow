ALTER TABLE 
   ERLR_GEN
MODIFY 
(    
   GEN_INVESTIGATION  NVARCHAR2(3),   
   GEN_STD_CONDUCT	 NVARCHAR2(3)
);

ALTER TABLE
    ERLR_GEN
ADD
(
    GEN_CUSTOMER_EMAIL  NVARCHAR2(100),
    GEN_EMPLOYEE_EMAIL  NVARCHAR2(100),
    PRICID  NUMBER(20,0)
);

ALTER TABLE 
   ERLR_CNDT_ISSUE
MODIFY 
(    
   CI_ADMIN_INVESTIGATORY_LEAVE  NVARCHAR2(3),   
   CI_ADMIN_NOTICE_LEAVE	 NVARCHAR2(3),
   CI_ORAL_PREZ_REQUESTED	 NVARCHAR2(3),
   CI_ORAL_RESPONSE_SUBMITTED	 NVARCHAR2(3),
   CI_EMP_NOTICE_LEAVE_PLACED	 NVARCHAR2(3),
   CI_RMVL_ORAL_PREZ_RQSTED	 NVARCHAR2(3),
   CI_RMVL_WRTN_RESPONSE	 NVARCHAR2(3),
   CI_SUSP_ORAL_PREZ_REQUESTED	 NVARCHAR2(3),
   CI_SUSP_WRITTEN_RESP	 NVARCHAR2(3),
   CI_EMP_APPEAL_DECISION	 NVARCHAR2(3)
);

ALTER TABLE 
   ERLR_APPEAL
MODIFY 
(    
   AP_ERLR_APPEAL_TIMING  NVARCHAR2(3),   
   AP_APPEAL_HEARING_REQUESTED	 NVARCHAR2(3),
   AP_ERLR_EXCEPTION_FILED	 NVARCHAR2(3),
   AP_ERLR_ARBITRATION_INVOKED	 NVARCHAR2(3),
   AP_ERLR_EXCEPTION_FILED_2	 NVARCHAR2(3),
   AP_WAS_DISCOVERY_INITIATED	 NVARCHAR2(3),
   AP_WAS_PETITION_FILED_MSPB	 NVARCHAR2(3),
   AP_WAS_PETITION_FILED_FLRA	 NVARCHAR2(3)   
);

ALTER TABLE 
   ERLR_WGI_DNL
MODIFY 
(    
   WGI_DTR_EMP_REQ_RECON  NVARCHAR2(3),   
   WGI_DTR_DENIED	 NVARCHAR2(3),
   WGI_REVIEW_DTR_FAVORABLE	 NVARCHAR2(3),
   WGI_REVIEW_EMP_REQ_RECON	 NVARCHAR2(3),
   WGI_REVIEW_DENIED	 NVARCHAR2(3),
   WGI_EMP_APPEAL_DECISION	 NVARCHAR2(3)   
);

ALTER TABLE 
   ERLR_MEDDOC
MODIFY 
(    
   MD_FMLA_APROVED  NVARCHAR2(3),   
   MD_FMLA_GRIEVANCE	 NVARCHAR2(3),
   MD_MEDEXAM_EXTENDED	 NVARCHAR2(3),
   MD_MEDEXAM_ACCEPTED	 NVARCHAR2(3),
   MD_DOC_SUBMITTED	 NVARCHAR2(3),
   MD_DOC_SBMT_FOH	 NVARCHAR2(3),
   MD_DOC_ADMTV_ACCEPTABLE	 NVARCHAR2(3)   
);

ALTER TABLE 
   ERLR_PERF_ISSUE
MODIFY 
(    
   PI_CNSL_GRV_DECISION  NVARCHAR2(3),   
   PI_DMTN_ORAL_PRSNT_REQ	 NVARCHAR2(3),
   PI_DMTN_WRTN_RESP_SBMT	 NVARCHAR2(3),
   PI_DMTN_APPEAL_DECISION	 NVARCHAR2(3),
   PI_PIP_RSNBL_ACMDTN	 NVARCHAR2(3),
   PI_PIP_EMPL_SBMT_MEDDOC	 NVARCHAR2(3),
   PI_PIP_DOC_SBMT_FOH_RVW	 NVARCHAR2(3),
   PI_PIP_WGI_WTHLD	 NVARCHAR2(3),
   PI_PIP_END_PRIOR_TO_PLAN	 NVARCHAR2(3),
   PI_PIP_SUCCESS_CMPLT	 NVARCHAR2(3),
   PI_PIP_ORAL_PRSNT_REQ	 NVARCHAR2(3),
   PI_PIP_WRTN_RESP_SBMT	 NVARCHAR2(3),
   PI_PIP_EMPL_GRIEVANCE	 NVARCHAR2(3),
   PI_PIP_APPEAL_DECISION	 NVARCHAR2(3),
   PI_RMV_EMPL_NOTC_LEV	 NVARCHAR2(3),
   PI_RMV_ORAL_PRSNT_REQ	 NVARCHAR2(3),
   PI_RMV_APPEAL_DECISION	 NVARCHAR2(3),
   PI_WNR_WGI_WTHLD	 NVARCHAR2(3)
);

ALTER TABLE 
   ERLR_INVESTIGATION
MODIFY 
(    
   I_MISCONDUCT_FOUND  NVARCHAR2(3)  
   
);

ALTER TABLE 
   ERLR_INFO_REQUEST
MODIFY 
(    
   IR_MEET_PTCLRIZED_NEED_STND  NVARCHAR2(3),   
   IR_RSNABLY_AVAIL_N_NECESSARY	 NVARCHAR2(3),
   IR_PRTCT_DISCLOSURE_BY_LAW	 NVARCHAR2(3),
   IR_MAINTAINED_BY_AGENCY	 NVARCHAR2(3),
   IR_COLLECTIVE_BARGAINING_UNIT	 NVARCHAR2(3),
   IR_APPEAL_DENIAL	 NVARCHAR2(3)   
);

ALTER TABLE 
   ERLR_3RDPARTY_HEAR
MODIFY 
(    
   THRD_PRTY_HEARING_TIMING  NVARCHAR2(3),   
   THRD_PRTY_HEARING_REQUESTED	 NVARCHAR2(3),
   THRD_PRTY_ARBITRATION_INVOKED	 NVARCHAR2(3),
   THRD_PRTY_EXCEPTION_FILED_2	 NVARCHAR2(3),
   THRD_PRTY_EXCEPTION_FILED	 NVARCHAR2(3),
   THRD_PRTY_WAS_DSCVRY_INIT	 NVARCHAR2(3),
   THRD_PRTY_WAS_PETI_FILED_MSPB	 NVARCHAR2(3),
   THRD_PRTY_TIMELY_REQ	 NVARCHAR2(3)   
);

ALTER TABLE 
   ERLR_PROB_ACTION
MODIFY 
(    
   PPA_TERM_ORAL_PREZ_REQUESTED  NVARCHAR2(3),   
   PPA_TERM_WRITTEN_RESP	 NVARCHAR2(3),
   PPA_PROBATION_CONDUCT	 NVARCHAR2(3),
   PPA_PROBATION_PERFORMANCE	 NVARCHAR2(3),
   PPA_EMP_APPEAL_DECISION	 NVARCHAR2(3),
   PPA_ORAL_PREZ_REQUESTED	 NVARCHAR2(3),
   PPA_ORAL_RESPONSE_SUBMITTED	 NVARCHAR2(3)
);

ALTER TABLE 
   ERLR_GRIEVANCE
MODIFY 
(    
   GI_TIMELY_FILING_2  NVARCHAR2(3),   
   GI_TIMELY_FILING	 NVARCHAR2(3),
   GI_IND_STEP_1_DEADLINE	 NVARCHAR2(3),
   GI_STEP_2_REQUEST	 NVARCHAR2(3),
   GI_IND_STEP_2_DEADLINE	 NVARCHAR2(3),
   GI_IND_THIRD_APPEAL_REQUEST	 NVARCHAR2(3),
   GI_ARBITRATION_REQUEST	 NVARCHAR2(3),
   GI_ADMIN_STG_2_RESP	 NVARCHAR2(3)
);

ALTER TABLE 
   ERLR_ULP
MODIFY 
(    
   ULP_CHARGE_FILED_TIMELY  NVARCHAR2(3),   
   ULP_FLRA_DOCUMENT_REUQESTED	 NVARCHAR2(3),
   ULP_EXCEPTION_FILED	 NVARCHAR2(3)
);

ALTER TABLE 
   ERLR_LABOR_NEGO
MODIFY 
(    
   LN_BRIEFING_REQUEST  NVARCHAR2(3),   
   LN_PROPOSAL_SUBMISSION	 NVARCHAR2(3),
   LN_UNION_PROPOSAL_NEGOTIABLE	 NVARCHAR2(3),
   LN_UNION_NON_NEGOTIABLE_LETTER	 NVARCHAR2(3),
   LN_UNION_FILE_ULP	 NVARCHAR2(3),
   LN_PROPOSAL_INFO_GROUND_RULES	 NVARCHAR2(3),
   LN_UNION_LETTER_PROVIDED	 NVARCHAR2(3),
   LN_UNION_NEGOTIABLE_PROPOSAL	 NVARCHAR2(3),
   LN_UNION_SECON_LETTER_REQUEST	 NVARCHAR2(3),
   LN_2ND_LETTER_PROVIDED	 NVARCHAR2(3),
   LN_MNGMNT_NOTICE_RESPONSE	 NVARCHAR2(3),
   LN_MNGMNT_BRIEFING_REQUEST	 NVARCHAR2(3),
   LN_MNGMNT_PROPOSAL_SBMSSION	 NVARCHAR2(3)
);

commit;
