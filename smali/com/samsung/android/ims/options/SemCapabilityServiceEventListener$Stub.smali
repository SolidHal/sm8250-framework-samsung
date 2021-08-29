.class public abstract Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "SemCapabilityServiceEventListener.java"

# interfaces
.implements Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

.field static final blacklist TRANSACTION_onCapabilitiesChanged:I = 0x2

.field static final blacklist TRANSACTION_onCapabilityAndAvailabilityPublished:I = 0x4

.field static final blacklist TRANSACTION_onMultipleCapabilitiesChanged:I = 0x3

.field static final blacklist TRANSACTION_onOwnCapabilitiesChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .locals 1

    .line 276
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 59
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    const-string/jumbo v0, "onCapabilityAndAvailabilityPublished"

    return-object v0

    .line 71
    :cond_1
    const-string/jumbo v0, "onMultipleCapabilitiesChanged"

    return-object v0

    .line 67
    :cond_2
    const-string/jumbo v0, "onCapabilitiesChanged"

    return-object v0

    .line 63
    :cond_3
    const-string/jumbo v0, "onOwnCapabilitiesChanged"

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    .line 266
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-nez v0, :cond_1

    .line 269
    if-eqz p0, :cond_0

    .line 270
    sput-object p0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    .line 271
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    const-string v0, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 139
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->onCapabilityAndAvailabilityPublished(I)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v1

    .line 128
    .end local v2    # "_arg0":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/samsung/android/ims/util/SemImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/util/SemImsUri;>;"
    sget-object v3, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 133
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/options/SemCapabilities;>;"
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v1

    .line 107
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/util/SemImsUri;>;"
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/options/SemCapabilities;>;"
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    sget-object v2, Lcom/samsung/android/ims/util/SemImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/util/SemImsUri;

    .local v2, "_arg0":Lcom/samsung/android/ims/util/SemImsUri;
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":Lcom/samsung/android/ims/util/SemImsUri;
    :cond_4
    const/4 v2, 0x0

    .line 116
    .restart local v2    # "_arg0":Lcom/samsung/android/ims/util/SemImsUri;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    sget-object v3, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ims/options/SemCapabilities;

    .local v3, "_arg1":Lcom/samsung/android/ims/options/SemCapabilities;
    goto :goto_1

    .line 120
    .end local v3    # "_arg1":Lcom/samsung/android/ims/options/SemCapabilities;
    :cond_5
    const/4 v3, 0x0

    .line 122
    .restart local v3    # "_arg1":Lcom/samsung/android/ims/options/SemCapabilities;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    return v1

    .line 100
    .end local v2    # "_arg0":Lcom/samsung/android/ims/util/SemImsUri;
    .end local v3    # "_arg1":Lcom/samsung/android/ims/options/SemCapabilities;
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->onOwnCapabilitiesChanged()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v1
.end method
