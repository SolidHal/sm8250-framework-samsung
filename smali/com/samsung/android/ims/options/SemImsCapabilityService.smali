.class public interface abstract Lcom/samsung/android/ims/options/SemImsCapabilityService;
.super Ljava/lang/Object;
.source "SemImsCapabilityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;,
        Lcom/samsung/android/ims/options/SemImsCapabilityService$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
