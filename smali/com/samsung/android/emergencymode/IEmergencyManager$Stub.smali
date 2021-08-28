.class public abstract Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;
.super Landroid/os/Binder;
.source "IEmergencyManager.java"

# interfaces
.implements Lcom/samsung/android/emergencymode/IEmergencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emergencymode/IEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.emergencymode.IEmergencyManager"

.field static final blacklist TRANSACTION_addAppToLauncher:I = 0xd

.field static final blacklist TRANSACTION_checkInvalidBroadcast:I = 0x6

.field static final blacklist TRANSACTION_checkInvalidProcess:I = 0x5

.field static final blacklist TRANSACTION_checkModeType:I = 0xe

.field static final blacklist TRANSACTION_checkValidIntentAction:I = 0x4

.field static final blacklist TRANSACTION_checkValidPackage:I = 0x3

.field static final blacklist TRANSACTION_getEmergencyState:I = 0x2

.field static final blacklist TRANSACTION_isEmergencyMode:I = 0x1

.field static final blacklist TRANSACTION_isModifying:I = 0xb

.field static final blacklist TRANSACTION_isScreenOn:I = 0x8

.field static final blacklist TRANSACTION_isUserPackageBlocked:I = 0xa

.field static final blacklist TRANSACTION_needMobileDataBlock:I = 0x7

.field static final blacklist TRANSACTION_setLocationProviderEnabled:I = 0xc

.field static final blacklist TRANSACTION_setUserPackageBlocked:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    const-string v0, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_1

    .line 90
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/emergencymode/IEmergencyManager;

    return-object v1

    .line 92
    :cond_1
    new-instance v1, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/emergencymode/IEmergencyManager;
    .locals 1

    .line 656
    sget-object v0, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/emergencymode/IEmergencyManager;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 157
    :pswitch_0
    const-string v0, "checkModeType"

    return-object v0

    .line 153
    :pswitch_1
    const-string v0, "addAppToLauncher"

    return-object v0

    .line 149
    :pswitch_2
    const-string/jumbo v0, "setLocationProviderEnabled"

    return-object v0

    .line 145
    :pswitch_3
    const-string/jumbo v0, "isModifying"

    return-object v0

    .line 141
    :pswitch_4
    const-string/jumbo v0, "isUserPackageBlocked"

    return-object v0

    .line 137
    :pswitch_5
    const-string/jumbo v0, "setUserPackageBlocked"

    return-object v0

    .line 133
    :pswitch_6
    const-string/jumbo v0, "isScreenOn"

    return-object v0

    .line 129
    :pswitch_7
    const-string/jumbo v0, "needMobileDataBlock"

    return-object v0

    .line 125
    :pswitch_8
    const-string v0, "checkInvalidBroadcast"

    return-object v0

    .line 121
    :pswitch_9
    const-string v0, "checkInvalidProcess"

    return-object v0

    .line 117
    :pswitch_a
    const-string v0, "checkValidIntentAction"

    return-object v0

    .line 113
    :pswitch_b
    const-string v0, "checkValidPackage"

    return-object v0

    .line 109
    :pswitch_c
    const-string v0, "getEmergencyState"

    return-object v0

    .line 105
    :pswitch_d
    const-string/jumbo v0, "isEmergencyMode"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/emergencymode/IEmergencyManager;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/emergencymode/IEmergencyManager;

    .line 646
    sget-object v0, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 649
    if-eqz p0, :cond_0

    .line 650
    sput-object p0, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/emergencymode/IEmergencyManager;

    .line 651
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 96
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 168
    invoke-static {p1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 172
    const-string v0, "com.samsung.android.emergencymode.IEmergencyManager"

    .line 173
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 308
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkModeType(I)Z

    move-result v3

    .line 312
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    return v2

    .line 296
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 301
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->addAppToLauncher(Ljava/lang/String;Z)Z

    move-result v4

    .line 302
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    return v2

    .line 287
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 290
    .local v1, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->setLocationProviderEnabled(Z)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    return v2

    .line 279
    .end local v1    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isModifying()Z

    move-result v1

    .line 281
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    return v2

    .line 271
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isUserPackageBlocked()Z

    move-result v1

    .line 273
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return v2

    .line 262
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 265
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->setUserPackageBlocked(Z)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    return v2

    .line 254
    .end local v1    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isScreenOn()Z

    move-result v1

    .line 256
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    return v2

    .line 246
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->needMobileDataBlock()Z

    move-result v1

    .line 248
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return v2

    .line 234
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 240
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return v2

    .line 224
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v3

    .line 228
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return v2

    .line 212
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 218
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    return v2

    .line 198
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 206
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return v2

    .line 190
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->getEmergencyState()I

    move-result v1

    .line 192
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return v2

    .line 182
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isEmergencyMode()Z

    move-result v1

    .line 184
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return v2

    .line 177
    .end local v1    # "_result":Z
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
