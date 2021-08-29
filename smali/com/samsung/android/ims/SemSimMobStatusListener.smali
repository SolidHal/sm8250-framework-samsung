.class public interface abstract Lcom/samsung/android/ims/SemSimMobStatusListener;
.super Ljava/lang/Object;
.source "SemSimMobStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;,
        Lcom/samsung/android/ims/SemSimMobStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onSimMobilityStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
