.class public Lcom/samsung/android/ims/SemImsManager$ApnType;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnType"
.end annotation


# static fields
.field public static final whitelist test-api CBS:Ljava/lang/String; = "cbs"

.field public static final whitelist test-api EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final whitelist test-api IMS:Ljava/lang/String; = "ims"

.field public static final whitelist test-api INTERNET:Ljava/lang/String; = "default"

.field public static final whitelist test-api MMS:Ljava/lang/String; = "mms"

.field public static final whitelist test-api XCAP:Ljava/lang/String; = "xcap"


# direct methods
.method public constructor whitelist test-api <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
