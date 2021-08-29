.class public abstract Lcom/samsung/android/ims/SemImsRegiListener$Stub;
.super Landroid/os/Binder;
.source "SemImsRegiListener.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsRegiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsRegiListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.SemImsRegiListener"

.field static final blacklist TRANSACTION_onDeregistered:I = 0x2

.field static final blacklist TRANSACTION_onRegistered:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.samsung.android.ims.SemImsRegiListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsRegiListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    const-string v0, "com.samsung.android.ims.SemImsRegiListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/SemImsRegiListener;

    if-eqz v1, :cond_1

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/SemImsRegiListener;

    return-object v1

    .line 44
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/ims/SemImsRegiListener;
    .locals 1

    .line 207
    sget-object v0, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemImsRegiListener;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 53
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string/jumbo v0, "onDeregistered"

    return-object v0

    .line 57
    :cond_1
    const-string/jumbo v0, "onRegistered"

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/ims/SemImsRegiListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/ims/SemImsRegiListener;

    .line 197
    sget-object v0, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemImsRegiListener;

    if-nez v0, :cond_1

    .line 200
    if-eqz p0, :cond_0

    .line 201
    sput-object p0, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemImsRegiListener;

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 48
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 72
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-string v0, "com.samsung.android.ims.SemImsRegiListener"

    .line 77
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 99
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    sget-object v2, Lcom/samsung/android/ims/SemImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/SemImsRegistration;

    .local v2, "_arg0":Lcom/samsung/android/ims/SemImsRegistration;
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemImsRegistration;
    :cond_2
    const/4 v2, 0x0

    .line 108
    .restart local v2    # "_arg0":Lcom/samsung/android/ims/SemImsRegistration;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    sget-object v3, Lcom/samsung/android/ims/SemImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ims/SemImsRegistrationError;

    .local v3, "_arg1":Lcom/samsung/android/ims/SemImsRegistrationError;
    goto :goto_1

    .line 112
    .end local v3    # "_arg1":Lcom/samsung/android/ims/SemImsRegistrationError;
    :cond_3
    const/4 v3, 0x0

    .line 114
    .restart local v3    # "_arg1":Lcom/samsung/android/ims/SemImsRegistrationError;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V

    .line 115
    return v1

    .line 86
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemImsRegistration;
    .end local v3    # "_arg1":Lcom/samsung/android/ims/SemImsRegistrationError;
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    sget-object v2, Lcom/samsung/android/ims/SemImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/SemImsRegistration;

    .restart local v2    # "_arg0":Lcom/samsung/android/ims/SemImsRegistration;
    goto :goto_2

    .line 92
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemImsRegistration;
    :cond_5
    const/4 v2, 0x0

    .line 94
    .restart local v2    # "_arg0":Lcom/samsung/android/ims/SemImsRegistration;
    :goto_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V

    .line 95
    return v1
.end method
