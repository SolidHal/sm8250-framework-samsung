.class Lcom/samsung/android/feature/SecCarrier;
.super Ljava/lang/Object;
.source "SecCarrier.java"


# static fields
.field private static final blacklist TAG_CARRIER_ID:Ljava/lang/String; = "canonical_id"

.field private static final blacklist TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final blacklist TAG_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private blacklist carrierId:I

.field private blacklist features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist version:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/feature/SecCarrier;->version:I

    .line 29
    const-string v1, "canonical_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/feature/SecCarrier;->carrierId:I

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/feature/SecCarrier;->carrierId:I

    .line 35
    :goto_0
    const-string v1, "feature"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    .local v1, "featureObject":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 37
    return-void

    .line 40
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .local v3, "features":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_1

    .line 47
    :cond_2
    iput-object v3, p0, Lcom/samsung/android/feature/SecCarrier;->features:Ljava/util/Map;

    .line 48
    return-void
.end method


# virtual methods
.method blacklist getCarrierId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/android/feature/SecCarrier;->carrierId:I

    return v0
.end method

.method blacklist getFeatures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/samsung/android/feature/SecCarrier;->features:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/samsung/android/feature/SecCarrier;->version:I

    return v0
.end method
