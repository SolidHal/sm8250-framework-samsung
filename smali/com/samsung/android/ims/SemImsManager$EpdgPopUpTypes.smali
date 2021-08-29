.class public Lcom/samsung/android/ims/SemImsManager$EpdgPopUpTypes;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgPopUpTypes"
.end annotation


# static fields
.field public static final whitelist test-api CANNOT_SWITCH_TO_WIFI:I = 0x1

.field public static final whitelist test-api LOW_WIFI_SIGNAL:I = 0x2

.field public static final whitelist test-api TURN_OFF_MOBILE_DATA:I = 0x3

.field public static final whitelist test-api WFC_DROP_WARNING_NOTI:I = 0x4


# direct methods
.method public constructor whitelist test-api <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
