.class public interface abstract Lcom/samsung/android/ims/ft/SemImsFtListener;
.super Ljava/lang/Object;
.source "SemImsFtListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;,
        Lcom/samsung/android/ims/ft/SemImsFtListener$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onFtStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
