.class Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemEpdgListener.java"

# interfaces
.implements Lcom/samsung/android/ims/ISemEpdgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/ISemEpdgListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/ims/ISemEpdgListener;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 177
    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 184
    const-string v0, "com.samsung.android.ims.ISemEpdgListener"

    return-object v0
.end method

.method public blacklist onEpdgAvailable(IZI)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # Z
    .param p3, "wifiState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 190
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.ISemEpdgListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 195
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgAvailable(IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    return-void

    .line 201
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v1
.end method

.method public blacklist onEpdgShowPopup(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.ISemEpdgListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 267
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgShowPopup(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-void

    .line 273
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v1
.end method

.method public blacklist onHandoverResult(IIILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.ISemEpdgListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 214
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/ims/ISemEpdgListener;->onHandoverResult(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    return-void

    .line 220
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    nop

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw v1
.end method

.method public blacklist onIpsecConnection(ILjava/lang/String;II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 227
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.ISemEpdgListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 233
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 234
    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/ims/ISemEpdgListener;->onIpsecConnection(ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-void

    .line 239
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw v1
.end method

.method public blacklist onIpsecDisconnection(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.ISemEpdgListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 250
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    invoke-static {}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/ims/ISemEpdgListener;->onIpsecDisconnection(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    return-void

    .line 256
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    nop

    .line 258
    return-void

    .line 256
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw v1
.end method
