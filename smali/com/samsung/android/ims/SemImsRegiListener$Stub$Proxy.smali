.class Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "SemImsRegiListener.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsRegiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsRegiListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/ims/SemImsRegiListener;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "com.samsung.android.ims.SemImsRegiListener"

    return-object v0
.end method

.method public blacklist onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .locals 5
    .param p1, "reg"    # Lcom/samsung/android/ims/SemImsRegistration;
    .param p2, "registrationError"    # Lcom/samsung/android/ims/SemImsRegistrationError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.SemImsRegiListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/ims/SemImsRegistration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    :goto_0
    if-eqz p2, :cond_1

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/ims/SemImsRegistrationError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 180
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsRegiListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 181
    invoke-static {}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsRegiListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/ims/SemImsRegiListener;->onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    return-void

    .line 186
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    nop

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw v1
.end method

.method public blacklist onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .locals 4
    .param p1, "reg"    # Lcom/samsung/android/ims/SemImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.ims.SemImsRegiListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/ims/SemImsRegistration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegiListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 151
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsRegiListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsRegiListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/ims/SemImsRegiListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    .line 157
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw v1
.end method
