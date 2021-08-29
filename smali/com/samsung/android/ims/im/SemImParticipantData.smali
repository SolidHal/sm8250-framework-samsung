.class public Lcom/samsung/android/ims/im/SemImParticipantData;
.super Ljava/lang/Object;
.source "SemImParticipantData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist test-api CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/im/SemImParticipantData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mChatId:Ljava/lang/String;

.field private blacklist mId:I

.field private blacklist mStatus:I

.field private blacklist mUriString:Ljava/lang/String;

.field private blacklist mUserAlias:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Lcom/samsung/android/ims/im/SemImParticipantData$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/im/SemImParticipantData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/im/SemImParticipantData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 172
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/im/SemImParticipantData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/ims/im/SemImParticipantData$1;

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/im/SemImParticipantData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "status"    # I
    .param p5, "userAlias"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    .line 42
    iput p4, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    .line 43
    iput-object p5, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getChatId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    return v0
.end method

.method public whitelist test-api getStatus()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    return v0
.end method

.method public whitelist test-api getUriString()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getUserAlias()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setChatId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mChatId"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public blacklist setId(I)V
    .locals 0
    .param p1, "mId"    # I

    .line 113
    iput p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    .line 114
    return-void
.end method

.method public blacklist setStatus(I)V
    .locals 0
    .param p1, "mStatus"    # I

    .line 123
    iput p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    .line 124
    return-void
.end method

.method public blacklist setUriString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUriString"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public blacklist setUserAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserAlias"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void
.end method
