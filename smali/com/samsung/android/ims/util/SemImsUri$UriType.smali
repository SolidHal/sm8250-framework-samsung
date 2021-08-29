.class public final enum Lcom/samsung/android/ims/util/SemImsUri$UriType;
.super Ljava/lang/Enum;
.source "SemImsUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/util/SemImsUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ims/util/SemImsUri$UriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field public static final enum whitelist test-api SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field public static final enum whitelist test-api TEL_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field public static final enum whitelist test-api URN:Lcom/samsung/android/ims/util/SemImsUri$UriType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    const-string v1, "TEL_URI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ims/util/SemImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->TEL_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 34
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    const-string v1, "SIP_URI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/ims/util/SemImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 35
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    const-string v1, "URN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/ims/util/SemImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->URN:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 32
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/ims/util/SemImsUri$UriType;

    sget-object v5, Lcom/samsung/android/ims/util/SemImsUri$UriType;->TEL_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->$VALUES:[Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemImsUri$UriType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-object v0
.end method

.method public static whitelist test-api values()[Lcom/samsung/android/ims/util/SemImsUri$UriType;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->$VALUES:[Lcom/samsung/android/ims/util/SemImsUri$UriType;

    invoke-virtual {v0}, [Lcom/samsung/android/ims/util/SemImsUri$UriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-object v0
.end method
