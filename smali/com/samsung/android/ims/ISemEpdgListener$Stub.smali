.class public abstract Lcom/samsung/android/ims/ISemEpdgListener$Stub;
.super Landroid/os/Binder;
.source "ISemEpdgListener.java"

# interfaces
.implements Lcom/samsung/android/ims/ISemEpdgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/ISemEpdgListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.ISemEpdgListener"

.field static final blacklist TRANSACTION_onEpdgAvailable:I = 0x1

.field static final blacklist TRANSACTION_onEpdgShowPopup:I = 0x5

.field static final blacklist TRANSACTION_onHandoverResult:I = 0x2

.field static final blacklist TRANSACTION_onIpsecConnection:I = 0x3

.field static final blacklist TRANSACTION_onIpsecDisconnection:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.samsung.android.ims.ISemEpdgListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ISemEpdgListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "com.samsung.android.ims.ISemEpdgListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/ISemEpdgListener;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/ISemEpdgListener;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;
    .locals 1

    .line 297
    sget-object v0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/ISemEpdgListener;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string/jumbo v0, "onEpdgShowPopup"

    return-object v0

    .line 78
    :cond_1
    const-string/jumbo v0, "onIpsecDisconnection"

    return-object v0

    .line 74
    :cond_2
    const-string/jumbo v0, "onIpsecConnection"

    return-object v0

    .line 70
    :cond_3
    const-string/jumbo v0, "onHandoverResult"

    return-object v0

    .line 66
    :cond_4
    const-string/jumbo v0, "onEpdgAvailable"

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/ims/ISemEpdgListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/ims/ISemEpdgListener;

    .line 287
    sget-object v0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/ISemEpdgListener;

    if-nez v0, :cond_1

    .line 290
    if-eqz p0, :cond_0

    .line 291
    sput-object p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/ISemEpdgListener;

    .line 292
    const/4 v0, 0x1

    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 93
    invoke-static {p1}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "com.samsung.android.ims.ISemEpdgListener"

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 102
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 157
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onEpdgShowPopup(II)V

    .line 163
    return v1

    .line 147
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onIpsecDisconnection(ILjava/lang/String;)V

    .line 153
    return v1

    .line 133
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 142
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onIpsecConnection(ILjava/lang/String;II)V

    .line 143
    return v1

    .line 119
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onHandoverResult(IIILjava/lang/String;)V

    .line 129
    return v1

    .line 107
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    .line 113
    .local v3, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onEpdgAvailable(IZI)V

    .line 115
    return v1
.end method
