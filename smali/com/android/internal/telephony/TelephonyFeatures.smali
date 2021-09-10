.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field private static final blacklist DEFAULT_CHECK_LAST_SIM:Z = true

.field private static final blacklist ENABLE_SMF:Z

.field public static final blacklist IS_PHONE:Z

.field static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field public static final blacklist MULTI_SIM_CONFIG:Ljava/lang/String;

.field private static final blacklist NTCTYPE_COUNTRY:I = 0x3

.field private static final blacklist NTCTYPE_MAINOPERATOR:I = 0x0

.field private static final blacklist NTCTYPE_OPERATORTYPE:I = 0x2

.field private static final blacklist NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final blacklist NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING:I = 0x6

.field public static final blacklist NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x3

.field public static final blacklist NTC_FEATURE_ERI_ON_AP:I = 0x5

.field public static final blacklist NTC_FEATURE_ERI_ON_CP:I = 0x4

.field public static final blacklist NTC_FEATURE_MAX:I = 0xa

.field public static final blacklist NTC_FEATURE_REMOVE_ECB_EXIT:I = 0x1

.field public static final blacklist NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x2

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ECBM:I = 0x9

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ONLY:I = 0x8

.field public static final blacklist NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS:I = 0x7

.field public static final blacklist PRIMARY_PHONE_ID:I = 0x0

.field private static final blacklist PROJECT_SIM_NUM:I

.field public static final blacklist SALES_CODE:Ljava/lang/String;

.field public static final blacklist SECONDARY_PHONE_ID:I = 0x1

.field public static final blacklist SHIP_BUILD:Z

.field public static final blacklist VZW_DEVICE_NOT:I = 0x0

.field public static final blacklist VZW_DEVICE_PHONE_CDMALESS:I = 0x3

.field public static final blacklist VZW_DEVICE_PHONE_HVOLTE:I = 0x2

.field public static final blacklist VZW_DEVICE_PHONE_UNKNOWN:I = 0x1

.field private static blacklist mCscCountry:Ljava/lang/String;

.field private static blacklist mCscCountry2:Ljava/lang/String;

.field private static blacklist mCscMainOperator:Ljava/lang/String;

.field private static blacklist mCscMainOperator2:Ljava/lang/String;

.field private static blacklist mCscOperatorType:Ljava/lang/String;

.field private static blacklist mCscOperatorType2:Ljava/lang/String;

.field private static blacklist mCscSubOperator:Ljava/lang/String;

.field private static blacklist mCscSubOperator2:Ljava/lang/String;

.field private static blacklist mNetworkCode:Ljava/lang/String;

.field private static blacklist mNetworkCode2:Ljava/lang/String;

.field private static blacklist mSalesCode:Ljava/lang/String;

.field private static blacklist mSimHotswapSupported:Z

.field private static blacklist mSimbasedChangeType:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 60
    const-string/jumbo v0, "mdc.sys.enable_smff"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    .line 63
    const-string/jumbo v0, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    .line 64
    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    .line 65
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v4, "NONE"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.csc.omcnw_code"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    .line 66
    const-string/jumbo v5, "persist.radio.multisim.config"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    .line 67
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    .line 94
    invoke-static {v1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mCscMainOperator:Ljava/lang/String;

    .line 95
    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mCscSubOperator:Ljava/lang/String;

    .line 96
    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mCscOperatorType:Ljava/lang/String;

    .line 97
    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mCscCountry:Ljava/lang/String;

    .line 98
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    .line 101
    invoke-static {v3, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCscMainOperator2:Ljava/lang/String;

    .line 102
    invoke-static {v3, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCscSubOperator2:Ljava/lang/String;

    .line 103
    invoke-static {v3, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCscOperatorType2:Ljava/lang/String;

    .line 104
    invoke-static {v3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCscCountry2:Ljava/lang/String;

    .line 105
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.csc.omcnw_code2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    .line 107
    sput-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    .line 108
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist InitializeNetworkTypeCapability(II)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "ntcType"    # I

    .line 114
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "ntcValue":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 117
    const-string v2, "---"

    return-object v2

    .line 120
    :cond_0
    aget-object v2, v1, p1

    return-object v2
.end method

.method private static blacklist InitializeSimbasedType()V
    .locals 7

    .line 124
    const-string/jumbo v0, "ro.simbased.changetype"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "changeType":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    .line 126
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    array-length v6, v2

    if-ge v6, v3, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    .line 132
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    new-array v2, v3, [Ljava/lang/String;

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    .line 128
    aput-object v1, v2, v5

    .line 129
    const-string v1, "DISABLED"

    aput-object v1, v2, v4

    .line 134
    :goto_1
    return-void
.end method

.method public static blacklist dump()V
    .locals 11

    .line 583
    const-string v0, "----- TelephonyFeatures.dump -----"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_SMF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getMainOperatorName(KEEP_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getSubOperatorName(KEEP_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getOperatorType(KEEP_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getCountryName(KEEP_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getMainOperatorName(CLEAR_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getSubOperatorName(CLEAR_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getOperatorType(CLEAR_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getCountryName(CLEAR_PREVIOUS_FEATURE): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  isMainOperatorSpecific(VZW, SPR, USC): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VZW"

    const-string v5, "SPR"

    const-string v6, "USC"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  isMainOperatorSpecific(SKT, KTT, LGT): "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SKT"

    const-string v8, "KTT"

    const-string v9, "LGT"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  isSubOperatorSpecific(VZW, SPR, USC): "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  isSubOperatorSpecific(SKT, KTT, LGT): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  isCountrySpecific(USA): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "USA"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  isCountrySpecific(KOR): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KOR"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IS_PHONE: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHIP_BUILD: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MULTI_SIM_CONFIG: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSalesCode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkCode(PRIMARY / SECONDARY): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVzwDeviceType: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getVzwDeviceType(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getVzwDeviceType(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  getNtcFeature("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->featureToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist featureToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ntcFeature"    # I

    .line 611
    packed-switch p0, :pswitch_data_0

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown NTC_FEATURE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 629
    :pswitch_0
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ECBM"

    return-object v0

    .line 627
    :pswitch_1
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ONLY"

    return-object v0

    .line 625
    :pswitch_2
    const-string v0, "NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS"

    return-object v0

    .line 623
    :pswitch_3
    const-string v0, "NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING"

    return-object v0

    .line 621
    :pswitch_4
    const-string v0, "NTC_FEATURE_ERI_ON_AP"

    return-object v0

    .line 619
    :pswitch_5
    const-string v0, "NTC_FEATURE_ERI_ON_CP"

    return-object v0

    .line 617
    :pswitch_6
    const-string v0, "NTC_FEATURE_CSC_SPRINT_CHAMELEON"

    return-object v0

    .line 615
    :pswitch_7
    const-string v0, "NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING"

    return-object v0

    .line 613
    :pswitch_8
    const-string v0, "NTC_FEATURE_REMOVE_ECB_EXIT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getBoolean(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist getBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 344
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getBoolean(ILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist getBoolean(ILjava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "checkLastSim"    # Z

    .line 350
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 353
    .end local v0    # "result":Z
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 356
    .restart local v0    # "result":Z
    :goto_0
    return v0
.end method

.method public static blacklist getCountryName(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 175
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCountryName(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "checkLastSim"    # Z

    .line 179
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 183
    .end local v0    # "ntcRawData":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscCountry2:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscCountry:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static blacklist getInt(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;

    .line 380
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getInt(ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist getInt(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 384
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getInt(ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist getInt(ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "checkLastSim"    # Z

    .line 390
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 393
    .end local v0    # "result":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 396
    .restart local v0    # "result":I
    :goto_0
    return v0
.end method

.method public static blacklist getMainOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 139
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMainOperatorName(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "checkLastSim"    # Z

    .line 143
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    .end local v0    # "ntcRawData":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscMainOperator2:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscMainOperator:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static blacklist getNetworkCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 191
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static blacklist getNtcFeature(II)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "ntcFeature"    # I

    .line 195
    const/4 v0, 0x0

    const-string v1, "USC"

    const-string v2, "VZW"

    const-string v3, "SPR"

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown NTC feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :pswitch_0
    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril.sim.mobility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 243
    .local v1, "isSimMobility":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "simCountry":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "pr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "vi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    const-string v3, "No ECBM (Reason: SimMobility)"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 249
    .end local v1    # "isSimMobility":Z
    .end local v2    # "simCountry":Ljava/lang/String;
    goto/16 :goto_0

    .line 247
    .restart local v1    # "isSimMobility":Z
    .restart local v2    # "simCountry":Ljava/lang/String;
    :cond_0
    return v4

    .line 236
    .end local v1    # "isSimMobility":Z
    .end local v2    # "simCountry":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Softphone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    return v4

    .line 228
    :pswitch_2
    const-string v1, "JPN"

    const-string v3, "CHN"

    const-string v5, "KOR"

    filled-new-array {v1, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    const-string v1, "CarrierFeature_RIL_DisableEons"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->getBooleanFeature(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    const-string v1, "CarrierFeature_RIL_ReferEonsWithoutLac"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->getBooleanFeature(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    :cond_1
    return v4

    .line 223
    :pswitch_3
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    return v4

    .line 218
    :pswitch_4
    const-string v2, "XAA"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    return v4

    .line 212
    :pswitch_5
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    return v4

    .line 207
    :pswitch_6
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    return v4

    .line 202
    :pswitch_7
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    return v4

    .line 197
    :pswitch_8
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    return v4

    .line 256
    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getOperatorType(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 163
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOperatorType(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "checkLastSim"    # Z

    .line 167
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getOperatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    .end local v0    # "ntcRawData":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscOperatorType2:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscOperatorType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static blacklist getPropertyMultiSimBased(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 526
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    if-nez p1, :cond_1

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 527
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v0, "Property is wrong"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSalesCode()Ljava/lang/String;
    .locals 1

    .line 187
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSimbasedChangeType()Ljava/lang/String;
    .locals 2

    .line 519
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 520
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    .line 522
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;

    .line 360
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 364
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "carrierKey"    # Ljava/lang/String;
    .param p2, "cscKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "checkLastSim"    # Z

    .line 370
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .restart local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static blacklist getSubOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 151
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubOperatorName(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "checkLastSim"    # Z

    .line 155
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->ENABLE_SMF:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getSubOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "ntcRawData":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscSubOperator2:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCscSubOperator:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static blacklist getVzwDeviceType(I)I
    .locals 4
    .param p0, "phoneId"    # I

    .line 560
    const/4 v0, 0x2

    .line 562
    .local v0, "MODEM_CAPA_RAT_1XCDMA":I
    const/4 v1, 0x0

    .line 564
    .local v1, "deviceType":I
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril.supported_rat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 566
    .local v2, "supportedRat":I
    if-ne v2, v3, :cond_0

    .line 567
    const/4 v1, 0x1

    goto :goto_1

    .line 569
    :cond_0
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    move v1, v3

    .line 573
    .end local v2    # "supportedRat":I
    :cond_2
    :goto_1
    return v1
.end method

.method public static blacklist isChnGlobalModel()Z
    .locals 1

    .line 264
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isChnGlobalModel(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 268
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs blacklist isCountrySpecific(I[Ljava/lang/String;)Z
    .locals 7
    .param p0, "phoneId"    # I
    .param p1, "countries"    # [Ljava/lang/String;

    .line 307
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(IZ)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "country":Ljava/lang/String;
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 310
    .local v5, "x":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 311
    return v0

    .line 309
    .end local v5    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return v3
.end method

.method public static blacklist isCrossMappingSupported()Z
    .locals 1

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isGCFMode(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 449
    const-string/jumbo v0, "persist.radio.gcfmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "gcfMode":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static blacklist isGlobalModel(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 272
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "numeric"    # [Ljava/lang/String;

    .line 329
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "iccOperatorNumeric":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 332
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    const/4 v1, 0x1

    return v1

    .line 331
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    :cond_1
    return v2
.end method

.method public static blacklist isKorSimInKorDevice(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 542
    const-string v0, "KOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 543
    return v1

    .line 546
    :cond_0
    const-string/jumbo v0, "ril.simtype"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "simType":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    return v1

    .line 548
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isLatinApHandleStkCmd(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 467
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MNX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 471
    :cond_1
    :goto_0
    const-string v0, "LTN:isLatinApHandleStkCmd: true"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isMTNoperator(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 428
    const-string v0, "65510"

    const-string v1, "62001"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist isMainOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 7
    .param p0, "phoneId"    # I
    .param p1, "mainOperators"    # [Ljava/lang/String;

    .line 285
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(IZ)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "mainOperator":Ljava/lang/String;
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 288
    .local v5, "x":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    return v0

    .line 287
    .end local v5    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    :cond_1
    return v3
.end method

.method public static varargs blacklist isNetworkCodeSpecific(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "networkCodes"    # [Ljava/lang/String;

    .line 318
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 319
    .local v3, "x":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    return v4

    .line 321
    :cond_0
    if-eq p0, v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    return v4

    .line 318
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_2
    return v1
.end method

.method public static blacklist isOneTray()Z
    .locals 3

    .line 508
    const-string v0, "1"

    .line 509
    .local v0, "trayCount":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string/jumbo v1, "ril.simslottype2"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "sim2Path":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const/4 v2, 0x1

    return v2

    .line 515
    .end local v1    # "sim2Path":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isSimHotswapSupported()Z
    .locals 1

    .line 276
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    return v0
.end method

.method public static varargs blacklist isSubOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 7
    .param p0, "phoneId"    # I
    .param p1, "subOperators"    # [Ljava/lang/String;

    .line 296
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(IZ)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "subOperator":Ljava/lang/String;
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 299
    .local v5, "x":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    return v0

    .line 298
    .end local v5    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return v3
.end method

.method public static blacklist isUsaGlobalModel(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 260
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 579
    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method public static blacklist needApHandlingStkCmdForCp(ILjava/lang/String;)Z
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "cmd"    # Ljava/lang/String;

    .line 457
    const-string v0, "SetupCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isLatinApHandleStkCmd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 463
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needSecSimOnOffEx()Z
    .locals 6

    .line 437
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, "first_api_level":I
    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    .line 440
    const-string/jumbo v2, "ro.product.model"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SM-M205F"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 441
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM-M305F"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 445
    :cond_1
    return v1
.end method

.method public static blacklist needToCheckVolteSubscriber(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 400
    const-string v0, "23001"

    const-string v1, "24001"

    const-string v2, "26201"

    const-string v3, "50501"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    return v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needToRunLteRoaming(I)Z
    .locals 9
    .param p0, "phoneId"    # I

    .line 408
    const-string v0, "SKT"

    const-string v1, "KTT"

    const-string v2, "LGT"

    const-string v3, "KOO"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 409
    return v5

    .line 412
    :cond_0
    const-string/jumbo v4, "ril.simtype"

    const-string v6, ""

    invoke-static {p0, v4, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "simType":Ljava/lang/String;
    const-string v6, "2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 415
    :cond_1
    const-string v1, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 416
    :cond_2
    const-string v2, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    :cond_3
    return v8

    .line 418
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    :cond_5
    return v8

    .line 423
    :cond_6
    return v5
.end method

.method public static blacklist showVoiceAsDataNetworkType(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 482
    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist supportDualLte()Z
    .locals 4

    .line 496
    sget v0, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 497
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_SupportDualIMS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 500
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DUAL_IMS"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "configDualIms":Ljava/lang/String;
    const-string v2, "DSDS_SI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DSDS_DI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    return v1

    .line 502
    :cond_2
    :goto_0
    return v3

    .line 498
    .end local v0    # "configDualIms":Ljava/lang/String;
    :cond_3
    :goto_1
    return v1
.end method
