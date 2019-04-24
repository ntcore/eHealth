unit TEUSignCP;
type
	  PEUSignCP = ^TEUSignCP;
	  TEUSignCP = record
	    Initialize:                 TEUInitialize;
	    IsInitialized:              TEUIsInitialized;
	    Finalize:                   TEUFinalize;

	    SetSettings:                TEUSetSettings;
	    ShowCertificates:           TEUShowCertificates;
	    ShowCRLs:                   TEUShowCRLs;

	    GetPrivateKeyMedia:         TEUGetPrivateKeyMedia;
	    ReadPrivateKey:             TEUReadPrivateKey;
	    IsPrivateKeyReaded:         TEUIsPrivateKeyReaded;
	    ResetPrivateKey:            TEUResetPrivateKey;
	    FreeCertOwnerInfo:          TEUFreeCertOwnerInfo;

	    ShowOwnCertificate:         TEUShowOwnCertificate;
	    ShowSignInfo:               TEUShowSignInfo;
	    FreeSignInfo:               TEUFreeSignInfo;

	    FreeMemory:                 TEUFreeMemory;

	    GetErrorDesc:               TEUGetErrorDesc;

	    SignData:                   TEUSignData;
	    VerifyData:                 TEUVerifyData;

	    SignDataContinue:           TEUSignDataContinue;
	    SignDataEnd:                TEUSignDataEnd;
	    VerifyDataBegin:            TEUVerifyDataBegin;
	    VerifyDataContinue:         TEUVerifyDataContinue;
	    VerifyDataEnd:              TEUVerifyDataEnd;
	    ResetOperation:             TEUResetOperation;

	    SignFile:                   TEUSignFile;
	    VerifyFile:                 TEUVerifyFile;

	    SignDataInternal:           TEUSignDataInternal;
	    VerifyDataInternal:         TEUVerifyDataInternal; 

	    SelectCertInfo:             TEUSelectCertInfo;

	    SetUIMode:                  TEUSetUIMode;

	    HashData:                   TEUHashData;
	    HashDataContinue:           TEUHashDataContinue;
	    HashDataEnd:                TEUHashDataEnd;
	    HashFile:                   TEUHashFile;
	    SignHash:                   TEUSignHash;
	    VerifyHash:                 TEUVerifyHash;

	    EnumKeyMediaTypes:          TEUEnumKeyMediaTypes;
	    EnumKeyMediaDevices:        TEUEnumKeyMediaDevices;

	    GetFileStoreSettings:       TEUGetFileStoreSettings;
	    SetFileStoreSettings:       TEUSetFileStoreSettings;
	    GetProxySettings:           TEUGetProxySettings;
	    SetProxySettings:           TEUSetProxySettings;
	    GetOCSPSettings:            TEUGetOCSPSettings;
	    SetOCSPSettings:            TEUSetOCSPSettings;
	    GetTSPSettings:             TEUGetTSPSettings;
	    SetTSPSettings:             TEUSetTSPSettings;
	    GetLDAPSettings:            TEUGetLDAPSettings;
	    SetLDAPSettings:            TEUSetLDAPSettings;
	    GetCMPSettings:             TEUGetCMPSettings;
	    SetCMPSettings:             TEUSetCMPSettings;
	    DoesNeedSetSettings:        TEUDoesNeedSetSettings;

	    GetCertificatesCount:       TEUGetCertificatesCount;
	    EnumCertificates:           TEUEnumCertificates;
	    GetCRLsCount:               TEUGetCRLsCount;
	    EnumCRLs:                   TEUEnumCRLs;
	    FreeCRLInfo:                TEUFreeCRLInfo;

	    GetCertificateInfo:         TEUGetCertificateInfo;
	    FreeCertificateInfo:        TEUFreeCertificateInfo;
	    GetCRLDetailedInfo:         TEUGetCRLDetailedInfo;
	    FreeCRLDetailedInfo:        TEUFreeCRLDetailedInfo;

	    GetPrivateKeyMediaSettings: TEUGetPrivateKeyMediaSettings;
	    SetPrivateKeyMediaSettings: TEUSetPrivateKeyMediaSettings;

	    SelectCMPServer:            TEUSelectCMPServer;

	    RawSignData:                TEURawSignData;
	    RawVerifyData:              TEURawVerifyData;
	    RawSignHash:                TEURawSignHash;
	    RawVerifyHash:              TEURawVerifyHash;
	    RawSignFile:                TEURawSignFile;
	    RawVerifyFile:              TEURawVerifyFile;

	    Base64Encode:               TEUBase64Encode;
	    Base64Decode:               TEUBase64Decode;

	    EnvelopData:                TEUEnvelopData;
	    DevelopData:                TEUDevelopData;
	    ShowSenderInfo:             TEUShowSenderInfo;
	    FreeSenderInfo:             TEUFreeSenderInfo;

	    ParseCertificate:           TEUParseCertificate;

	    ReadPrivateKeyBinary:       TEUReadPrivateKeyBinary;
	    ReadPrivateKeyFile:         TEUReadPrivateKeyFile;

	    SessionDestroy:             TEUSessionDestroy;
	    ClientSessionCreateStep1:   TEUClientSessionCreateStep1;
	    ServerSessionCreateStep1:   TEUServerSessionCreateStep1;
	    ClientSessionCreateStep2:   TEUClientSessionCreateStep2;
	    ServerSessionCreateStep2:   TEUServerSessionCreateStep2;
	    SessionIsInitialized:       TEUSessionIsInitialized;
	    SessionSave:                TEUSessionSave;
	    SessionLoad:                TEUSessionLoad;
	    SessionCheckCertificates:   TEUSessionCheckCertificates;

	    SessionEncrypt:             TEUSessionEncrypt;
	    SessionEncryptContinue:     TEUSessionEncryptContinue;
	    SessionDecrypt:             TEUSessionDecrypt;
	    SessionDecryptContinue:     TEUSessionDecryptContinue;

	    IsSignedData:               TEUIsSignedData;
	    IsEnvelopedData:            TEUIsEnvelopedData;

	    SessionGetPeerCertificateInfo: TEUSessionGetPeerCertificateInfo;

	    SaveCertificate: :          TEUSaveCertificate;
	    RefreshFileStore: :         TEURefreshFileStore;

	    GetModeSettings: :          TEUGetModeSettings;
	    SetModeSettings: :          TEUSetModeSettings;

	    CheckCertificate:           TEU CheckCertificate;

	    EnvelopFile:                TEUEnvelopFile;
	    DevelopFile:                TEUDevelopFile;

	    IsSignedFile:               TEUIsSignedFile;
	    IsEnvelopedFile:            TEUIsEnvelopedFile;

	    GetCertificate:             TEUGetCertificate;
	    GetOwnCertificate:          TEUGetOwnCertificate;

	    EnumOwnCertificates:        TEUEnumOwnCertificates;
	    GetCertificateInfoEx:       TEUGetCertificateInfoEx;
	    FreeCertificateInfoEx:      TEUFreeCertificateInfoEx;

	    GetReceiversCertificates:   TEUGetReceiversCertificates;
	    FreeReceiversCertificates:  TEUFreeReceiversCertificates;

	    GeneratePrivateKey:         TEUGeneratePrivateKey;

	    ChangePrivateKeyPassword:   TEUChangePrivateKeyPassword;
	    BackupPrivateKey:           TEUBackupPrivateKey;
	    DestroyPrivateKey:          TEUDestroyPrivateKey;
	    IsHardwareKeyMedia:         TEUIsHardwareKeyMedia;
	    IsPrivateKeyExists:         TEUIsPrivateKeyExists;

	    GetCRInfo:                  TEUGetCRInfo;
	    FreeCRInfo:                 TEUFreeCRInfo;

	    SaveCertificates:           TEUSaveCertificates;
	    SaveCRL:                    TEUSaveCRL;

	    GetCertificateByEMail:      TEUGetCertificateByEMail;
	    GetCertificateByNBUCode:    TEUGetCertificateByNBUCode;

	    AppendSign:                 TEUAppendSign;
	    AppendSignInternal:         TEUAppendSignInternal;
	    VerifyDataSpecific:         TEUVerifyDataSpecific;
	    VerifyDataInternalSpecific: TEUVerifyDataInternalSpecific;
	    AppendSignBegin:            TEUAppendSignBegin;
	    VerifyDataSpecificBegin:    TEUVerifyDataSpecificBegin;

	    AppendSignFile:             TEUAppendSignFile;
	    VerifyFileSpecific:         TEUVerifyFileSpecific;

	    AppendSignHash:             TEUAppendSignHash;
	    VerifyHashSpecific:         TEUVerifyHashSpecific;

	    GetSignsCount:              TEUGetSignsCount;
	    GetSignerInfo:              TEUGetSignerInfo;
	    GetFileSignsCount:          TEUGetFileSignsCount;
	    GetFileSignerInfo:          TEUGetFileSignerInfo;

	    IsAlreadySigned:            TEUIsAlreadySigned;
	    IsFileAlreadySigned:        TEUIsFileAlreadySigned;

	    HashDataWithParams:         TEUHashDataWithParams;
	    HashDataBeginWithParams:    TEUHashDataBeginWithParams;
	    HashFileWithParams:         TEUHashFileWithParams;
	    EnvelopDataEx: TEUEnvelopDataEx;

	    SetSettingsFilePath:        TEUSetSettingsFilePath;

	    GetErrorLangDesc:           TEUGetErrorLangDesc;

	    EnvelopFileEx:              TEUEnvelopFileEx;

	    IsCertificates:             TEUIsCertificates;
	    IsCertificatesFile:         TEUIsCertificatesFile;

	    EnumCertificatesByOCode:    TEUEnumCertificatesByOCode;
	    GetCertificatesByOCode:     TEUGetCertificatesByOCode;

	    SetPrivateKeyMediaSettingsProtected:
	                                TEUSetPrivateKeyMediaSettingsProtected;

	    EnvelopDataToRecipients:    TEUEnvelopDataToRecipients;
	    EnvelopFileToRecipients:    TEUEnvelopFileToRecipients;

	    EnvelopDataExWithDynamicKey:
	                                TEUEnvelopDataExWithDynamicKey;
	    EnvelopDataToRecipientsWithDynamicKey:
	                                TEUEnvelopDataToRecipientsWithDynamicKey;
	    EnvelopFileExWithDynamicKey:
	                                TEUEnvelopFileExWithDynamicKey;
	    EnvelopFileToRecipientsWithDynamicKey:
	                                TEUEnvelopFileToRecipientsWithDynamicKey;
	    SavePrivateKey:             TEUSavePrivateKey;
	    LoadPrivateKey:             TEULoadPrivateKey;
	    ChangeSoftwarePrivateKeyPassword:
	                                TEUChangeSoftwarePrivateKeyPassword;

	    HashDataBeginWithParamsCtx: TEUHashDataBeginWithParamsCtx;
	    HashDataContinueCtx:        TEUHashDataContinueCtx;
	    HashDataEndCtx:             TEUHashDataEndCtx;

	    GetCertificateByKeyInfo:    TEUGetCertificateByKeyInfo;

	    SavePrivateKeyEx:           TEUSavePrivateKeyEx;
	    LoadPrivateKeyEx:           TEULoadPrivateKeyEx;

	    CreateEmptySign:            TEUCreateEmptySign;
	    CreateSigner:               TEUCreateSigner;
	    AppendSigner:               TEUAppendSigner;

	    SetRuntimeParameter:        TEUSetRuntimeParameter;

	    EnvelopDataToRecipientsEx:  TEUEnvelopDataToRecipientsEx;
	    EnvelopFileToRecipientsEx:  TEUEnvelopFileToRecipientsEx;
	    EnvelopDataToRecipientsWithOCode:
	                                TEUEnvelopDataToRecipientsWithOCode;

	    SignDataContinueCtx:        TEUSignDataContinueCtx;
	    SignDataEndCtx:             TEUSignDataEndCtx;
	    VerifyDataBeginCtx:         TEUVerifyDataBeginCtx;
	    VerifyDataContinueCtx:      TEUVerifyDataContinueCtx;
	    VerifyDataEndCtx:           TEUVerifyDataEndCtx;
	    ResetOperationCtx:          TEUResetOperationCtx;

	    SignDataRSA:                TEUSignDataRSA;
	    SignDataRSAContinue:        TEUSignDataRSAContinue;
	    SignDataRSAEnd:             TEUSignDataRSAEnd;
	    SignFileRSA:                TEUSignFileRSA;
	    SignDataRSAContinueCtx:     TEUSignDataRSAContinueCtx;
	    SignDataRSAEndCtx:          TEUSignDataRSAEndCtx;

	    DownloadFileViaHTTP:        TEUDownloadFileViaHTTP;

	    ParseCRL:                   TEUParseCRL;

	    IsOldFormatSign:            TEUIsOldFormatSign;
	    IsOldFormatSignFile:        TEUIsOldFormatSignFile;

	    GetPrivateKeyMediaEx:       TEUGetPrivateKeyMediaEx;

	    GetKeyInfo:                 TEUGetKeyInfo;
	    GetKeyInfoBinary:           TEUGetKeyInfoBinary;
	    GetKeyInfoFile:             TEUGetKeyInfoFile;
	    GetCertificatesByKeyInfo:   TEUGetCertificatesByKeyInfo;

	    CheckCertificateByIssuerAndSerial:
	                                TEUCheckCertificateByIssuerAndSerial;
	    ParseCertificateEx:         TEUParseCertificateEx;

	    CheckCertificateByIssuerAndSerialEx:
	                                TEUCheckCertificateByIssuerAndSerialEx;

	    ClientDynamicKeySessionCreate:
	                                TEUClientDynamicKeySessionCreate;
	    ServerDynamicKeySessionCreate:
	                                TEUServerDynamicKeySessionCreate;

	    GetOCSPAccessInfoModeSettings:
	                                TEUGetOCSPAccessInfoModeSettings;
	    SetOCSPAccessInfoModeSettings:
	                                TEUSetOCSPAccessInfoModeSettings;
	    EnumOCSPAccessInfoSettings: TEUEnumOCSPAccessInfoSettings;
	    GetOCSPAccessInfoSettings:  TEUGetOCSPAccessInfoSettings;
	    SetOCSPAccessInfoSettings:  TEUSetOCSPAccessInfoSettings;
	    DeleteOCSPAccessInfoSettings:
	                                TEUDeleteOCSPAccessInfoSettings;

	    CtxCreate:                  TEUCtxCreate;
	    CtxFree:                    TEUCtxFree;
	    CtxSetParameter:            TEUCtxSetParameter;

	    CtxReadPrivateKey:          TEUCtxReadPrivateKey;
	    CtxReadPrivateKeyBinary:    TEUCtxReadPrivateKeyBinary;
	    CtxReadPrivateKeyFile:      TEUCtxReadPrivateKeyFile;
	    CtxFreePrivateKey:          TEUCtxFreePrivateKey;

	    CtxFreeMemory:              TEUCtxFreeMemory;
	    CtxFreeCertOwnerInfo:       TEUCtxFreeCertOwnerInfo;
	    CtxFreeCertificateInfoEx:   TEUCtxFreeCertificateInfoEx;
	    CtxFreeSignInfo:            TEUCtxFreeSignInfo;
	    CtxFreeSenderInfo:          TEUCtxFreeSenderInfo;

	    CtxGetOwnCertificate:       TEUCtxGetOwnCertificate;
	    CtxEnumOwnCertificates:     TEUCtxEnumOwnCertificates;

	    CtxHashData:                TEUCtxHashData;
	    CtxHashFile:                TEUCtxHashFile;
	    CtxHashDataBegin:           TEUCtxHashDataBegin;
	    CtxHashDataContinue:        TEUCtxHashDataContinue;
	    CtxHashDataEnd:             TEUCtxHashDataEnd;
	    CtxFreeHash:                TEUCtxFreeHash;

	    CtxSignHash:                TEUCtxSignHash;
	    CtxSignHashValue:           TEUCtxSignHashValue;
	    CtxSignData:                TEUCtxSignData;
	    CtxSignFile:                TEUCtxSignFile;
	    CtxIsAlreadySigned:         TEUCtxIsAlreadySigned;
	    CtxIsFileAlreadySigned:     TEUCtxIsFileAlreadySigned;
	    CtxAppendSignHash:          TEUCtxAppendSignHash;
	    CtxAppendSignHashValue:     TEUCtxAppendSignHashValue;
	    CtxAppendSign:              TEUCtxAppendSign;
	    CtxAppendSignFile:          TEUCtxAppendSignFile;
	    CtxCreateEmptySign:         TEUCtxCreateEmptySign;
	    CtxCreateSigner:            TEUCtxCreateSigner;
	    CtxAppendSigner:            TEUCtxAppendSigner;
	    CtxGetSignsCount:           TEUCtxGetSignsCount;
	    CtxGetFileSignsCount:       TEUCtxGetFileSignsCount;
	    CtxGetSignerInfo:           TEUCtxGetSignerInfo;
	    CtxGetFileSignerInfo:       TEUCtxGetFileSignerInfo;
	    CtxVerifyHash:              TEUCtxVerifyHash;
	    CtxVerifyHashValue:         TEUCtxVerifyHashValue;
	    CtxVerifyData:              TEUCtxVerifyData;
	    CtxVerifyDataInternal:      TEUCtxVerifyDataInternal;
	    CtxVerifyFile:              TEUCtxVerifyFile;

	    CtxEnvelopData:             TEUCtxEnvelopData;
	    CtxEnvelopFile:             TEUCtxEnvelopFile;
	    CtxGetSenderInfo:           TEUCtxGetSenderInfo;
	    CtxGetFileSenderInfo:       TEUCtxGetFileSenderInfo;
	    CtxGetRecipientsCount:      TEUCtxGetRecipientsCount;
	    CtxGetFileRecipientsCount:  TEUCtxGetFileRecipientsCount;
	    CtxGetRecipientInfo:        TEUCtxGetRecipientInfo;
	    CtxGetFileRecipientInfo:    TEUCtxGetFileRecipientInfo;
	    CtxEnvelopAppendData:       TEUCtxEnvelopAppendData;
	    CtxEnvelopAppendFile:       TEUCtxEnvelopAppendFile;
	    CtxDevelopData:             TEUCtxDevelopData;
	    CtxDevelopFile:             TEUCtxDevelopFile;

	    CtxGetDataFromSignedData:   TEUCtxGetDataFromSignedData;
	    CtxGetDataFromSignedFile:   TEUCtxGetDataFromSignedFile;

	    CtxIsDataInSignedDataAvailable:
	                                TEUCtxIsDataInSignedDataAvailable;
	    CtxIsDataInSignedFileAvailable:
	                                TEUCtxIsDataInSignedFileAvailable;

	    GetCertificateFromSignedData:
	                                TEUGetCertificateFromSignedData;
	    GetCertificateFromSignedFile:
	                                TEUGetCertificateFromSignedFile;

	    IsDataInSignedDataAvailable:
	                                TEUIsDataInSignedDataAvailable;
	    IsDataInSignedFileAvailable:
	                                TEUIsDataInSignedFileAvailable;
	    GetDataFromSignedData:      TEUGetDataFromSignedData;
	    GetDataFromSignedFile:      TEUGetDataFromSignedFile;

	    GetCertificatesFromLDAPByEDRPOUCode:
	                                TEUGetCertificatesFromLDAPByEDRPOUCode; 

	    RawVerifyDataEx:            TEURawVerifyDataEx;

	    DevCtxOpen:                 TEUDevCtxOpen;
	    DevCtxClose:                TEUDevCtxClose;
	    DevCtxBeginPersonalization: TEUDevCtxBeginPersonalization;
	    DevCtxContinuePersonalization:
	                                TEUDevCtxContinuePersonalization;
	    DevCtxEndPersonalization:   TEUDevCtxEndPersonalization;
	    DevCtxOpenVirtual:          TEUDevCtxOpenVirtual;
	    DevCtxEnumVirtual:          TEUDevCtxEnumVirtual;
	    DevCtxEnum:                 TEUDevCtxEnum;
	    DevCtxChangePassword:       TEUDevCtxChangePassword;
	    DevCtxGetData:              TEUDevCtxGetData;
	    DevCtxSignData:             TEUDevCtxSignData;
	    DevCtxUpdateData:           TEUDevCtxUpdateData;
	    DevCtxSignSystemPublicKey:  TEUDevCtxSignSystemPublicKey;
	    DevCtxUpdateSystemPublicKey:
	                                TEUDevCtxUpdateSystemPublicKey;

	    EnumJKSPrivateKeys:         TEUEnumJKSPrivateKeys;
	    EnumJKSPrivateKeysFile:     TEUEnumJKSPrivateKeysFile;
	    FreeCertificatesArray:      TEUFreeCertificatesArray;
	    GetJKSPrivateKey:           TEUGetJKSPrivateKey;
	    GetJKSPrivateKeyFile:       TEUGetJKSPrivateKeyFile;

	    GeneratePrivateKeyEx:       TEUGeneratePrivateKey;

	    ShowSecureConfirmDialog:    TEUShowSecureConfirmDialog;

	    SetKeyMediaPassword:        TEUSetKeyMediaPassword;

	    MakeNewCertificate:         TEUMakeNewCertificate;

	    DeleteCertificate:          TEUDeleteCertificate;

	    SetKeyMediaUserPassword:    TEUSetKeyMediaUserPassword;

	    GetDataHashFromSignedData:  TEUGetDataHashFromSignedData;
	    GetDataHashFromSignedFile:  TEUGetDataHashFromSignedFile;

	    ShowCertificate:            TEUShowCertificate;

	    RemoveSign:                 TEURemoveSign;
	    RemoveSignFile:             TEURemoveSignFile;
	end;
