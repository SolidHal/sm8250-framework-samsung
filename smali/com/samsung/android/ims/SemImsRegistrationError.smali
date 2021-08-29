.class public Lcom/samsung/android/ims/SemImsRegistrationError;
.super Ljava/lang/Object;
.source "SemImsRegistrationError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist test-api CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/SemImsRegistrationError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDeregistrationReason:I

.field private blacklist mDetailedDeregiReason:I

.field private blacklist mSipErrorCode:I

.field private blacklist mSipErrorReason:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistrationError$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/SemImsRegistrationError$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/SemImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    .line 43
    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "sipErrorCode"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "sipErrorCode"    # I
    .param p2, "sipErrorReason"    # Ljava/lang/String;
    .param p3, "detailedDeregiReason"    # I
    .param p4, "deregistrationReason"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 58
    iput-object p2, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    .line 60
    iput p4, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    .line 127
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/SemImsRegistrationError$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/ims/SemImsRegistrationError$1;

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistrationError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeregistrationReason()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    return v0
.end method

.method public blacklist getDetailedDeregiReason()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    return v0
.end method

.method public whitelist test-api getSipErrorCode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    return v0
.end method

.method public whitelist test-api getSipErrorReason()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
