.class Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemCmcRecordingListener.java"

# interfaces
.implements Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "com.samsung.android.ims.cmc.ISemCmcRecordingListener"

    return-object v0
.end method

.method public blacklist onError(II)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.cmc.ISemCmcRecordingListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 152
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    invoke-static {}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;->onError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    return-void

    .line 158
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v1
.end method

.method public blacklist onInfo(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.cmc.ISemCmcRecordingListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v1, p0, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 135
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;->onInfo(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    return-void

    .line 141
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    nop

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    throw v1
.end method
