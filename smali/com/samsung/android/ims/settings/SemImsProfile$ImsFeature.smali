.class public Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;
.super Ljava/lang/Object;
.source "SemImsProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsFeature"
.end annotation


# static fields
.field public static final whitelist test-api CDPN:Ljava/lang/String; = "cdpn"

.field public static final whitelist test-api CHATBOT_COMMUNICATION:Ljava/lang/String; = "chatbot-communication"

.field public static final whitelist test-api EC:Ljava/lang/String; = "ec"

.field public static final whitelist test-api EUC:Ljava/lang/String; = "euc"

.field public static final whitelist test-api FT:Ljava/lang/String; = "ft"

.field public static final whitelist test-api FT_HTTP:Ljava/lang/String; = "ft_http"

.field public static final whitelist test-api GLS:Ljava/lang/String; = "gls"

.field public static final whitelist test-api IM:Ljava/lang/String; = "im"

.field public static final whitelist test-api IS:Ljava/lang/String; = "is"

.field public static final whitelist test-api LASTSEEN:Ljava/lang/String; = "lastseen"

.field public static final whitelist test-api MMTEL_CALL_COMPOSER:Ljava/lang/String; = "mmtel-call-composer"

.field public static final whitelist test-api MMTEL_VOICE:Ljava/lang/String; = "mmtel"

.field public static final whitelist test-api MMTEL_VOICE_VIDEO:Ljava/lang/String; = "mmtel-video"

.field public static final whitelist test-api OPTIONS:Ljava/lang/String; = "options"

.field public static final whitelist test-api PLUG_IN:Ljava/lang/String; = "plug-in"

.field public static final whitelist test-api PRESENCE:Ljava/lang/String; = "presence"

.field public static final whitelist test-api PROFILE:Ljava/lang/String; = "profile"

.field public static final whitelist test-api SLM:Ljava/lang/String; = "slm"

.field public static final whitelist test-api SMSIP:Ljava/lang/String; = "smsip"

.field public static final whitelist test-api SS:Ljava/lang/String; = "ss"

.field public static final whitelist test-api VS:Ljava/lang/String; = "vs"

.field public static final whitelist test-api XDM:Ljava/lang/String; = "xdm"

.field private static final blacklist mImsFeatureList:[Ljava/lang/String;

.field protected static final blacklist rcsServices:[Ljava/lang/String;

.field protected static final blacklist volteServices:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 126
    const-string/jumbo v0, "mmtel"

    const-string/jumbo v1, "mmtel-video"

    const-string/jumbo v2, "mmtel-call-composer"

    const-string/jumbo v3, "smsip"

    const-string/jumbo v4, "ss"

    const-string v5, "cdpn"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->volteServices:[Ljava/lang/String;

    .line 133
    const-string/jumbo v1, "options"

    const-string/jumbo v2, "presence"

    const-string v3, "im"

    const-string v4, "ft"

    const-string v5, "ft_http"

    const-string/jumbo v6, "slm"

    const-string/jumbo v7, "is"

    const-string/jumbo v8, "vs"

    const-string v9, "euc"

    const-string v10, "gls"

    const-string/jumbo v11, "profile"

    const-string v12, "ec"

    const-string v13, "chatbot-communication"

    const-string/jumbo v14, "plug-in"

    const-string/jumbo v15, "lastseen"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->rcsServices:[Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "mmtel-video"

    const-string/jumbo v2, "mmtel"

    const-string/jumbo v3, "smsip"

    const-string/jumbo v4, "slm"

    const-string v5, "im"

    const-string v6, "ft"

    const-string v7, "ft_http"

    const-string/jumbo v8, "is"

    const-string/jumbo v9, "vs"

    const-string/jumbo v10, "options"

    const-string/jumbo v11, "presence"

    const-string/jumbo v12, "xdm"

    const-string v13, "euc"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->mImsFeatureList:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRcsServiceList()[Ljava/lang/String;
    .locals 1

    .line 167
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->rcsServices:[Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getVoLteServiceList()[Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->volteServices:[Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist isValidImsFeature(Ljava/lang/String;)Z
    .locals 6
    .param p0, "queriedFeature"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->mImsFeatureList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 148
    .local v4, "feature":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    const/4 v0, 0x1

    return v0

    .line 147
    .end local v4    # "feature":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_1
    return v2
.end method
