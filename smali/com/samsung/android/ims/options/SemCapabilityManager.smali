.class public Lcom/samsung/android/ims/options/SemCapabilityManager;
.super Ljava/lang/Object;
.source "SemCapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static final blacklist INTENT_ACTION_IMSSERVICE_RESTART:Ljava/lang/String; = "com.sec.ims.imsmanager.RESTART"


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private final blacklist LOG_TAG_BASE:Ljava/lang/String;

.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

.field private blacklist mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

.field private blacklist mPhoneId:I

.field private blacklist mQueuedCapabilityListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/ims/options/SemCapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRestartReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor whitelist test-api <init>(Landroid/content/Context;Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;
    .param p3, "phoneId"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, "semCapabilityManager"

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG_BASE:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    .line 42
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    .line 66
    iput p3, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->init()V

    .line 68
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/options/SemCapabilityManager;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$102(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)Lcom/samsung/android/ims/options/SemImsCapabilityService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ims/options/SemCapabilityManager;
    .param p1, "x1"    # Lcom/samsung/android/ims/options/SemImsCapabilityService;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/options/SemCapabilityManager;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/options/SemCapabilityManager;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    return-object v0
.end method

.method private blacklist init()V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semCapabilityManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/options/SemCapabilityManager$1;-><init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->connect()V

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist test-api connect()V
    .locals 5

    .line 118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not recommended in main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Connecting to SemCapabilityDiscoveryService..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/options/SemCapabilityManager$2;-><init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.SemCapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Lcom/samsung/android/ims/extensions/SemContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/ims/extensions/SemContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 165
    return-void
.end method

.method public whitelist test-api disconnect()V
    .locals 4

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onDisconnected()V

    .line 184
    :cond_2
    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public whitelist test-api getCapabilities(Landroid/net/Uri;I)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 223
    return-object v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v1, v0, p2, v2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 228
    :cond_1
    return-object v0
.end method

.method public whitelist test-api getCapabilitiesByContactId(Ljava/lang/String;I)[Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_0

    .line 262
    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getCapabilitiesByNumber(Ljava/lang/String;IZ)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "delay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_0

    .line 244
    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getOwnCapabilities()Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_0

    .line 207
    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api isConnected()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api registerListener(Lcom/samsung/android/ims/options/SemCapabilityListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    if-nez p1, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    return-void

    .line 285
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/ims/options/SemCapabilityListener;->callback:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    iget v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V

    .line 286
    return-void
.end method

.method public whitelist test-api unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    if-nez p1, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 302
    return-void

    .line 305
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/ims/options/SemCapabilityListener;->callback:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    iget v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V

    .line 306
    return-void
.end method
