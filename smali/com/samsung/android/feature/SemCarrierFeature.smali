.class public Lcom/samsung/android/feature/SemCarrierFeature;
.super Ljava/lang/Object;
.source "SemCarrierFeature.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static blacklist sInstance:Lcom/samsung/android/feature/SemCarrierFeature;


# instance fields
.field private blacklist mDefaultFeatureList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSimTargetCanonicalIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSimTargetFeatureList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSimTargetVersions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetCanonicalIds:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetVersions:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetFeatureList:Ljava/util/Map;

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/feature/SemCarrierFeature;->loadDefaultFeatures()V

    .line 77
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->readSimCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->loadTargetFeatures(I)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "phoneId":I
    :cond_0
    return-void
.end method

.method public static whitelist createInstance()Lcom/samsung/android/feature/SemCarrierFeature;
    .locals 1

    .line 71
    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    .line 72
    return-object v0
.end method

.method private blacklist get(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->isTargetFeatureChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->loadTargetFeatures(I)V

    .line 90
    :cond_0
    if-eqz p3, :cond_1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetCanonicalIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetCanonicalIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetCanonicalIds:Ljava/util/Map;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getCurrentCanonicalID(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemCarrierFeature;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    .line 60
    :cond_0
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    return-object v0
.end method

.method private blacklist isTargetFeatureChanged(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetCanonicalIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(II)I

    move-result v0

    .line 109
    .local v0, "featureVersion":I
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetVersions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isTargetFeatureSupported(Lcom/samsung/android/feature/SecCarrier;)Z
    .locals 2
    .param p1, "carrier"    # Lcom/samsung/android/feature/SecCarrier;

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/feature/SecCarrier;->getFeatures()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CarrierFeature_Common_CarrierGroup"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "UKN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist loadDefaultFeatures()V
    .locals 4

    .line 116
    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultFeature()Lcom/samsung/android/feature/SecCarrier;

    move-result-object v0

    .line 117
    .local v0, "last":Lcom/samsung/android/feature/SecCarrier;
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "update carrier default features"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v0, :cond_0

    .line 119
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default feature version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->setSlotDefaultFeatureList(Lcom/samsung/android/feature/SecCarrier;)V

    .line 122
    :cond_0
    return-void
.end method

.method private blacklist loadTargetFeatures(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 132
    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v0

    .line 133
    .local v0, "defaultId":I
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v1

    .line 135
    .local v1, "canonicalId":I
    iget-object v2, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetCanonicalIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v2, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetVersions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    if-le v1, v0, :cond_0

    .line 138
    invoke-static {p1, v1}, Lcom/samsung/android/feature/FeatureUtil;->getTargetFeature(II)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v2

    .line 139
    .local v2, "last":Lcom/samsung/android/feature/SecCarrier;
    sget-object v3, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "update carrier target features"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/feature/SecCarrier;->getCarrierId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 141
    sget-object v3, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "target feature version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->setSlotTargetFeatureList(ILcom/samsung/android/feature/SecCarrier;)V

    .line 145
    .end local v2    # "last":Lcom/samsung/android/feature/SecCarrier;
    :cond_0
    return-void
.end method

.method private blacklist setSlotDefaultFeatureList(Lcom/samsung/android/feature/SecCarrier;)V
    .locals 2
    .param p1, "carrier"    # Lcom/samsung/android/feature/SecCarrier;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/feature/SecCarrier;->getFeatures()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    return-void
.end method

.method private blacklist setSlotTargetFeatureList(ILcom/samsung/android/feature/SecCarrier;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "carrier"    # Lcom/samsung/android/feature/SecCarrier;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetCanonicalIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getCarrierId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetVersions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-direct {p0, p2}, Lcom/samsung/android/feature/SemCarrierFeature;->isTargetFeatureSupported(Lcom/samsung/android/feature/SecCarrier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getFeatures()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target feature does not supported for carrier id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getCarrierId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mSimTargetFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getBoolean(ILjava/lang/String;ZZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "checkLastSim"    # Z

    .line 197
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 199
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 201
    :cond_0
    return p3

    .line 203
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    return p3
.end method

.method public whitelist getBooleanArray(ILjava/lang/String;Z)[Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 221
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Z

    .line 225
    .local v2, "arrays":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 226
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aput-boolean v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 229
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "arrays":[Z
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getCarrierId(IZ)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "checkLastSim"    # Z

    .line 176
    if-eqz p2, :cond_0

    .line 177
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v0

    return v0

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getCurrentCanonicalID(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDouble(ILjava/lang/String;DZ)D
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D
    .param p5, "checkLastSim"    # Z

    .line 351
    :try_start_0
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 353
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 355
    :cond_0
    return-wide p3

    .line 357
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    return-wide p3
.end method

.method public whitelist getDoubleArray(ILjava/lang/String;Z)[D
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 375
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "value":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [D

    .line 379
    .local v2, "arrays":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 380
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 383
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "arrays":[D
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getInt(ILjava/lang/String;IZ)I
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "checkLastSim"    # Z

    .line 247
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 251
    :cond_0
    return p3

    .line 253
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    return p3
.end method

.method public whitelist getIntArray(ILjava/lang/String;Z)[I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 271
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "value":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    .line 275
    .local v2, "arrays":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 276
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 279
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "arrays":[I
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getLong(ILjava/lang/String;JZ)J
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .param p5, "checkLastSim"    # Z

    .line 299
    :try_start_0
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 301
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 303
    :cond_0
    return-wide p3

    .line 305
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    return-wide p3
.end method

.method public whitelist getLongArray(ILjava/lang/String;Z)[J
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 323
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "value":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [J

    .line 327
    .local v2, "arrays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 328
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 331
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "arrays":[J
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "checkLastSim"    # Z

    .line 403
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 405
    return-object v0

    .line 407
    :cond_0
    return-object p3

    .line 409
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    return-object p3
.end method

.method public whitelist getStringArray(ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 427
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "value":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 429
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
