.class Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
.super Lcom/samsung/android/ims/SemImsRegiListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsRegistrationListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemImsRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 1343
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;-><init>()V

    .line 1344
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    .line 1345
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/ims/SemImsRegistrationListener;
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    return-object v0
.end method

.method public blacklist onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .locals 1
    .param p1, "reg"    # Lcom/samsung/android/ims/SemImsRegistration;
    .param p2, "registrationError"    # Lcom/samsung/android/ims/SemImsRegistrationError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    if-eqz v0, :cond_0

    .line 1361
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ims/SemImsRegistrationListener;->onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V

    .line 1363
    :cond_0
    return-void
.end method

.method public blacklist onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .locals 1
    .param p1, "reg"    # Lcom/samsung/android/ims/SemImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    if-eqz v0, :cond_0

    .line 1354
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemImsRegistrationListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V

    .line 1356
    :cond_0
    return-void
.end method
