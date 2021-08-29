.class Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
.super Lcom/samsung/android/ims/SemAutoConfigListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoConfigurationListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/ims/SemAutoConfigurationListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 1443
    invoke-direct {p0}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;-><init>()V

    .line 1444
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 1445
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemAutoConfigurationListener;

    return-object v0
.end method

.method public blacklist onAutoConfigurationCompleted(Z)V
    .locals 1
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemAutoConfigurationListener;

    if-eqz v0, :cond_0

    .line 1468
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemAutoConfigurationListener;->onAutoConfigurationCompleted(Z)V

    .line 1470
    :cond_0
    return-void
.end method

.method public blacklist onMsisdnNumberNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemAutoConfigurationListener;

    if-eqz v0, :cond_0

    .line 1461
    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigurationListener;->onMsisdnNumberNeeded()V

    .line 1463
    :cond_0
    return-void
.end method

.method public blacklist onVerificationCodeNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemAutoConfigurationListener;

    if-eqz v0, :cond_0

    .line 1454
    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigurationListener;->onVerificationCodeNeeded()V

    .line 1456
    :cond_0
    return-void
.end method
