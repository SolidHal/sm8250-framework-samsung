.class Lcom/samsung/android/emergencymode/SemEmergencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emergencymode/SemEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 152
    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 157
    return-void

    .line 158
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyManager"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 160
    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    const-string v1, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 174
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$300(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 175
    .local v1, "enabled":Z
    const/16 v4, 0x10

    .line 176
    .local v4, "flag":I
    iget-object v5, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 177
    const/16 v4, 0x200

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v2, v1, v4, v3, p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$200(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZLandroid/content/Intent;)V

    goto :goto_1

    .line 161
    .end local v1    # "enabled":Z
    .end local v4    # "flag":I
    :cond_3
    :goto_0
    const-string v1, "enabled"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 162
    .restart local v1    # "enabled":Z
    const-string v4, "flag"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 163
    .restart local v4    # "flag":I
    const-string/jumbo v6, "skipdialog"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 164
    .local v3, "skipdialog":Z
    if-eq v4, v5, :cond_8

    .line 165
    const/16 v5, 0x800

    if-ne v4, v5, :cond_4

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    const/16 v5, 0x200

    if-eq v4, v5, :cond_5

    const/16 v5, 0x400

    if-ne v4, v5, :cond_7

    .line 166
    :cond_5
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$100()Z

    move-result v5

    if-nez v5, :cond_7

    .line 167
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : trying to ON BCM|UPSM while BCM|UPMS not supported in this model. Flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v2, v1, v4, v3, p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$200(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZLandroid/content/Intent;)V

    .line 173
    .end local v1    # "enabled":Z
    .end local v3    # "skipdialog":Z
    .end local v4    # "flag":I
    :cond_8
    nop

    .line 181
    :goto_1
    return-void
.end method
