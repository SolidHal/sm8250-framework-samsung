.class public final enum Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
.super Ljava/lang/Enum;
.source "SemImsProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api ALL:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api CDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api EDGE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api EHRPD:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api EVDO_0:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api EVDO_A:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api EVDO_B:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api GPRS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api GSM:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api HSDPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api HSPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api HSPAP:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api HSUPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api LTE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api NR:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api TDSCDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api UMTS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api WIFI:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist test-api _1XRTT:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;


# instance fields
.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 172
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "GPRS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->GPRS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "EDGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EDGE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "UMTS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UMTS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "CDMA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->CDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "EVDO_0"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_0:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "EVDO_A"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_A:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "_1XRTT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->_1XRTT:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "HSDPA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSDPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 173
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "HSUPA"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSUPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "HSPA"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "EVDO_B"

    const/16 v13, 0xb

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_B:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "LTE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->LTE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "EHRPD"

    const/16 v14, 0xe

    invoke-direct {v0, v1, v15, v14}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EHRPD:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "HSPAP"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSPAP:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "GSM"

    const/16 v14, 0x10

    invoke-direct {v0, v1, v15, v14}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->GSM:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "TDSCDMA"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->TDSCDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 174
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "WIFI"

    const/16 v14, 0x12

    invoke-direct {v0, v1, v15, v14}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->WIFI:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "NR"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->NR:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "ALL"

    const/16 v14, 0x13

    const/16 v13, 0x64

    invoke-direct {v0, v1, v14, v13}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->ALL:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 171
    new-array v1, v15, [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    sget-object v13, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v13, v1, v2

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->GPRS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EDGE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UMTS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->CDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_0:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_A:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v8

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->_1XRTT:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v9

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSDPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v10

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSUPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v11

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    aput-object v2, v1, v12

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_B:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->LTE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EHRPD:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSPAP:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->GSM:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->TDSCDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->WIFI:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->NR:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    .line 179
    iput p3, p0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    .line 180
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 171
    iget v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    return v0
.end method

.method public static whitelist test-api from(I)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 5
    .param p0, "type"    # I

    .line 183
    invoke-static {}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->values()[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 184
    .local v3, "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    iget v4, v3, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    if-ne v4, p0, :cond_0

    .line 185
    return-object v3

    .line 183
    .end local v3    # "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static whitelist test-api from(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 5
    .param p0, "typeName"    # Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->values()[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 194
    .local v3, "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    invoke-virtual {v3}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    return-object v3

    .line 193
    .end local v3    # "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 171
    const-class v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static whitelist test-api values()[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 1

    .line 171
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method


# virtual methods
.method public varargs whitelist test-api isOneOf([Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;)Z
    .locals 4
    .param p1, "types"    # [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 219
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 220
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 221
    .local v3, "type":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    if-ne p0, v3, :cond_0

    .line 222
    const/4 v0, 0x1

    return v0

    .line 220
    .end local v3    # "type":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 204
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$2;->$SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE:[I

    invoke-virtual {p0}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 212
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rtn":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v0    # "rtn":Ljava/lang/String;
    :cond_0
    const-string v0, "hspa+"

    .line 210
    .restart local v0    # "rtn":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v0    # "rtn":Ljava/lang/String;
    :cond_1
    const-string v0, "1xrtt"

    .line 207
    .restart local v0    # "rtn":Ljava/lang/String;
    nop

    .line 215
    :goto_0
    return-object v0
.end method
