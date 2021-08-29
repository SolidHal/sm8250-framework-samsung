.class Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
.super Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimMobilityStatusListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/ims/SemSimMobilityStatusListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    .line 1476
    invoke-direct {p0}, Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;-><init>()V

    .line 1477
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mListener:Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    .line 1478
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/ims/SemSimMobilityStatusListener;
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mListener:Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    return-object v0
.end method

.method public blacklist onSimMobilityStateChanged(Z)V
    .locals 1
    .param p1, "event"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mListener:Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    if-eqz v0, :cond_0

    .line 1487
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemSimMobilityStatusListener;->onSimMobilityStateChanged(Z)V

    .line 1489
    :cond_0
    return-void
.end method
