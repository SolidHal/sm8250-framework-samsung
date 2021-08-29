.class public Lcom/samsung/android/ims/SemImsService$Default;
.super Ljava/lang/Object;
.source "SemImsService.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 1

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableRcsByPhoneId(ZI)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist getBooleanConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRcsProfileType(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isForbiddenByPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRcsEnabled(ZI)Z
    .locals 1
    .param p1, "needAutoConfigCheck"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isServiceAvailable(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSimMobilityActivated(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoLteAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsDmConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/ISemEpdgListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsFtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegiListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public blacklist registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobStatusListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    .param p2, "event"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist sendTryRegisterByPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist sendVerificationCode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist setRttMode(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist unRegisterEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/ISemEpdgListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsDmConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsFtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist unregisterImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegiListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobStatusListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
