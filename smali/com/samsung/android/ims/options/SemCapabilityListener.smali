.class public Lcom/samsung/android/ims/options/SemCapabilityListener;
.super Ljava/lang/Object;
.source "SemCapabilityListener.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemCapabilityListener"


# instance fields
.field private final blacklist EVT_CAP_CHANGED:I

.field private final blacklist EVT_CAP_PUBLISHED:I

.field private final blacklist EVT_MULTIPLE_CAP_CHANGED:I

.field private final blacklist EVT_OWN_CAP_CHANGED:I

.field blacklist callback:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor whitelist test-api <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_OWN_CAP_CHANGED:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_MULTIPLE_CAP_CHANGED:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_CAP_CHANGED:I

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_CAP_PUBLISHED:I

    .line 72
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/options/SemCapabilityListener$1;-><init>(Lcom/samsung/android/ims/options/SemCapabilityListener;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->callback:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    .line 99
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityListener$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ims/options/SemCapabilityListener$2;-><init>(Lcom/samsung/android/ims/options/SemCapabilityListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/options/SemCapabilityListener;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    .locals 0
    .param p1, "uri"    # Lcom/samsung/android/ims/util/SemImsUri;
    .param p2, "cap"    # Lcom/samsung/android/ims/options/SemCapabilities;

    .line 49
    return-void
.end method

.method public whitelist test-api onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 57
    return-void
.end method

.method public whitelist test-api onOwnCapabilitiesChanged()V
    .locals 0

    .line 40
    return-void
.end method
