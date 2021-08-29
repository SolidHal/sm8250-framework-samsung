.class Lcom/samsung/android/ims/options/SemCapabilityListener$1;
.super Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;
.source "SemCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ims/options/SemCapabilityListener;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-direct {p0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    .locals 3
    .param p1, "uri"    # Lcom/samsung/android/ims/util/SemImsUri;
    .param p2, "capa"    # Lcom/samsung/android/ims/options/SemCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->access$000(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method

.method public blacklist onCapabilityAndAvailabilityPublished(I)V
    .locals 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->access$000(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method

.method public blacklist onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/util/SemImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/options/SemCapabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/util/SemImsUri;>;"
    .local p2, "capaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/options/SemCapabilities;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->access$000(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    return-void
.end method

.method public blacklist onOwnCapabilitiesChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->access$000(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    return-void
.end method
