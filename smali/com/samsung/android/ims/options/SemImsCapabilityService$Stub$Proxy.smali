.class Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SemImsCapabilityService.java"

# interfaces
.implements Lcom/samsung/android/ims/options/SemImsCapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/ims/options/SemImsCapabilityService;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 222
    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 268
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 269
    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-object v3

    .line 271
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    sget-object v3, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ims/options/SemCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    goto :goto_0

    .line 276
    .end local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :cond_1
    const/4 v3, 0x0

    .line 280
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    nop

    .line 283
    return-object v3

    .line 280
    .end local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v2
.end method

.method public blacklist getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 5
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 325
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 326
    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    return-object v3

    .line 328
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 329
    sget-object v3, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/ims/options/SemCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 332
    .local v2, "_result":[Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    nop

    .line 335
    return-object v2

    .line 332
    .end local v2    # "_result":[Lcom/samsung/android/ims/options/SemCapabilities;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    throw v2
.end method

.method public blacklist getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "delay"    # Z
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v3, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 297
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 298
    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    return-object v3

    .line 300
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    sget-object v3, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ims/options/SemCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    goto :goto_1

    .line 305
    .end local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :cond_2
    const/4 v3, 0x0

    .line 309
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    nop

    .line 312
    return-object v3

    .line 309
    .end local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 229
    const-string v0, "com.samsung.android.ims.options.SemImsCapabilityService"

    return-object v0
.end method

.method public blacklist getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 240
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    return-object v3

    .line 243
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    sget-object v3, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ims/options/SemCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    goto :goto_0

    .line 248
    .end local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :cond_1
    const/4 v3, 0x0

    .line 252
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    nop

    .line 255
    return-object v3

    .line 252
    .end local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw v2
.end method

.method public blacklist registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 346
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 347
    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    return-void

    .line 350
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    nop

    .line 356
    return-void

    .line 353
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    throw v2
.end method

.method public blacklist unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 366
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 367
    invoke-static {}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    return-void

    .line 370
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    nop

    .line 376
    return-void

    .line 373
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw v2
.end method
