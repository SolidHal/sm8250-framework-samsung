.class Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
.super Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsOngoingFtEventListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 1424
    invoke-direct {p0}, Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;-><init>()V

    .line 1425
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mListener:Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 1426
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mListener:Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    return-object v0
.end method

.method public blacklist onFtStateChanged(Z)V
    .locals 1
    .param p1, "event"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mListener:Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    if-eqz v0, :cond_0

    .line 1435
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;->onFtStateChanged(Z)V

    .line 1437
    :cond_0
    return-void
.end method
