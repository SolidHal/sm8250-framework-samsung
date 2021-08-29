.class public Lcom/samsung/android/ims/settings/SemImsProfile;
.super Ljava/lang/Object;
.source "SemImsProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/settings/SemImsProfile$RcsProfileType;,
        Lcom/samsung/android/ims/settings/SemImsProfile$ImsCategory;,
        Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;,
        Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;
    }
.end annotation


# static fields
.field public static final whitelist test-api CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/settings/SemImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemImsProfile"


# instance fields
.field private blacklist mBody:Lorg/json/JSONObject;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 242
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/settings/SemImsProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    .line 273
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;->update(Landroid/content/ContentValues;)V

    .line 274
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/settings/SemImsProfile;->fromJson(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/settings/SemImsProfile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/ims/settings/SemImsProfile$1;

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist test-api <init>(Lcom/samsung/android/ims/settings/SemImsProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/samsung/android/ims/settings/SemImsProfile;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-direct {p1}, Lcom/samsung/android/ims/settings/SemImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/settings/SemImsProfile;->fromJson(Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;->fromJson(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private blacklist fromJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/ims/settings/SemImsProfile;->splitNetwork()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 305
    :goto_1
    return-void
.end method

.method private blacklist getAllServiceSet()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 337
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 338
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 340
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 341
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 342
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 343
    .local v3, "n":Lorg/json/JSONObject;
    const-string/jumbo v4, "services"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 344
    .local v4, "serviceArr":Lorg/json/JSONArray;
    if-nez v4, :cond_0

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllServiceSet: No services array in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemImsProfile"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    goto :goto_2

    .line 349
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 350
    .local v5, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 351
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 353
    .end local v6    # "j":I
    :cond_1
    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/ims/settings/SemImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v3    # "n":Lorg/json/JSONObject;
    .end local v4    # "serviceArr":Lorg/json/JSONArray;
    .end local v5    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private blacklist getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNetworkType(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 333
    invoke-static {p0}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->from(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->access$100(Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;)I

    move-result v0

    return v0
.end method

.method private blacklist put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 379
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private blacklist toJson()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist update(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 278
    if-eqz p1, :cond_2

    .line 279
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 280
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 282
    const-string v3, "\\[\\{.*\\}\\]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 292
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    nop

    .line 293
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasEmergencySupport()Z
    .locals 1

    .line 385
    const-string v0, "emergency_support"

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/settings/SemImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/ims/settings/SemImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 232
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const/4 v0, 0x1

    return v0

    .line 235
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist splitNetwork()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 315
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 316
    .local v0, "newNetwork":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 317
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 318
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 319
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 320
    .local v4, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "types":Ljava/lang/String;
    const-string v7, ","

    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 322
    .local v10, "s":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    const-string/jumbo v12, "services"

    const-string v13, "enabled"

    const-string v14, "dereg_timeout"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v4, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 324
    .local v11, "tmp":Lorg/json/JSONObject;
    invoke-virtual {v11, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 321
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "tmp":Lorg/json/JSONObject;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 318
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "types":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    :cond_2
    return-void
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/ims/settings/SemImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    return-void
.end method
