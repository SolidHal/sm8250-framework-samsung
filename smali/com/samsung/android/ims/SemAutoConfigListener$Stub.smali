.class public abstract Lcom/samsung/android/ims/SemAutoConfigListener$Stub;
.super Landroid/os/Binder;
.source "SemAutoConfigListener.java"

# interfaces
.implements Lcom/samsung/android/ims/SemAutoConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemAutoConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemAutoConfigListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.SemAutoConfigListener"

.field static final blacklist TRANSACTION_onAutoConfigurationCompleted:I = 0x3

.field static final blacklist TRANSACTION_onMsisdnNumberNeeded:I = 0x2

.field static final blacklist TRANSACTION_onVerificationCodeNeeded:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.samsung.android.ims.SemAutoConfigListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemAutoConfigListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    const-string v0, "com.samsung.android.ims.SemAutoConfigListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/SemAutoConfigListener;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/SemAutoConfigListener;

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/SemAutoConfigListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/ims/SemAutoConfigListener;
    .locals 1

    .line 209
    sget-object v0, Lcom/samsung/android/ims/SemAutoConfigListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemAutoConfigListener;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 56
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string/jumbo v0, "onAutoConfigurationCompleted"

    return-object v0

    .line 64
    :cond_1
    const-string/jumbo v0, "onMsisdnNumberNeeded"

    return-object v0

    .line 60
    :cond_2
    const-string/jumbo v0, "onVerificationCodeNeeded"

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/ims/SemAutoConfigListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/ims/SemAutoConfigListener;

    .line 199
    sget-object v0, Lcom/samsung/android/ims/SemAutoConfigListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemAutoConfigListener;

    if-nez v0, :cond_1

    .line 202
    if-eqz p0, :cond_0

    .line 203
    sput-object p0, Lcom/samsung/android/ims/SemAutoConfigListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemAutoConfigListener;

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 51
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const-string v0, "com.samsung.android.ims.SemAutoConfigListener"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 88
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 107
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 110
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->onAutoConfigurationCompleted(Z)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v1

    .line 100
    .end local v2    # "_arg0":Z
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->onMsisdnNumberNeeded()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v1

    .line 93
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->onVerificationCodeNeeded()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v1
.end method
