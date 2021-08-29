.class Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "SemCapabilityServiceEventListener.java"

# interfaces
.implements Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    return-object v0
.end method

.method public blacklist onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    .locals 5
    .param p1, "uri"    # Lcom/samsung/android/ims/util/SemImsUri;
    .param p2, "capa"    # Lcom/samsung/android/ims/options/SemCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 190
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/ims/util/SemImsUri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    :goto_0
    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {p2, v0, v3}, Lcom/samsung/android/ims/options/SemCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 206
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 207
    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    return-void

    .line 210
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    nop

    .line 216
    return-void

    .line 213
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v2
.end method

.method public blacklist onCapabilityAndAvailabilityPublished(I)V
    .locals 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 245
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 246
    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onCapabilityAndAvailabilityPublished(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    return-void

    .line 249
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    nop

    .line 255
    return-void

    .line 252
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw v2
.end method

.method public blacklist onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/util/SemImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/options/SemCapabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/util/SemImsUri;>;"
    .local p2, "capaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/options/SemCapabilities;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 225
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 226
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 227
    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    return-void

    .line 230
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    nop

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    throw v2
.end method

.method public blacklist onOwnCapabilitiesChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.options.SemCapabilityServiceEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 174
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onOwnCapabilitiesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return-void

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    return-void

    .line 181
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v2
.end method
