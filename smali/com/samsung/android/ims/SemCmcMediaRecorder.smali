.class public Lcom/samsung/android/ims/SemCmcMediaRecorder;
.super Ljava/lang/Object;
.source "SemCmcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;,
        Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_PAUSE:I = 0x4

.field private static final blacklist EVENT_PREPARE:I = 0x1

.field private static final blacklist EVENT_RELEASE:I = 0x7

.field private static final blacklist EVENT_RESET:I = 0x6

.field private static final blacklist EVENT_RESUME:I = 0x5

.field private static final blacklist EVENT_START:I = 0x2

.field private static final blacklist EVENT_STOP:I = 0x3

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist STATE_DATASOURCE_CONFIGURED:I = 0x3

.field private static final blacklist STATE_ERROR:I = 0x7

.field private static final blacklist STATE_INITIAL:I = 0x1

.field private static final blacklist STATE_INITIALIZED:I = 0x2

.field private static final blacklist STATE_PREPARED:I = 0x4

.field private static final blacklist STATE_RECORDING:I = 0x5

.field private static final blacklist STATE_RELEASED:I = 0x6

.field private static final blacklist STATE_UNKNOWN:I = 0x8


# instance fields
.field blacklist mImsService:Lcom/samsung/android/ims/SemImsService;

.field private blacklist mOnErrorListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

.field private blacklist mOnInfoListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

.field private blacklist mPhoneId:I

.field private blacklist mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-direct {v0}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .line 66
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/ims/SemImsService;I)V
    .locals 3
    .param p1, "imsService"    # Lcom/samsung/android/ims/SemImsService;
    .param p2, "phoneId"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-direct {v0}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    .line 71
    iput p2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    .line 74
    :try_start_0
    new-instance v0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;-><init>(Lcom/samsung/android/ims/SemCmcMediaRecorder;)V

    iget v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/ims/SemImsService;->registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemCmcMediaRecorder;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnInfoListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    return-object v0
.end method

.method static synthetic blacklist access$202(Lcom/samsung/android/ims/SemCmcMediaRecorder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ims/SemCmcMediaRecorder;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    return p1
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemCmcMediaRecorder;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnErrorListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method blacklist getSemCmcRecordingInfo()Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    return-object v0
.end method

.method public whitelist test-api pause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 197
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 116
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    nop

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current stats is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x7

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 270
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    nop

    .line 274
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 236
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 240
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    nop

    .line 219
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setAudioChannels(I)V
    .locals 3
    .param p1, "numChannels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioChannels"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 448
    if-lez p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioChannels(I)V

    .line 452
    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setAudioEncoder(I)V
    .locals 3
    .param p1, "audio_encoder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioEncoder(I)V

    .line 500
    return-void

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setAudioEncodingBitRate(I)V
    .locals 3
    .param p1, "bitRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioEncodingBitRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 424
    if-lez p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioEncodingBitRate(I)V

    .line 428
    return-void

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setAudioSamplingRate(I)V
    .locals 3
    .param p1, "samplingRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioSamplingRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 476
    if-lez p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioSamplingRate(I)V

    .line 480
    return-void

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setAudioSource(I)V
    .locals 3
    .param p1, "audio_source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioSource(I)V

    .line 295
    iput v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    .line 296
    return-void
.end method

.method public whitelist test-api setAuthor(I)V
    .locals 3
    .param p1, "author"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 574
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "param-meta-author="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAuthor(Ljava/lang/String;)V

    .line 579
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setDurationInterval(I)V
    .locals 3
    .param p1, "duration_inverval_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDurationInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 517
    if-lez p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setDurationInterval(I)V

    .line 522
    return-void

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration interval is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFileSizeInterval(J)V
    .locals 3
    .param p1, "file_size_interval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFileSizeInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 539
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setFileSizeInterval(J)V

    .line 544
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File size interval is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setMaxDuration(I)V
    .locals 3
    .param p1, "max_duration_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMaxDuration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 375
    if-lez p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setMaxDuration(I)V

    .line 380
    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max duration is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setMaxFileSize(J)V
    .locals 3
    .param p1, "max_filesize_bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMaxFileSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setMaxFileSize(J)V

    .line 351
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max file size is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOnErrorListener(Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    .line 639
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iput-object p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnErrorListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    .line 642
    return-void
.end method

.method public whitelist test-api setOnInfoListener(Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    .line 608
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iput-object p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnInfoListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    .line 611
    return-void
.end method

.method public whitelist test-api setOutputFormat(I)V
    .locals 3
    .param p1, "output_format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOutputFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setOutputFormat(I)V

    .line 321
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    .line 322
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOutputPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "output_absolute_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOutputPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setOutputPath(Ljava/lang/String;)V

    .line 403
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output absolute path is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 139
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
