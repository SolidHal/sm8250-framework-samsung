.class Lcom/samsung/android/ims/SemImsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SemImsService.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/ims/SemImsService;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 642
    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist enableRcsByPhoneId(ZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1027
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1030
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1031
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->enableRcsByPhoneId(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1032
    return-void

    .line 1034
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1037
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1039
    nop

    .line 1040
    return-void

    .line 1037
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1039
    throw v2
.end method

.method public blacklist getBooleanConfig(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1183
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1184
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->getBooleanConfig(Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1184
    return v3

    .line 1186
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1187
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1190
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1192
    nop

    .line 1193
    return v2

    .line 1190
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1192
    throw v2
.end method

.method public blacklist getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 5
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1156
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1157
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1157
    return-object v3

    .line 1159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1161
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/content/ContentValues;
    goto :goto_0

    .line 1164
    .end local v3    # "_result":Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x0

    .line 1168
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    nop

    .line 1171
    return-object v3

    .line 1168
    .end local v3    # "_result":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    throw v2
.end method

.method public blacklist getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1072
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1073
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1073
    return-object v3

    .line 1075
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1076
    sget-object v3, Lcom/samsung/android/ims/settings/SemImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/ims/settings/SemImsProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1079
    .local v2, "_result":[Lcom/samsung/android/ims/settings/SemImsProfile;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1081
    nop

    .line 1082
    return-object v2

    .line 1079
    .end local v2    # "_result":[Lcom/samsung/android/ims/settings/SemImsProfile;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1081
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 649
    const-string v0, "com.samsung.android.ims.SemImsService"

    return-object v0
.end method

.method public blacklist getRcsProfileType(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 928
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 929
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 929
    return-object v3

    .line 931
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 935
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 937
    nop

    .line 938
    return-object v2

    .line 935
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 937
    throw v2
.end method

.method public blacklist getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 878
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 881
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 884
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 885
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    return-object v3

    .line 887
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 888
    sget-object v3, Lcom/samsung/android/ims/SemImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/ims/SemImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 891
    .local v2, "_result":[Lcom/samsung/android/ims/SemImsRegistration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    nop

    .line 894
    return-object v2

    .line 891
    .end local v2    # "_result":[Lcom/samsung/android/ims/SemImsRegistration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v2
.end method

.method public blacklist getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 858
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 859
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    return-object v3

    .line 861
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    sget-object v3, Lcom/samsung/android/ims/SemImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ims/SemImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/samsung/android/ims/SemImsRegistration;
    goto :goto_0

    .line 866
    .end local v3    # "_result":Lcom/samsung/android/ims/SemImsRegistration;
    :cond_1
    const/4 v3, 0x0

    .line 870
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/samsung/android/ims/SemImsRegistration;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    nop

    .line 873
    return-object v3

    .line 870
    .end local v3    # "_result":Lcom/samsung/android/ims/SemImsRegistration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    throw v2
.end method

.method public blacklist isForbiddenByPhoneId(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1093
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1094
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->isForbiddenByPhoneId(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    return v3

    .line 1096
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1100
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    nop

    .line 1103
    return v2

    .line 1100
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    throw v2
.end method

.method public blacklist isRcsEnabled(ZI)Z
    .locals 6
    .param p1, "needAutoConfigCheck"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1048
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    iget-object v4, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1051
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1052
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/ims/SemImsService;->isRcsEnabled(ZI)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1052
    return v2

    .line 1054
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1058
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    nop

    .line 1061
    return v2

    .line 1058
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    throw v2
.end method

.method public blacklist isServiceAvailable(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 907
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 908
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/ims/SemImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    return v3

    .line 910
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 914
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    nop

    .line 917
    return v2

    .line 914
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    throw v2
.end method

.method public blacklist isSimMobilityActivated(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 967
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 970
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 971
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->isSimMobilityActivated(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    return v3

    .line 973
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 977
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    nop

    .line 980
    return v2

    .line 977
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw v2
.end method

.method public blacklist isVoLteAvailable(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 949
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 950
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->isVoLteAvailable(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    return v3

    .line 952
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 956
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
    nop

    .line 959
    return v2

    .line 956
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
    throw v2
.end method

.method public blacklist registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 773
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 775
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 776
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemAutoConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 777
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 779
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 780
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    return-void

    .line 783
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 788
    nop

    .line 789
    return-void

    .line 786
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 788
    throw v2
.end method

.method public blacklist registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsDmConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemImsDmConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 739
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 740
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 741
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    return-void

    .line 744
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 749
    nop

    .line 750
    return-void

    .line 747
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 749
    throw v2
.end method

.method public blacklist registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/ISemEpdgListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1249
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/ISemEpdgListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1250
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1251
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1252
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    return-void

    .line 1255
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1260
    nop

    .line 1261
    return-void

    .line 1258
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1260
    throw v2
.end method

.method public blacklist registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsFtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 815
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/ft/SemImsFtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 817
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 818
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 819
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    return-void

    .line 822
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    nop

    .line 828
    return-void

    .line 825
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    throw v2
.end method

.method public blacklist registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegiListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 658
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemImsRegiListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 659
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 661
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 662
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 663
    return-void

    .line 665
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    nop

    .line 671
    return-void

    .line 668
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v2
.end method

.method public blacklist registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1232
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1233
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    return-void

    .line 1236
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1241
    nop

    .line 1242
    return-void

    .line 1239
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1241
    throw v2
.end method

.method public blacklist registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobStatusListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemSimMobStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 699
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 701
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 702
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    return-void

    .line 705
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    nop

    .line 711
    return-void

    .line 708
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    throw v2
.end method

.method public blacklist sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1128
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1130
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1134
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1135
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->sendMsisdnNumber(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1136
    return-void

    .line 1138
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1143
    nop

    .line 1144
    return-void

    .line 1141
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1143
    throw v2
.end method

.method public blacklist sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    .locals 5
    .param p1, "info"    # Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    .param p2, "event"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1202
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1203
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1207
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1212
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1213
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1214
    return-void

    .line 1216
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1221
    nop

    .line 1222
    return-void

    .line 1219
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1221
    throw v2
.end method

.method public blacklist sendTryRegisterByPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1010
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1011
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->sendTryRegisterByPhoneId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1012
    return-void

    .line 1014
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    nop

    .line 1020
    return-void

    .line 1017
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    throw v2
.end method

.method public blacklist sendVerificationCode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1114
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1115
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->sendVerificationCode(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    return-void

    .line 1118
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1121
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    nop

    .line 1124
    return-void

    .line 1121
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    throw v2
.end method

.method public blacklist setRttMode(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 991
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 992
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->setRttMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    return-void

    .line 995
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    nop

    .line 1001
    return-void

    .line 998
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    throw v2
.end method

.method public blacklist unRegisterEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/ISemEpdgListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1268
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/ISemEpdgListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1269
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1270
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1271
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->unRegisterEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1272
    return-void

    .line 1274
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    nop

    .line 1280
    return-void

    .line 1277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    throw v2
.end method

.method public blacklist unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 795
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 796
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemAutoConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 797
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 799
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 800
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 801
    return-void

    .line 803
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 808
    nop

    .line 809
    return-void

    .line 806
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 808
    throw v2
.end method

.method public blacklist unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsDmConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 754
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 756
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 757
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemImsDmConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 758
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 759
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 760
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    return-void

    .line 763
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    nop

    .line 769
    return-void

    .line 766
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    throw v2
.end method

.method public blacklist unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsFtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/ft/SemImsFtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 836
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 837
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 838
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/ims/SemImsService;->unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 839
    return-void

    .line 841
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    nop

    .line 847
    return-void

    .line 844
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    throw v2
.end method

.method public blacklist unregisterImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegiListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemImsRegiListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 681
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 682
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->unregisterImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    return-void

    .line 685
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 690
    nop

    .line 691
    return-void

    .line 688
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 690
    throw v2
.end method

.method public blacklist unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobStatusListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.ims.SemImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 718
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/ims/SemSimMobStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 719
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 721
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 722
    invoke-static {}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultImpl()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/ims/SemImsService;->unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 723
    return-void

    .line 725
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    nop

    .line 731
    return-void

    .line 728
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw v2
.end method
