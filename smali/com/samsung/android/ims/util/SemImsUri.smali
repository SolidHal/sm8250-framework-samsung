.class public Lcom/samsung/android/ims/util/SemImsUri;
.super Ljava/lang/Object;
.source "SemImsUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/util/SemImsUri$UriType;
    }
.end annotation


# static fields
.field public static final whitelist test-api CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/util/SemImsUri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mMsisdn:Ljava/lang/String;

.field private blacklist mScheme:Ljava/lang/String;

.field private blacklist mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field private blacklist mUser:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/util/SemImsUri$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/util/SemImsUri;->readFromParcel(Landroid/os/Parcel;)V

    .line 162
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/util/SemImsUri$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/ims/util/SemImsUri$1;

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/util/SemImsUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ims/util/SemImsUri$UriType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemImsUri$UriType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getMsisdn()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getScheme()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getUriType()Lcom/samsung/android/ims/util/SemImsUri$UriType;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-object v0
.end method

.method public whitelist test-api getUser()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public blacklist setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public blacklist setUriType(Ljava/lang/String;)V
    .locals 2
    .param p1, "uriType"    # Ljava/lang/String;

    .line 134
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/ims/util/SemImsUri$UriType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemImsUri$UriType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public blacklist setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    invoke-virtual {v0}, Lcom/samsung/android/ims/util/SemImsUri$UriType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return-void
.end method
