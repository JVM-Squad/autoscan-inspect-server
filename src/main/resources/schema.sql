-- naming rule : [A-Z]{2}_[A-Z]{3}(_[A-Z]{3})* (english)

CREATE TABLE IF NOT EXISTS E_MAIN_SES ( --E_MAIN_SES
	ID_SES VARCHAR,
	VA_TYP VARCHAR,  --VA_TYP
	VA_NAM VARCHAR, --VA_NME
	VA_USR VARCHAR,
	DH_STR TIMESTAMP(6), --DH_STR
	DH_END TIMESTAMP(6), --DH_END
	VA_LCT VARCHAR,  --VA_LCT
	VA_THR VARCHAR, --VA_THR
	VA_ERR_TYP VARCHAR,  --VA_ERR_TYP
	VA_ERR_MSG VARCHAR,
	VA_MSK INT,
	CD_INS VARCHAR --CD_INS
);

CREATE TABLE IF NOT EXISTS E_RST_SES ( --E_RST_SES
	ID_SES VARCHAR,
	VA_MTH VARCHAR,
	VA_PCL VARCHAR, --VA_PCL
	VA_HST VARCHAR,
	CD_PRT INT,
	VA_PTH VARCHAR,
	VA_QRY VARCHAR,
	VA_CNT_TYP VARCHAR,
	VA_ATH_SCH VARCHAR, --VA_ATH_SCH
	CD_STT INT,
	VA_I_SZE BIGINT,
	VA_O_SZE BIGINT,
	VA_I_CNT_ENC VARCHAR,
	VA_O_CNT_ENC VARCHAR,
	DH_STR TIMESTAMP(6), --DH_STR
	DH_END TIMESTAMP(6), --DH_END
	VA_THR VARCHAR,  --VA_THR
	VA_ERR_TYP VARCHAR, --VA_ERR_TYP
	VA_ERR_MSG VARCHAR,
	VA_NAM VARCHAR, --VA_NAM
	VA_USR VARCHAR,
	VA_USR_AGT VARCHAR,
	VA_CCH_CTR VARCHAR,
	VA_MSK INT,
	CD_INS VARCHAR --CD_INS
);

CREATE TABLE IF NOT EXISTS E_RST_RQT ( --E_RST_RQT
    ID_RST_RQT BIGINT, -- index
	VA_MTH VARCHAR,
	VA_PCL VARCHAR,  --VA_PCL
	VA_HST VARCHAR,
	CD_PRT INT,
	VA_PTH VARCHAR,
	VA_QRY VARCHAR,
	VA_CNT_TYP VARCHAR, 
	VA_ATH_SCH VARCHAR, --VA_ATH_SCH : scheme
	CD_STT INT,
	VA_I_SZE BIGINT,
	VA_O_SZE BIGINT,
	VA_I_CNT_ENC VARCHAR,
	VA_O_CNT_ENC VARCHAR,
	DH_STR TIMESTAMP(6),   --DH_STR
	DH_END TIMESTAMP(6),   --DH_END
	VA_THR VARCHAR,   --VA_THR
	CD_PRN_SES VARCHAR, -- Parent -- index
	CD_RMT_SES VARCHAR -- NUll  --CD_RMT_SES : remote session -- index
);

CREATE TABLE IF NOT EXISTS E_SMTP_RQT (
    ID_SMTP_RQT BIGINT,
    VA_HST VARCHAR,
    CD_PRT INT,
    VA_USR VARCHAR,
    DH_STR TIMESTAMP(6),
    DH_END TIMESTAMP(6),
    VA_THR VARCHAR,
    VA_CPT CHAR,
    CD_PRN_SES VARCHAR -- index
);

CREATE TABLE IF NOT EXISTS E_SMTP_MAIL (
    VA_SBJ VARCHAR,
    VA_CNT_TYP VARCHAR,
    VA_FRM VARCHAR,
    VA_RCP VARCHAR,
    VA_RPL VARCHAR,
    VA_SZE BIGINT,
    CD_SMTP_RQT BIGINT -- index
);

CREATE TABLE IF NOT EXISTS E_SMTP_STG (
	VA_NAM VARCHAR,
	DH_STR TIMESTAMP(6),
	DH_END TIMESTAMP(6),
	CD_ORD INT,
	CD_SMTP_RQT BIGINT -- index
);

CREATE TABLE IF NOT EXISTS E_FTP_RQT (
    ID_FTP_RQT BIGINT,
    VA_HST VARCHAR,
    CD_PRT INT,
    VA_PCL VARCHAR,
    VA_SRV_VRS VARCHAR,
    VA_CLT_VRS VARCHAR,
    VA_USR VARCHAR,
    DH_STR TIMESTAMP(6),
    DH_END TIMESTAMP(6),
    VA_THR VARCHAR,
    VA_CPT CHAR,
    CD_PRN_SES VARCHAR -- index
);

CREATE TABLE IF NOT EXISTS E_FTP_STG (
	VA_NAM VARCHAR,
	DH_STR TIMESTAMP(6),
	DH_END TIMESTAMP(6),
	VA_ARG VARCHAR,
	CD_ORD INT,
	CD_FTP_RQT BIGINT -- index
);

CREATE TABLE IF NOT EXISTS E_LDAP_RQT (
    ID_LDAP_RQT BIGINT,
    VA_HST VARCHAR,
    CD_PRT INT,
    VA_PCL VARCHAR,
    VA_USR VARCHAR,
    DH_STR TIMESTAMP(6),
    DH_END TIMESTAMP(6),
    VA_THR VARCHAR,
    VA_CPT CHAR,
    CD_PRN_SES VARCHAR -- index
);

CREATE TABLE IF NOT EXISTS E_LDAP_STG (
	VA_NAM VARCHAR,
	DH_STR TIMESTAMP(6),
	DH_END TIMESTAMP(6),
	VA_ARG VARCHAR,
	CD_ORD INT,
	CD_LDAP_RQT BIGINT -- index
);

CREATE TABLE IF NOT EXISTS E_DTB_RQT ( --E_DTB_RQT
	ID_DTB_RQT BIGINT, --ID_DTB_RQT
	VA_HST VARCHAR,
	CD_PRT INT,
	VA_NAM VARCHAR,  --VA_DTB
	DH_STR TIMESTAMP(6), --DH_STR
	DH_END TIMESTAMP(6), --DH_END
	VA_USR VARCHAR,
	VA_THR VARCHAR, --VA_THR
	VA_DRV VARCHAR,
	VA_PRD_NAM VARCHAR, --VA_PRD_NAM
	VA_PRD_VRS VARCHAR, --VA_PRD_VRS
	VA_CMD VARCHAR,
    VA_CPT CHAR, --VA_CPT
	CD_PRN_SES VARCHAR -- index
);

CREATE TABLE IF NOT EXISTS E_DTB_STG ( -- E_DTB_STG
	VA_NAM VARCHAR, --VA_NAME
	DH_STR TIMESTAMP(6),   --DH_STR
	DH_END TIMESTAMP(6),   --DH_END
	VA_CNT VARCHAR, --VA_CNT
	CD_ORD BIGINT,
	CD_DTB_RQT BIGINT --CD_DTB_RQT -- index
);

CREATE TABLE IF NOT EXISTS E_LCL_RQT ( --E_LCL_RQS
    ID_LCL_RQT BIGINT,
    VA_NAM VARCHAR,  --VA_NAM
    VA_LCT VARCHAR,   --VA_LCT
    DH_STR TIMESTAMP(6),  --DH_STR
    DH_END TIMESTAMP(6),  --DH_END
    VA_USR VARCHAR,
    VA_THR VARCHAR,  --VA_THR
    VA_CPT CHAR,
    CD_PRN_SES VARCHAR -- index
);

CREATE TABLE IF NOT EXISTS E_EXC_INF (
    VA_TYP VARCHAR, -- index
    VA_ERR_TYP VARCHAR,
    VA_ERR_MSG VARCHAR,
    CD_ORD INT,
    CD_RQT BIGINT -- index
);

CREATE TABLE IF NOT EXISTS E_ENV_INS (
    ID_INS VARCHAR, --ID_INS -- index
    VA_TYP VARCHAR,
    DH_STR TIMESTAMP(6), --DH_STR
    VA_APP VARCHAR, --VA_APP
    VA_VRS VARCHAR,
    VA_ADR VARCHAR, --VA_ADR
    VA_ENV VARCHAR,
    VA_OS VARCHAR,
    VA_RE VARCHAR,
    VA_USR VARCHAR,
    VA_CLR VARCHAR --VA_CLT
);
