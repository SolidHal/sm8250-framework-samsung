.class public Lcom/samsung/android/ims/SemImsManager;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;,
        Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;,
        Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;,
        Lcom/samsung/android/ims/SemImsManager$ApnType;,
        Lcom/samsung/android/ims/SemImsManager$IkeErrors;,
        Lcom/samsung/android/ims/SemImsManager$EpdgPopUpTypes;
    }
.end annotation


# static fields
.field public static final whitelist test-api HANDOVER_FAIL:I = 0x0

.field public static final whitelist test-api HANDOVER_L2W:I = 0x1

.field public static final whitelist test-api HANDOVER_SUCCESS:I = 0x1

.field public static final whitelist test-api HANDOVER_W2L:I = 0x0

.field private static final blacklist IMS_API_VERSION:I = 0x2

.field private static final blacklist IMS_PLATFORM_VERSION:I = 0xebf0

.field private static final blacklist INTENT_ACTION_IMSSERVICE_RESTART:Ljava/lang/String; = "com.sec.ims.imsmanager.RESTART"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "semImsManager"

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "ImsBase"

.field public static final whitelist test-api WIFI_CONNECTED:I = 0x1

.field public static final whitelist test-api WIFI_DISCONNECTED:I


# instance fields
.field private final blacklist mAutoConfigListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mEpdgListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

.field blacklist mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

.field private blacklist mImsService:Lcom/samsung/android/ims/SemImsService;

.field private blacklist mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

.field private final blacklist mOngoingFtEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhoneId:I

.field private final blacklist mRegListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRestartReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mSimMobilityStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>(Landroid/content/Context;Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;
    .param p3, "phoneId"    # I

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Ljava/util/Set;

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Ljava/util/Set;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Ljava/util/Set;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mImsService:Lcom/samsung/android/ims/SemImsService;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    .line 78
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Ljava/util/Set;

    .line 79
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Ljava/util/Set;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    .line 1260
    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1261
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsManager$2;-><init>(Lcom/samsung/android/ims/SemImsManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

    .line 270
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    .line 272
    iput p3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    .line 273
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/ims/SemImsManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsManager;

    .line 53
    iget v0, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsManager;

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/ims/SemImsManager;Lcom/samsung/android/ims/SemImsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsManager;
    .param p1, "x1"    # Lcom/samsung/android/ims/SemImsService;

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->registerPreviousListeners(Lcom/samsung/android/ims/SemImsService;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsManager;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    return-object v0
.end method

.method public static whitelist test-api getImsApiVersion()I
    .locals 1

    .line 1211
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist getImsService()Lcom/samsung/android/ims/SemImsService;
    .locals 1

    .line 276
    const-string v0, "ImsBase"

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/SemImsManager;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ims/SemImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getImsVersion()I
    .locals 1

    .line 1201
    const v0, 0xebf0

    return v0
.end method

.method private blacklist getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 283
    .local v1, "sm":Ljava/lang/Class;
    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 284
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .local v2, "getService":Ljava/lang/reflect/Method;
    const-string/jumbo v4, "semImsManager"

    if-eqz v2, :cond_1

    .line 286
    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 287
    .local v3, "result":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 288
    move-object v4, v3

    check-cast v4, Landroid/os/IBinder;

    move-object v0, v4

    .line 289
    return-object v0

    .line 291
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to getService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    nop

    .end local v3    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 294
    :cond_1
    const-string v3, "Failed to reflect method getService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 298
    :catch_2
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 296
    :catch_3
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 304
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 305
    :goto_1
    return-object v0
.end method

.method private blacklist registerPreviousListeners(Lcom/samsung/android/ims/SemImsService;)V
    .locals 3
    .param p1, "imsService"    # Lcom/samsung/android/ims/SemImsService;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerPreviousListeners:  mRegListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Ljava/util/Set;

    .line 310
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEpdgListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string/jumbo v1, "semImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;

    .line 313
    .local v1, "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/ims/SemImsService;->registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V

    .line 314
    .end local v1    # "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;

    .line 316
    .local v1, "epdgListener":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    invoke-interface {p1, v1}, Lcom/samsung/android/ims/SemImsService;->registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V

    .line 317
    .end local v1    # "epdgListener":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    goto :goto_1

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;

    .line 319
    .local v1, "tempListener":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/ims/SemImsService;->registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V

    .line 320
    .end local v1    # "tempListener":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    goto :goto_2

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;

    .line 322
    .local v1, "tempListener":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/ims/SemImsService;->registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V

    .line 323
    .end local v1    # "tempListener":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    goto :goto_3

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;

    .line 325
    .local v1, "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    invoke-interface {p1, v1}, Lcom/samsung/android/ims/SemImsService;->registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1    # "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    goto :goto_4

    .line 329
    :cond_4
    goto :goto_5

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-void
.end method


# virtual methods
.method public whitelist test-api connectService()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register Receiver for Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsManager$1;-><init>(Lcom/samsung/android/ims/SemImsManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 367
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-eqz v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    if-eqz v1, :cond_1

    .line 369
    invoke-interface {v1}, Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;->onConnected()V

    .line 372
    :cond_1
    return-void
.end method

.method public whitelist test-api disconnectService()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mListener:Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    if-eqz v0, :cond_1

    .line 388
    invoke-interface {v0}, Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;->onDisconnected()V

    .line 390
    :cond_1
    return-void
.end method

.method public whitelist test-api enableIpme(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIpme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsManager;->enableRcs(Z)V

    .line 452
    return-void
.end method

.method public whitelist test-api enableRcs(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRcs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 490
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_0

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableRcs: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 496
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->enableRcsByPhoneId(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 500
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "fields"    # [Ljava/lang/String;

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getConfigValues"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 857
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-object v3

    .line 863
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 864
    :catch_0
    move-exception v1

    .line 865
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 867
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist test-api getCurrentProfile(I)[Lcom/samsung/android/ims/settings/SemImsProfile;
    .locals 6
    .param p1, "phoneId"    # I

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getCurrentProfile"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1288
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return-object v3

    .line 1294
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemImsService;->getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    .local v1, "profiles":[Lcom/samsung/android/ims/settings/SemImsProfile;
    return-object v1

    .line 1296
    .end local v1    # "profiles":[Lcom/samsung/android/ims/settings/SemImsProfile;
    :catch_0
    move-exception v4

    .line 1297
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to get profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-object v3
.end method

.method public whitelist test-api getImsRegistration()Lcom/samsung/android/ims/SemImsRegistration;
    .locals 5

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getImsRegistration"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 824
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getImsRegistration: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-object v3

    .line 830
    :cond_0
    :try_start_0
    const-string/jumbo v1, "volte"

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 831
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 834
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist test-api getRcsProfileType()Ljava/lang/String;
    .locals 6

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRcsProfileType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-string v0, ""

    .line 1025
    .local v0, "rcsProfile":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 1026
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_0

    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-object v0

    .line 1032
    :cond_0
    :try_start_0
    iget v4, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/samsung/android/ims/SemImsService;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1035
    goto :goto_0

    .line 1033
    :catch_0
    move-exception v4

    .line 1034
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to get profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist test-api getRegistrationInfo()[Lcom/samsung/android/ims/SemImsRegistration;
    .locals 5

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRegistrationInfo"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 401
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRegistrationInfo: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-object v3

    .line 407
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 411
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist test-api getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 5
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRegistrationInfoByServiceType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 793
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRegistrationInfoByServiceType: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-object v3

    .line 799
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 800
    :catch_0
    move-exception v1

    .line 801
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 803
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist test-api isForbidden()Z
    .locals 5

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "isForbidden"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 902
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return v3

    .line 908
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->isForbiddenByPhoneId(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 909
    :catch_0
    move-exception v1

    .line 910
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 912
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist test-api isImsFeatureEnabled(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isImsFeatureEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 994
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isImsFeatureEnabled: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v3

    .line 999
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->isValidImsFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/ims/SemImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1005
    :catch_0
    move-exception v1

    .line 1006
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1008
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3

    .line 1000
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api isImsFeatureProvisioned(Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isImsFeatureProvisioned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1139
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isImsFeatureProvisioned: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return v3

    .line 1144
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->isValidImsFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1149
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->getBooleanConfig(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1150
    :catch_0
    move-exception v1

    .line 1151
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1153
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3

    .line 1145
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api isIpmeEnabled()Z
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isIpmeEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager;->isRcsEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isRcsEnabled()Z
    .locals 1

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsManager;->isRcsEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isRcsEnabled(Z)Z
    .locals 5
    .param p1, "needAutoConfigCheck"    # Z

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "isRcsEnabled: "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 430
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isRcsEnabled: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v3

    .line 436
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->isRcsEnabled(ZI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 440
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist test-api isServiceAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Ljava/lang/String;

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 942
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isServiceAvailable: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return v3

    .line 948
    :cond_0
    const/4 v1, -0x1

    :try_start_0
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/ims/SemImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 949
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 952
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public blacklist isServiceAvailable(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 966
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 967
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isServiceAvailable: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return v3

    .line 972
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/ims/SemImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 973
    :catch_0
    move-exception v1

    .line 974
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 976
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public blacklist isSimMobilityActivated()Z
    .locals 5

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "isSimMobilityActivated:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 880
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isSimMobilityActivated: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return v3

    .line 886
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->isSimMobilityActivated(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 887
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 890
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist test-api isVoLteAvailable()Z
    .locals 5

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "isVoLteAvailable"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1114
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isVoLteAvailable : not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return v3

    .line 1120
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->isVoLteAvailable(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1121
    :catch_0
    move-exception v1

    .line 1122
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1124
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist test-api newSemCmcMediaRecorder()Lcom/samsung/android/ims/SemCmcMediaRecorder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1332
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1333
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-eqz v0, :cond_0

    .line 1337
    new-instance v1, Lcom/samsung/android/ims/SemCmcMediaRecorder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/ims/SemCmcMediaRecorder;-><init>(Lcom/samsung/android/ims/SemImsService;I)V

    return-object v1

    .line 1334
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SemImsManager is not ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 1046
    if-nez p1, :cond_0

    .line 1047
    return-void

    .line 1050
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1051
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_1

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void

    .line 1056
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;-><init>(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V

    .line 1059
    .local v1, "callback":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    :try_start_0
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/SemImsService;->registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V

    .line 1060
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    goto :goto_0

    .line 1061
    :catch_0
    move-exception v2

    .line 1062
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1064
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api registerDmValueListener(Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1221
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-eqz p1, :cond_1

    .line 1222
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1223
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    .line 1224
    .local v2, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v2, :cond_0

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return-void

    .line 1230
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

    invoke-interface {v2, v0}, Lcom/samsung/android/ims/SemImsService;->registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    goto :goto_0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1234
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "imsService":Lcom/samsung/android/ims/SemImsService;
    :goto_0
    goto :goto_1

    .line 1235
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :goto_1
    return-void
.end method

.method public whitelist test-api registerEpdgListener(Lcom/samsung/android/ims/SemEpdgListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/SemEpdgListener;

    .line 579
    const-string/jumbo v0, "semImsManager"

    const-string/jumbo v1, "registerEpdgListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 581
    const-string/jumbo v2, "registerEpdgListener listener null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v1

    .line 584
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    .line 585
    .local v2, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v2, :cond_1

    .line 586
    const-string v3, "Not initialized."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v1

    .line 589
    :cond_1
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;-><init>(Lcom/samsung/android/ims/SemEpdgListener;)V

    .line 590
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 592
    :try_start_0
    invoke-interface {v2, v0}, Lcom/samsung/android/ims/SemImsService;->registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    const/4 v1, 0x1

    return v1

    .line 594
    :catch_0
    move-exception v3

    .line 595
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 596
    return v1
.end method

.method public whitelist test-api registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 610
    const-string/jumbo v0, "semImsManager"

    if-nez p1, :cond_0

    .line 611
    const-string/jumbo v1, "registerImsOngoingFtEventListener : wrong instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v1

    .line 616
    .local v1, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v1, :cond_1

    .line 617
    const-string v2, "Not initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 621
    :cond_1
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;-><init>(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V

    .line 623
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    :try_start_0
    invoke-interface {v1, v0}, Lcom/samsung/android/ims/SemImsService;->registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V

    .line 624
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    goto :goto_0

    .line 625
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 628
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api registerImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "registerImsRegistrationListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-nez p1, :cond_0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerImsRegistrationListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 518
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_1

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 523
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;-><init>(Lcom/samsung/android/ims/SemImsRegistrationListener;)V

    .line 525
    .local v1, "callback":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    :try_start_0
    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/SemImsService;->registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V

    .line 526
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    goto :goto_0

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 530
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    .line 677
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-nez p1, :cond_0

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerSimMobilityStatusListener : wrong instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    .line 683
    .local v2, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v2, :cond_1

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void

    .line 688
    :cond_1
    new-instance v0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;-><init>(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V

    .line 690
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/ims/SemImsService;->registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V

    .line 691
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    goto :goto_0

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 695
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api sendMsisdnNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sendMsisdnNumber"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1183
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_0

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void

    .line 1188
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->sendMsisdnNumber(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    goto :goto_0

    .line 1189
    :catch_0
    move-exception v1

    .line 1190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1192
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api sendTryRegister()V
    .locals 4

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sendTryRegister"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 469
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_0

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sendTryRegister: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void

    .line 475
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->sendTryRegisterByPhoneId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 479
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api sendVerificationCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sendVerificationCode"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1164
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_0

    .line 1165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void

    .line 1169
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/ims/SemImsService;->sendVerificationCode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    goto :goto_0

    .line 1170
    :catch_0
    move-exception v1

    .line 1171
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1173
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setRttMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRttMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1313
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_0

    .line 1314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setRttMode: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-void

    .line 1319
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/ims/SemImsService;->setRttMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    goto :goto_0

    .line 1320
    :catch_0
    move-exception v1

    .line 1321
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1323
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api unRegisterEpdgListener(Lcom/samsung/android/ims/SemEpdgListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/SemEpdgListener;

    .line 745
    const-string/jumbo v0, "semImsManager"

    const-string/jumbo v1, "unRegisterEpdgListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v1, 0x0

    .line 747
    .local v1, "callback":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;

    .line 748
    .local v3, "tempListener":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;->getListener()Lcom/samsung/android/ims/SemEpdgListener;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;->getListener()Lcom/samsung/android/ims/SemEpdgListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    move-object v1, v3

    .line 750
    goto :goto_1

    .line 752
    .end local v3    # "tempListener":Lcom/samsung/android/ims/SemImsManager$SemEpdgListenerDelegate;
    :cond_0
    goto :goto_0

    .line 754
    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 755
    const-string/jumbo v3, "unRegisterEpdgListener : cannot find the listener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return v2

    .line 758
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mEpdgListeners:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 759
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 760
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_3

    .line 761
    const-string v4, "Not initialized."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return v2

    .line 765
    :cond_3
    :try_start_0
    invoke-interface {v3, v1}, Lcom/samsung/android/ims/SemImsService;->unRegisterEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    const/4 v0, 0x1

    return v0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 769
    return v2
.end method

.method public whitelist test-api unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 1073
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-nez p1, :cond_0

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-void

    .line 1078
    :cond_0
    const/4 v2, 0x0

    .line 1079
    .local v2, "callback":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;

    .line 1080
    .local v4, "tempListener":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1081
    move-object v2, v4

    .line 1082
    goto :goto_1

    .line 1084
    .end local v4    # "tempListener":Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
    :cond_1
    goto :goto_0

    .line 1086
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterAutoConfigurationListener : cannot find the listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void

    .line 1091
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mAutoConfigListeners:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1092
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 1093
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_4

    .line 1094
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1099
    :cond_4
    :try_start_0
    iget v0, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v2, v0}, Lcom/samsung/android/ims/SemImsService;->unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    goto :goto_2

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public whitelist test-api unregisterDmValueListener(Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    .line 1247
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    .line 1248
    .local v0, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v0, :cond_0

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return-void

    .line 1254
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mEventProxy:Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/SemImsService;->unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    goto :goto_0

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1258
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;

    .line 641
    .local v2, "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->getListener()Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->getListener()Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    move-object v0, v2

    .line 643
    goto :goto_1

    .line 645
    .end local v2    # "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
    :cond_0
    goto :goto_0

    .line 647
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 648
    const-string/jumbo v1, "semImsManager"

    const-string/jumbo v2, "unregisterImsOngoingFtEventListener : cannot find the listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager;->mOngoingFtEventListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 653
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v1

    .line 654
    .local v1, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v1, :cond_3

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void

    .line 660
    :cond_3
    :try_start_0
    invoke-interface {v1, v0}, Lcom/samsung/android/ims/SemImsService;->unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    goto :goto_2

    .line 661
    :catch_0
    move-exception v2

    .line 662
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 664
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public whitelist test-api unregisterImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "unregisterImsRegistrationListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterImsRegistrationListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 546
    :cond_0
    const/4 v0, 0x0

    .line 547
    .local v0, "callback":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;

    .line 548
    .local v4, "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 549
    move-object v0, v4

    .line 550
    goto :goto_1

    .line 552
    .end local v4    # "tempListener":Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
    :cond_1
    goto :goto_0

    .line 554
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unregisterImsRegistrationListener : cannot find the listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void

    .line 559
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mRegListeners:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 560
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 561
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_4

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void

    .line 567
    :cond_4
    :try_start_0
    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/ims/SemImsService;->unregisterImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_2

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 571
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public whitelist test-api unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    .line 706
    const-string v0, "]"

    const-string/jumbo v1, "semImsManager["

    if-nez p1, :cond_0

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterSimMobilityStatusListener : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void

    .line 711
    :cond_0
    const/4 v2, 0x0

    .line 712
    .local v2, "callback":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;

    .line 713
    .local v4, "tempListener":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->getListener()Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->getListener()Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 714
    move-object v2, v4

    .line 715
    goto :goto_1

    .line 717
    .end local v4    # "tempListener":Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
    :cond_1
    goto :goto_0

    .line 719
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterSimMobilityStatusListener : cannot find the listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 724
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager;->mSimMobilityStatusListeners:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 725
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsManager;->getImsService()Lcom/samsung/android/ims/SemImsService;

    move-result-object v3

    .line 726
    .local v3, "imsService":Lcom/samsung/android/ims/SemImsService;
    if-nez v3, :cond_4

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void

    .line 732
    :cond_4
    :try_start_0
    iget v0, p0, Lcom/samsung/android/ims/SemImsManager;->mPhoneId:I

    invoke-interface {v3, v2, v0}, Lcom/samsung/android/ims/SemImsService;->unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    goto :goto_2

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 736
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
