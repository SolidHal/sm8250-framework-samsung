.class public abstract Lcom/samsung/android/ims/SemImsService$Stub;
.super Landroid/os/Binder;
.source "SemImsService.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.SemImsService"

.field static final blacklist TRANSACTION_enableRcsByPhoneId:I = 0x13

.field static final blacklist TRANSACTION_getBooleanConfig:I = 0x1a

.field static final blacklist TRANSACTION_getConfigValues:I = 0x19

.field static final blacklist TRANSACTION_getCurrentProfileForSlot:I = 0x15

.field static final blacklist TRANSACTION_getRcsProfileType:I = 0xe

.field static final blacklist TRANSACTION_getRegistrationInfoByPhoneId:I = 0xc

.field static final blacklist TRANSACTION_getRegistrationInfoByServiceType:I = 0xb

.field static final blacklist TRANSACTION_isForbiddenByPhoneId:I = 0x16

.field static final blacklist TRANSACTION_isRcsEnabled:I = 0x14

.field static final blacklist TRANSACTION_isServiceAvailable:I = 0xd

.field static final blacklist TRANSACTION_isSimMobilityActivated:I = 0x10

.field static final blacklist TRANSACTION_isVoLteAvailable:I = 0xf

.field static final blacklist TRANSACTION_registerAutoConfigurationListener:I = 0x7

.field static final blacklist TRANSACTION_registerDmValueListener:I = 0x5

.field static final blacklist TRANSACTION_registerEpdgListener:I = 0x1d

.field static final blacklist TRANSACTION_registerImsOngoingFtEventListener:I = 0x9

.field static final blacklist TRANSACTION_registerImsRegistrationListenerForSlot:I = 0x1

.field static final blacklist TRANSACTION_registerSemCmcRecordingListener:I = 0x1c

.field static final blacklist TRANSACTION_registerSimMobilityStatusListener:I = 0x3

.field static final blacklist TRANSACTION_sendMsisdnNumber:I = 0x18

.field static final blacklist TRANSACTION_sendSemCmcRecordingEvent:I = 0x1b

.field static final blacklist TRANSACTION_sendTryRegisterByPhoneId:I = 0x12

.field static final blacklist TRANSACTION_sendVerificationCode:I = 0x17

.field static final blacklist TRANSACTION_setRttMode:I = 0x11

.field static final blacklist TRANSACTION_unRegisterEpdgListener:I = 0x1e

.field static final blacklist TRANSACTION_unregisterAutoConfigurationListener:I = 0x8

.field static final blacklist TRANSACTION_unregisterDmValueListener:I = 0x6

.field static final blacklist TRANSACTION_unregisterImsOngoingFtEventListener:I = 0xa

.field static final blacklist TRANSACTION_unregisterImsRegistrationListenerForSlot:I = 0x2

.field static final blacklist TRANSACTION_unregisterSimMobilityStatusListener:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "com.samsung.android.ims.SemImsService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/SemImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    if-nez p0, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    const-string v0, "com.samsung.android.ims.SemImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/SemImsService;

    if-eqz v1, :cond_1

    .line 140
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/SemImsService;

    return-object v1

    .line 142
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/ims/SemImsService;
    .locals 1

    .line 1327
    sget-object v0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemImsService;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 151
    packed-switch p0, :pswitch_data_0

    .line 275
    const/4 v0, 0x0

    return-object v0

    .line 271
    :pswitch_0
    const-string/jumbo v0, "unRegisterEpdgListener"

    return-object v0

    .line 267
    :pswitch_1
    const-string/jumbo v0, "registerEpdgListener"

    return-object v0

    .line 263
    :pswitch_2
    const-string/jumbo v0, "registerSemCmcRecordingListener"

    return-object v0

    .line 259
    :pswitch_3
    const-string/jumbo v0, "sendSemCmcRecordingEvent"

    return-object v0

    .line 255
    :pswitch_4
    const-string v0, "getBooleanConfig"

    return-object v0

    .line 251
    :pswitch_5
    const-string v0, "getConfigValues"

    return-object v0

    .line 247
    :pswitch_6
    const-string/jumbo v0, "sendMsisdnNumber"

    return-object v0

    .line 243
    :pswitch_7
    const-string/jumbo v0, "sendVerificationCode"

    return-object v0

    .line 239
    :pswitch_8
    const-string/jumbo v0, "isForbiddenByPhoneId"

    return-object v0

    .line 235
    :pswitch_9
    const-string v0, "getCurrentProfileForSlot"

    return-object v0

    .line 231
    :pswitch_a
    const-string/jumbo v0, "isRcsEnabled"

    return-object v0

    .line 227
    :pswitch_b
    const-string v0, "enableRcsByPhoneId"

    return-object v0

    .line 223
    :pswitch_c
    const-string/jumbo v0, "sendTryRegisterByPhoneId"

    return-object v0

    .line 219
    :pswitch_d
    const-string/jumbo v0, "setRttMode"

    return-object v0

    .line 215
    :pswitch_e
    const-string/jumbo v0, "isSimMobilityActivated"

    return-object v0

    .line 211
    :pswitch_f
    const-string/jumbo v0, "isVoLteAvailable"

    return-object v0

    .line 207
    :pswitch_10
    const-string v0, "getRcsProfileType"

    return-object v0

    .line 203
    :pswitch_11
    const-string/jumbo v0, "isServiceAvailable"

    return-object v0

    .line 199
    :pswitch_12
    const-string v0, "getRegistrationInfoByPhoneId"

    return-object v0

    .line 195
    :pswitch_13
    const-string v0, "getRegistrationInfoByServiceType"

    return-object v0

    .line 191
    :pswitch_14
    const-string/jumbo v0, "unregisterImsOngoingFtEventListener"

    return-object v0

    .line 187
    :pswitch_15
    const-string/jumbo v0, "registerImsOngoingFtEventListener"

    return-object v0

    .line 183
    :pswitch_16
    const-string/jumbo v0, "unregisterAutoConfigurationListener"

    return-object v0

    .line 179
    :pswitch_17
    const-string/jumbo v0, "registerAutoConfigurationListener"

    return-object v0

    .line 175
    :pswitch_18
    const-string/jumbo v0, "unregisterDmValueListener"

    return-object v0

    .line 171
    :pswitch_19
    const-string/jumbo v0, "registerDmValueListener"

    return-object v0

    .line 167
    :pswitch_1a
    const-string/jumbo v0, "unregisterSimMobilityStatusListener"

    return-object v0

    .line 163
    :pswitch_1b
    const-string/jumbo v0, "registerSimMobilityStatusListener"

    return-object v0

    .line 159
    :pswitch_1c
    const-string/jumbo v0, "unregisterImsRegistrationListenerForSlot"

    return-object v0

    .line 155
    :pswitch_1d
    const-string/jumbo v0, "registerImsRegistrationListenerForSlot"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public static blacklist setDefaultImpl(Lcom/samsung/android/ims/SemImsService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/ims/SemImsService;

    .line 1317
    sget-object v0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemImsService;

    if-nez v0, :cond_1

    .line 1320
    if-eqz p0, :cond_0

    .line 1321
    sput-object p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/ims/SemImsService;

    .line 1322
    const/4 v0, 0x1

    return v0

    .line 1324
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1318
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 146
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 282
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 286
    const-string v0, "com.samsung.android.ims.SemImsService"

    .line 287
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 632
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 623
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v1

    .line 626
    .local v1, "_arg0":Lcom/samsung/android/ims/ISemEpdgListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->unRegisterEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    return v2

    .line 614
    .end local v1    # "_arg0":Lcom/samsung/android/ims/ISemEpdgListener;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v1

    .line 617
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/ISemEpdgListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    return v2

    .line 603
    .end local v1    # "_arg0":Lcom/samsung/android/ims/ISemEpdgListener;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    move-result-object v1

    .line 607
    .local v1, "_arg0":Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 608
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    return v2

    .line 585
    .end local v1    # "_arg0":Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    sget-object v1, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .local v1, "_arg0":Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    goto :goto_0

    .line 591
    .end local v1    # "_arg0":Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    :cond_0
    const/4 v1, 0x0

    .line 594
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 596
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 597
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/android/ims/SemImsService$Stub;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    return v2

    .line 573
    .end local v1    # "_arg0":Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 578
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->getBooleanConfig(Ljava/lang/String;I)Z

    move-result v4

    .line 579
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    return v2

    .line 555
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ims/SemImsService$Stub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 561
    .local v5, "_result":Landroid/content/ContentValues;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v5, :cond_1

    .line 563
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {v5, p3, v2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 567
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    :goto_1
    return v2

    .line 544
    .end local v3    # "_arg0":[Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Landroid/content/ContentValues;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 549
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->sendMsisdnNumber(Ljava/lang/String;I)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    return v2

    .line 533
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 537
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 538
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->sendVerificationCode(Ljava/lang/String;I)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    return v2

    .line 523
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->isForbiddenByPhoneId(I)Z

    move-result v3

    .line 527
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    return v2

    .line 513
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v3

    .line 517
    .local v3, "_result":[Lcom/samsung/android/ims/settings/SemImsProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 519
    return v2

    .line 501
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[Lcom/samsung/android/ims/settings/SemImsProfile;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 505
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->isRcsEnabled(ZI)Z

    move-result v4

    .line 507
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    return v2

    .line 490
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 494
    .restart local v1    # "_arg0":Z
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->enableRcsByPhoneId(ZI)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v2

    .line 481
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 484
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->sendTryRegisterByPhoneId(I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    return v2

    .line 470
    .end local v1    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 474
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->setRttMode(II)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    return v2

    .line 460
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 463
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->isSimMobilityActivated(I)Z

    move-result v3

    .line 464
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    return v2

    .line 450
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->isVoLteAvailable(I)Z

    move-result v3

    .line 454
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    return v2

    .line 440
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    return v2

    .line 426
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 432
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 433
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/android/ims/SemImsService$Stub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v5

    .line 434
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    return v2

    .line 416
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v3

    .line 420
    .local v3, "_result":[Lcom/samsung/android/ims/SemImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 422
    return v2

    .line 398
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[Lcom/samsung/android/ims/SemImsRegistration;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 403
    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ims/SemImsService$Stub;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v5

    .line 404
    .local v5, "_result":Lcom/samsung/android/ims/SemImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v5, :cond_4

    .line 406
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/ims/SemImsRegistration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 410
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    :goto_2
    return v2

    .line 389
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Lcom/samsung/android/ims/SemImsRegistration;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ft/SemImsFtListener;

    move-result-object v1

    .line 392
    .local v1, "_arg0":Lcom/samsung/android/ims/ft/SemImsFtListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    return v2

    .line 380
    .end local v1    # "_arg0":Lcom/samsung/android/ims/ft/SemImsFtListener;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ft/SemImsFtListener;

    move-result-object v1

    .line 383
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/ft/SemImsFtListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    return v2

    .line 369
    .end local v1    # "_arg0":Lcom/samsung/android/ims/ft/SemImsFtListener;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemAutoConfigListener;

    move-result-object v1

    .line 373
    .local v1, "_arg0":Lcom/samsung/android/ims/SemAutoConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    return v2

    .line 358
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemAutoConfigListener;
    .end local v3    # "_arg1":I
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemAutoConfigListener;

    move-result-object v1

    .line 362
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/SemAutoConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    return v2

    .line 349
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemAutoConfigListener;
    .end local v3    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsDmConfigListener;

    move-result-object v1

    .line 352
    .local v1, "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    return v2

    .line 340
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsDmConfigListener;

    move-result-object v1

    .line 343
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsService$Stub;->registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    return v2

    .line 329
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemSimMobStatusListener;

    move-result-object v1

    .line 333
    .local v1, "_arg0":Lcom/samsung/android/ims/SemSimMobStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    return v2

    .line 318
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemSimMobStatusListener;
    .end local v3    # "_arg1":I
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemSimMobStatusListener;

    move-result-object v1

    .line 322
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/SemSimMobStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 323
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    return v2

    .line 307
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemSimMobStatusListener;
    .end local v3    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsRegiListener;

    move-result-object v1

    .line 311
    .local v1, "_arg0":Lcom/samsung/android/ims/SemImsRegiListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    return v2

    .line 296
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemImsRegiListener;
    .end local v3    # "_arg1":I
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsRegiListener;

    move-result-object v1

    .line 300
    .restart local v1    # "_arg0":Lcom/samsung/android/ims/SemImsRegiListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    return v2

    .line 291
    .end local v1    # "_arg0":Lcom/samsung/android/ims/SemImsRegiListener;
    .end local v3    # "_arg1":I
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
