.class public Lcom/samsung/android/emergencymode/SemEmergencyManager;
.super Ljava/lang/Object;
.source "SemEmergencyManager.java"


# static fields
.field private static blacklist EMERGENCY_FEATURES_SUPPORTED:Z = false

.field private static final blacklist SERVICE_DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "EmergencyManager"

.field private static blacklist isBootCompleted:Z

.field private static blacklist isSystemReady:Z

.field private static blacklist mIsLoadedFeatures:Z

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

.field private static blacklist mSupport_BCM:Z

.field private static blacklist mSupport_DexMode:Z

.field private static blacklist mSupport_EM:Z

.field private static blacklist mSupport_UPSM:Z

.field private static blacklist printBootAnimFlag:Z

.field private static blacklist sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    .line 70
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;-><init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V

    iput-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 114
    return-void
.end method

.method static synthetic blacklist access$000()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method static synthetic blacklist access$100()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZLandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->triggerEmergencyMode(ZIZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist ensureServiceConnected()V
    .locals 4

    .line 118
    const-string v0, "EmergencyManager"

    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "emergency_service"

    if-nez v1, :cond_0

    .line 119
    :try_start_1
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    goto :goto_0

    .line 121
    :cond_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    const-string/jumbo v1, "mService is not valid so retieve the service again."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :cond_1
    :goto_0
    goto :goto_1

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureServiceConnected e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static blacklist getBootState()Z
    .locals 4

    .line 785
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 786
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    .line 789
    :cond_1
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    if-nez v0, :cond_3

    .line 790
    const-string v0, "init.svc.bootanim"

    const-string/jumbo v3, "running"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "stopped"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "EmergencyManager"

    if-eqz v0, :cond_2

    .line 791
    sput-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    .line 792
    const-string v0, "getBootState: init.svc.bootanim is running : false"

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 794
    :cond_2
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    if-eqz v0, :cond_3

    .line 795
    const-string v0, "getBootState: init.svc.bootanim is running : true"

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    sput-boolean v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->printBootAnimFlag:Z

    .line 800
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, "ctx":Landroid/content/Context;
    :try_start_1
    const-string v2, "android"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 95
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EmergencyManager"

    const-string v4, "NameNotFoundException or SecurityException createPackageContext failed"

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    .line 97
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android createPackageContext successful: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_1
    move-object v1, p0

    .line 100
    const-string v2, "EmergencyManager"

    const-string v3, "android createPackageContext null"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 105
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_2
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    monitor-exit v0

    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist isBatteryConservingMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 293
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "battery_conserving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static blacklist isBatteryConversingModeSupported()Z
    .locals 1

    .line 338
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 341
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method public static blacklist isEmergencyFeaturesSupported()Z
    .locals 1

    .line 147
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 149
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    return v0
.end method

.method public static whitelist isEmergencyMode(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 276
    const-string v0, "EmergencyManager"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 277
    .local v1, "token":J
    const/4 v3, 0x0

    .line 279
    .local v3, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v6, v4

    :cond_0
    move v3, v6

    .line 284
    :goto_0
    goto :goto_1

    .line 282
    :catch_0
    move-exception v4

    .line 283
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntForUser failed e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 281
    .local v4, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings Provider is not ready e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 285
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    return v3
.end method

.method public static whitelist isEmergencyModeSupported()Z
    .locals 1

    .line 301
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 304
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    return v0
.end method

.method public static whitelist isGrayScreenSupported()Z
    .locals 6

    .line 349
    const/4 v0, 0x1

    .line 350
    .local v0, "bMdnie":Z
    const/4 v1, 0x1

    .line 351
    .local v1, "bAmoled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Temporary Change]support MDNIE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]  AMOLED display ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]  isGrayScreenSupported ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "EmergencyManager"

    invoke-static {v5, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method public static whitelist isUltraPowerSavingModeSupported()Z
    .locals 1

    .line 312
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 313
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    .line 315
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method private static blacklist loadFloatingFeatures()V
    .locals 3

    .line 135
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    .line 136
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    .line 137
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    .line 139
    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->EMERGENCY_FEATURES_SUPPORTED:Z

    .line 140
    sput-boolean v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    .line 141
    return-void
.end method

.method private blacklist registerReceiver()V
    .locals 6

    .line 247
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v2, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v2, "ro.csc.sales_code"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "salesCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerReceiver Scode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "DCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const-string v5, "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

    invoke-virtual {v0, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 263
    return-void
.end method

.method private declared-synchronized blacklist startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "flag"    # I
    .param p4, "skipdialog"    # Z
    .param p5, "forwardedIntent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 202
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "forwardedIntent"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    .line 206
    const-string v1, "clearBootTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    .end local p0    # "this":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_0
    if-eqz p1, :cond_2

    .line 209
    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    const-string v1, "flag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string/jumbo v1, "skipdialog"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 214
    :cond_1
    const-string v1, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 219
    :cond_2
    const-string v1, "initForEMState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    :cond_3
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.emergencymode.service"

    const-string v3, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 201
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "flag":I
    .end local p4    # "skipdialog":Z
    .end local p5    # "forwardedIntent":Landroid/content/Intent;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 225
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "flag":I
    .restart local p4    # "skipdialog":Z
    .restart local p5    # "forwardedIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startService e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 201
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "flag":I
    .end local p4    # "skipdialog":Z
    .end local p5    # "forwardedIntent":Landroid/content/Intent;
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private blacklist stopService()V
    .locals 5

    .line 231
    const-class v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.emergencymode.service"

    const-string v4, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 238
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopService e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist triggerEmergencyMode(ZIZLandroid/content/Intent;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "flag"    # I
    .param p3, "skipdialog"    # Z
    .param p4, "forwardedIntent"    # Landroid/content/Intent;

    .line 679
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 681
    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V

    .line 682
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "req trigger, start Service"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private blacklist unregisterReceiver()V
    .locals 2

    .line 266
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    return-void
.end method


# virtual methods
.method public whitelist addAppToLauncher(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 746
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 748
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 750
    return v1

    .line 754
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->addAppToLauncher(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppToLauncher failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist canSetMode()Z
    .locals 11

    .line 627
    const-string v0, "EmergencyManager"

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v1, :cond_0

    .line 628
    return v2

    .line 634
    :cond_0
    const/4 v1, 0x1

    .line 635
    .local v1, "result":Z
    const/4 v3, 0x0

    .line 636
    .local v3, "modifying":Z
    const/4 v4, 0x0

    .line 637
    .local v4, "knoxUser":Z
    const/4 v5, 0x0

    .line 638
    .local v5, "isDeviceProvisioned":Z
    const/4 v6, 0x0

    .line 639
    .local v6, "currentUserId":I
    const-string v7, ""

    .line 642
    .local v7, "reason":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v8

    move v3, v8

    .line 643
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v8

    .line 654
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canSetMode Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    .line 660
    .end local v5    # "isDeviceProvisioned":Z
    .local v2, "isDeviceProvisioned":Z
    :cond_1
    if-nez v2, :cond_2

    .line 661
    const/4 v1, 0x0

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "SETUP_WIZARD_UNFINISHED;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 664
    :cond_2
    if-eqz v3, :cond_3

    .line 665
    const/4 v1, 0x0

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "LLM_ENABLING;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 668
    :cond_3
    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    .line 669
    const/4 v1, 0x0

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "NOT_OWNER_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 673
    :cond_4
    if-nez v1, :cond_5

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not Allowed EmergencyMode due to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_5
    return v1
.end method

.method public blacklist checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 481
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 482
    return v1

    .line 484
    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    return v1

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    return v1

    .line 491
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 493
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    .line 495
    return v1

    .line 499
    :cond_3
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInvalidBroadcast failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist checkInvalidProcess(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 452
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 453
    return v1

    .line 455
    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    return v1

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 459
    return v1

    .line 461
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 463
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_3

    .line 465
    return v1

    .line 469
    :cond_3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInvalidProcess failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist checkModeType(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 692
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 693
    return v1

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    return v1

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 700
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 702
    return v1

    .line 706
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkModeType(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkModeType failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;

    .line 426
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    return v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 430
    return v1

    .line 432
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 434
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 436
    return v1

    .line 440
    :cond_2
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidIntentAction failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;
    .param p3, "allowFlag"    # I

    .line 400
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 404
    return v1

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 408
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 410
    return v1

    .line 414
    :cond_2
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidPackage failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist getEmergencyState()I
    .locals 4

    .line 369
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 370
    return v1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    return v1

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 377
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 379
    return v1

    .line 383
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->getEmergencyState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyState failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist getModeType()I
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    return v1

    .line 326
    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "battery_conserving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 327
    const/4 v0, 0x2

    return v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "emergency_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 329
    return v2

    .line 331
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isEmergencyMode()Z
    .locals 1

    .line 359
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist isModifying()Z
    .locals 4

    .line 604
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 605
    return v1

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 609
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 611
    return v1

    .line 615
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isModifying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isModifying failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist isScreenOn()Z
    .locals 4

    .line 534
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 535
    return v1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    return v1

    .line 540
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 542
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_2

    .line 544
    return v1

    .line 548
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isScreenOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenOn failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist isUserPackageBlocked()Z
    .locals 4

    .line 582
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 583
    return v1

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 587
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 588
    return v1

    .line 592
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isUserPackageBlocked()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUserPackageBlocked failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist makePrivilegedCall(Ljava/lang/String;)I
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 772
    const-string v0, "EmergencyManager"

    :try_start_0
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 773
    .local v1, "callUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 774
    .local v2, "callIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 775
    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v1    # "callUri":Landroid/net/Uri;
    .end local v2    # "callIntent":Landroid/content/Intent;
    nop

    .line 780
    const-string/jumbo v1, "req call, success."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x1

    return v0

    .line 776
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "req call, unknown Err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/16 v0, -0x9

    return v0
.end method

.method public blacklist needMobileDataBlock()Z
    .locals 4

    .line 511
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 512
    return v1

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 516
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 518
    return v1

    .line 522
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/emergencymode/IEmergencyManager;->needMobileDataBlock()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needMobileDataBlock failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmergencyManager"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist readyEmergencyMode()V
    .locals 8

    .line 188
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "EmergencyManager"

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "This is emergency mode."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_0
    const-string v0, "This is normal mode."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZLandroid/content/Intent;)V

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->registerReceiver()V

    .line 198
    return-void
.end method

.method public whitelist setLocationProviderEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 721
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 722
    return-void

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 726
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 728
    return-void

    .line 732
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->setLocationProviderEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocationProviderEnabled failed e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyManager"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setUserPackageBlocked(ZLandroid/content/Context;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 561
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-nez v0, :cond_0

    .line 562
    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    .line 566
    sget-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v0, :cond_1

    .line 567
    return-void

    .line 571
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->setUserPackageBlocked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserPackageBlocked failed e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyManager"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
