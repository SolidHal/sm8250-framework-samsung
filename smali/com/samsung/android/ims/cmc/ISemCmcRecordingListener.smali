.class public interface abstract Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
.super Ljava/lang/Object;
.source "ISemCmcRecordingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;,
        Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInfo(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
