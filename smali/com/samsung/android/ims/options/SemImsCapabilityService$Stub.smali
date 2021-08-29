.class public abstract Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;
.super Landroid/os/Binder;
.source "SemImsCapabilityService.java"

# interfaces
.implements Lcom/samsung/android/ims/options/SemImsCapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemImsCapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.options.SemImsCapabilityService"

.field static final blacklist TRANSACTION_getCapabilities:I = 0x2

.field static final blacklist TRANSACTION_getCapabilitiesByContactId:I = 0x4

.field static final blacklist TRANSACTION_getCapabilitiesByNumber:I = 0x3

.field static final blacklist TRANSACTION_getOwnCapabilities:I = 0x1

.field static final blacklist TRANSACTION_registerListener:I = 0x5

.field static final blacklist TRANSACTION_unregisterListener:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemImsCapabilityService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/options/SemImsCapabilityService;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;
    .locals 1

    .line 399
    sget-object v0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 89
    :pswitch_1
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 85
    :pswitch_2
    const-string v0, "getCapabilitiesByContactId"

    return-object v0

    .line 81
    :pswitch_3
    const-string v0, "getCapabilitiesByNumber"

    return-object v0

    .line 77
    :pswitch_4
    const-string v0, "getCapabilities"

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "getOwnCapabilities"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/ims/options/SemImsCapabilityService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/ims/options/SemImsCapabilityService;

    .line 389
    sget-object v0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-nez v0, :cond_1

    .line 392
    if-eqz p0, :cond_0

    .line 393
    sput-object p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    .line 394
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 64
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const-string v0, "com.samsung.android.ims.options.SemImsCapabilityService"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 201
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v1

    .line 205
    .local v1, "_arg0":Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v2

    .line 190
    .end local v1    # "_arg0":Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v1

    .line 194
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v2

    .line 176
    .end local v1    # "_arg0":Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v5

    .line 184
    .local v5, "_result":[Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v5, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 186
    return v2

    .line 154
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[Lcom/samsung/android/ims/options/SemCapabilities;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    .line 162
    .local v5, "_arg2":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 163
    .local v6, "_arg3":I
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v7

    .line 164
    .local v7, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v7, :cond_1

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v7, p3, v2}, Lcom/samsung/android/ims/options/SemCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    :goto_1
    return v2

    .line 134
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    .end local v7    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 140
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 141
    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v6

    .line 142
    .local v6, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v6, :cond_2

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v6, p3, v2}, Lcom/samsung/android/ims/options/SemCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    :goto_2
    return v2

    .line 118
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v4

    .line 122
    .local v4, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v4, :cond_3

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v4, p3, v2}, Lcom/samsung/android/ims/options/SemCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 128
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    :goto_3
    return v2

    .line 113
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
