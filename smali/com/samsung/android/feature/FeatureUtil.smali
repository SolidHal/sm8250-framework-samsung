.class Lcom/samsung/android/feature/FeatureUtil;
.super Ljava/lang/Object;
.source "FeatureUtil.java"


# static fields
.field private static final blacklist CURRENT_SIMSLOT_CANONICAL_ID:Ljava/lang/String; = "mdc.sys.sec_cid"

.field private static final blacklist CURRENT_SIMSLOT_PARENT_CANONICAL_ID:Ljava/lang/String; = "mdc.sys.sec_pcid"

.field private static final blacklist DEFAULT_FEATURE_FILE_NAME:Ljava/lang/String; = "customer_carrier_feature.json"

.field static final blacklist FEATURE_GROUP_KEY:Ljava/lang/String; = "CarrierFeature_Common_CarrierGroup"

.field static final blacklist FEATURE_GROUP_VALUE_UNKNOWN:Ljava/lang/String; = "UKN"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist PERSIST_OMC_PATH:Ljava/lang/String; = "persist.sys.omc_path"

.field private static final blacklist PERSIST_SIMSLOT_CANONICAL_ID:Ljava/lang/String; = "persist.sys.sec_cid"

.field private static final blacklist PERSIST_SIMSLOT_FEATURE:Ljava/lang/String; = "persist.sys.sec_feature"

.field private static final blacklist PERSIST_SIMSLOT_PARENT_CANONICAL_ID:Ljava/lang/String; = "persist.sys.sec_pcid"

.field private static final blacklist PERSIST_SIM_COUNT:Ljava/lang/String; = "ro.multisim.simslotcount"

.field private static final blacklist PERSIST_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field private static final blacklist PERSIST_SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field private static final blacklist TARGET_FEATURE_FILE_NAME:Ljava/lang/String; = "carrier_feature_%s.json"

.field private static final blacklist UNKNOWN_CARRIER_ID:I = -0x1

.field private static final blacklist UPDATE_TARGET_FILE_PATH:Ljava/lang/String; = "/omr/carrier"

.field static final blacklist VERSION_DEFAULT:I = -0x1

.field private static final blacklist VERSION_RELOAD:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/samsung/android/feature/FeatureUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getCurrentCanonicalID(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdc.sys.sec_pcid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 106
    return v0
.end method

.method static blacklist getDefaultCanonicalID()I
    .locals 1

    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist getDefaultFeature()Lcom/samsung/android/feature/SecCarrier;
    .locals 2

    .line 84
    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultFeaturePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "customer_carrier_feature.json"

    invoke-static {v0, v1}, Lcom/samsung/android/feature/FeatureUtil;->getSecCarrierFeature(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultFeaturePath()Ljava/lang/String;
    .locals 1

    .line 96
    const-string/jumbo v0, "persist.sys.omc_path"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getLastCanonicalID(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sec_pcid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    return v0
.end method

.method static blacklist getLastFeatureVersion(II)I
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "canonicalId"    # I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sec_feature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "featureInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 122
    return v2

    .line 124
    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "feature":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 127
    :try_start_0
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 128
    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 130
    :cond_1
    return v3

    .line 131
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 135
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    return v2
.end method

.method private static blacklist getReadablePhoneIDName(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 139
    if-nez p0, :cond_0

    .line 140
    const-string v0, ""

    return-object v0

    .line 142
    :cond_0
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSecCarrierFeature(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/feature/SecCarrier;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 64
    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    sget-object v3, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "files does not exist from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v1

    .line 69
    :cond_0
    invoke-static {v2}, Lcom/samsung/android/feature/TextDecoder;->decode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    sget-object v4, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to decode feature from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v1

    .line 74
    :cond_1
    new-instance v4, Lcom/samsung/android/feature/SecCarrier;

    invoke-direct {v4, v3}, Lcom/samsung/android/feature/SecCarrier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 76
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to read feature from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with exception: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v2    # "ex":Ljava/lang/Exception;
    return-object v1
.end method

.method static blacklist getTargetFeature(II)Lcom/samsung/android/feature/SecCarrier;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "canonicalId"    # I

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/omr/carrier/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "featureFilePath":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getTargetFeatureName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/feature/FeatureUtil;->getSecCarrierFeature(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getTargetFeatureName(I)Ljava/lang/String;
    .locals 4
    .param p0, "canonicalId"    # I

    .line 102
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "carrier_feature_%s.json"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist isSimLoaded(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 158
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->readSimState(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist readSimCount()I
    .locals 2

    .line 154
    const-string/jumbo v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist readSimState(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .line 149
    const-string v0, "gsm.sim.state"

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "simStates":[Ljava/lang/String;
    aget-object v1, v0, p0

    return-object v1
.end method
