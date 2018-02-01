

--=============================================================================
-- Grant privileges on objects under CMS schema to roles
-------------------------------------------------------------------------------


-- privilege for HHS_CMS_HR_RW_ROLE;

GRANT EXECUTE ON HHS_CMS_HR.FN_GET_LOOKUP_DSCR TO HHS_CMS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_MEMBER_DSCR TO HHS_CMS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_GRADE_ADVRT TO HHS_CMS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ANNOUNCE_NOT_REQ TO HHS_CMS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ANNOUNCE_REQ TO HHS_CMS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ANNOUNCE_TYPE TO HHS_CMS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ASSESS_TYPE TO HHS_CMS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_SUBORG_CD TO HHS_CMS_HR_RW_ROLE;

GRANT SELECT ON HHS_CMS_HR.VW_STRATCON TO HHS_CMS_HR_RW_ROLE;
GRANT SELECT ON HHS_CMS_HR.VW_CLASSIFICATION TO HHS_CMS_HR_RW_ROLE;
GRANT SELECT ON HHS_CMS_HR.VW_ELIGQUAL TO HHS_CMS_HR_RW_ROLE;





-- privilege for HHS_CMS_HR_DEV_ROLE;

GRANT EXECUTE ON HHS_CMS_HR.FN_GET_LOOKUP_DSCR TO HHS_CMS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_MEMBER_DSCR TO HHS_CMS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_GRADE_ADVRT TO HHS_CMS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ANNOUNCE_NOT_REQ TO HHS_CMS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ANNOUNCE_REQ TO HHS_CMS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ANNOUNCE_TYPE TO HHS_CMS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_ASSESS_TYPE TO HHS_CMS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_CMS_HR.FN_GET_SUBORG_CD TO HHS_CMS_HR_DEV_ROLE;

GRANT SELECT ON HHS_CMS_HR.VW_STRATCON TO HHS_CMS_HR_DEV_ROLE;
GRANT SELECT ON HHS_CMS_HR.VW_CLASSIFICATION TO HHS_CMS_HR_DEV_ROLE;
GRANT SELECT ON HHS_CMS_HR.VW_ELIGQUAL TO HHS_CMS_HR_DEV_ROLE;
