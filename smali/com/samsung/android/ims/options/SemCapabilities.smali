.class public Lcom/samsung/android/ims/options/SemCapabilities;
.super Ljava/lang/Object;
.source "SemCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemCapabilities$Builder;,
        Lcom/samsung/android/ims/options/SemCapabilities$FetchType;
    }
.end annotation


# static fields
.field public static final whitelist test-api CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/options/SemCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist test-api FEATURE_BURN_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist test-api FEATURE_CARD_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist test-api FEATURE_CHATBOT_CHAT_SESSION:J = 0x0L

.field public static whitelist test-api FEATURE_CHATBOT_COMMUNICATION:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist test-api FEATURE_CHATBOT_EXTENDED_MSG:J = 0x0L

.field public static whitelist test-api FEATURE_CHATBOT_ROLE:J = 0x0L

.field public static whitelist test-api FEATURE_CHATBOT_STANDALONE_MSG:J = 0x0L

.field public static whitelist test-api FEATURE_CHAT_CPM:I = 0x0

.field public static whitelist test-api FEATURE_CHAT_SIMPLE_IM:I = 0x0

.field public static whitelist test-api FEATURE_CLOUD_FILE:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist test-api FEATURE_ENRICHED_CALL_COMPOSER:J = 0x0L

.field public static whitelist test-api FEATURE_ENRICHED_POST_CALL:J = 0x0L

.field public static whitelist test-api FEATURE_ENRICHED_SHARED_MAP:J = 0x0L

.field public static whitelist test-api FEATURE_ENRICHED_SHARED_SKETCH:J = 0x0L

.field public static whitelist test-api FEATURE_FT:I = 0x0

.field public static whitelist test-api FEATURE_FT_HTTP:I = 0x0

.field public static whitelist test-api FEATURE_FT_HTTP_EXTRA:I = 0x0

.field public static whitelist test-api FEATURE_FT_STORE:I = 0x0

.field public static whitelist test-api FEATURE_FT_THUMBNAIL:I = 0x0

.field public static whitelist test-api FEATURE_FT_THUMBNAIL_V1:I = 0x0

.field public static whitelist test-api FEATURE_FT_VIA_SMS:I = 0x0

.field public static whitelist test-api FEATURE_GEOLOCATION_PULL:I = 0x0

.field public static whitelist test-api FEATURE_GEOLOCATION_PULL_FT:I = 0x0

.field public static whitelist test-api FEATURE_GEOLOCATION_PUSH:I = 0x0

.field public static whitelist test-api FEATURE_GEO_VIA_SMS:I = 0x0

.field public static whitelist test-api FEATURE_INTEGRATED_MSG:I = 0x0

.field public static whitelist test-api FEATURE_IPCALL:I = 0x0

.field public static whitelist test-api FEATURE_IPCALL_VIDEO:I = 0x0

.field public static whitelist test-api FEATURE_IPCALL_VIDEO_ONLY:I = 0x0

.field public static whitelist test-api FEATURE_ISH:I = 0x0

.field public static whitelist test-api FEATURE_LAST_SEEN_ACTIVE:J = 0x0L

.field public static whitelist test-api FEATURE_MMTEL:I = 0x0

.field public static whitelist test-api FEATURE_MMTEL_CALL_COMPOSER:J = 0x0L

.field public static whitelist test-api FEATURE_MMTEL_VIDEO:I = 0x0

.field public static whitelist test-api FEATURE_NON_RCS_USER:I = 0x0

.field public static whitelist test-api FEATURE_NOT_UPDATED:I = 0x0

.field public static whitelist test-api FEATURE_OFFLINE_RCS_USER:I = 0x0

.field public static whitelist test-api FEATURE_PLUG_IN:J = 0x0L

.field public static whitelist test-api FEATURE_PRESENCE_DISCOVERY:I = 0x0

.field public static whitelist test-api FEATURE_PUBLIC_MSG:J = 0x0L

.field public static whitelist test-api FEATURE_SF_GROUP_CHAT:I = 0x0

.field public static whitelist test-api FEATURE_SOCIAL_PRESENCE:I = 0x0

.field public static whitelist test-api FEATURE_STANDALONE_MSG:I = 0x0

.field public static whitelist test-api FEATURE_STANDALONE_MSG_V1:I = 0x0

.field public static whitelist test-api FEATURE_STICKER:I = 0x0

.field public static whitelist test-api FEATURE_VEMOTICON:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist test-api FEATURE_VSH:I = 0x0

.field public static whitelist test-api FEATURE_VSH_OUTSIDE_CALL:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemCapexInfo"

.field private static final blacklist SHIP_BUILD:Z

.field private static blacklist sFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAvailableFeatures:J

.field private blacklist mBotServiceId:Ljava/lang/String;

.field private blacklist mExtFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFeatures:J

.field private blacklist mIsAvailable:Z

.field private blacklist mIsExpired:Z

.field private blacklist mIsLegacyLatching:Z

.field private blacklist mTimestamp:Ljava/util/Date;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 44
    nop

    .line 45
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/ims/options/SemCapabilities;->SHIP_BUILD:Z

    .line 75
    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NON_RCS_USER:I

    .line 79
    const/high16 v0, 0x2000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NOT_UPDATED:I

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_OFFLINE_RCS_USER:I

    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ISH:I

    .line 96
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH:I

    .line 100
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_CPM:I

    .line 104
    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SF_GROUP_CHAT:I

    .line 108
    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT:I

    .line 112
    const/16 v0, 0x20

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL:I

    .line 116
    const/16 v0, 0x40

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_STORE:I

    .line 120
    const/16 v0, 0x80

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP:I

    .line 124
    const/16 v0, 0x100

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG:I

    .line 128
    const/16 v0, 0x200

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    .line 132
    const/16 v0, 0x400

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SOCIAL_PRESENCE:I

    .line 136
    const/16 v0, 0x800

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PRESENCE_DISCOVERY:I

    .line 140
    const/16 v0, 0x1000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL:I

    .line 144
    const/16 v0, 0x2000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_VIDEO:I

    .line 148
    const/16 v0, 0x4000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL:I

    .line 152
    const v0, 0x8000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO:I

    .line 156
    const/high16 v0, 0x10000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    .line 160
    const/high16 v0, 0x20000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL:I

    .line 164
    const/high16 v0, 0x40000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    .line 168
    const/high16 v0, 0x80000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PUSH:I

    .line 172
    const/high16 v0, 0x100000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_INTEGRATED_MSG:I

    .line 176
    const/high16 v0, 0x200000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 180
    const/high16 v0, 0x400000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_VIA_SMS:I

    .line 184
    const/high16 v0, 0x800000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEO_VIA_SMS:I

    .line 191
    const/high16 v0, 0x8000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STICKER:I

    .line 195
    const/high16 v0, 0x10000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP_EXTRA:I

    .line 199
    const/high16 v0, 0x20000000

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG_V1:I

    .line 203
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL_V1:I

    .line 214
    const-wide v0, 0x100000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VEMOTICON:J

    .line 219
    const-wide v0, 0x200000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CARD_MSG:J

    .line 224
    const-wide v0, 0x400000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_BURN_MSG:J

    .line 229
    const-wide v0, 0x800000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CLOUD_FILE:J

    .line 234
    const-wide v0, 0x1000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    .line 238
    const-wide v0, 0x2000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    .line 242
    const-wide v0, 0x4000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    .line 246
    const-wide v0, 0x8000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_POST_CALL:J

    .line 252
    const-wide v0, 0x10000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_COMMUNICATION:J

    .line 256
    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    .line 260
    const-wide v0, 0x20000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_ROLE:J

    .line 264
    const-wide v0, 0x40000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PLUG_IN:J

    .line 268
    const-wide v0, 0x80000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PUBLIC_MSG:J

    .line 272
    const-wide v0, 0x100000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    .line 276
    const-wide v0, 0x200000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    .line 280
    const-wide v0, 0x400000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    .line 284
    const-wide v0, 0x800000000000L

    sput-wide v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    .line 289
    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "ish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "vsh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fullsf_groupchat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftstandfw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "standalone_msg_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "vsh_outside_call"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "mmtel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "mmtel_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "mmtel_call_composer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "ipcall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "ipcall_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "ipcall_video_only"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geopush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "geopullft"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "intergrated_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "session_mode_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "not_updated"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sticker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp_extra"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftsms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geosms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callcomposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sharedmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sharedsketch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callunanswered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "lastseenactive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot_standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extended_bot_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "isbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "publicmsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilities$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/options/SemCapabilities$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/options/SemCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 36
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 37
    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 525
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    .line 528
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 529
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/options/SemCapabilities$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/ims/options/SemCapabilities$1;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilities$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 36
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 37
    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 340
    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    .line 341
    iget-wide v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mFeatures:J

    iput-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 342
    iget-wide v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mAvailableFeatures:J

    iput-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 343
    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsExpired:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    .line 344
    iget-boolean v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsLegacyLatching:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    .line 345
    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mTimestamp:Ljava/util/Date;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    .line 346
    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mBotServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    .line 347
    iget-object v0, p1, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mExtFeatures:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    .line 348
    return-void
.end method

.method private static blacklist dumpServices(J)Ljava/lang/String;
    .locals 9
    .param p0, "features"    # J

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 408
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 409
    .local v3, "feature":J
    and-long v5, v3, p0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 410
    sget-object v5, Lcom/samsung/android/ims/options/SemCapabilities;->sFeatures:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "feature":J
    :cond_0
    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBuilder()Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .locals 1

    .line 561
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    invoke-direct {v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 538
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/options/SemCapabilities;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/ims/options/SemCapabilities;->clone()Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api describeContents()I
    .locals 1

    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getAvailableFeatures()J
    .locals 2

    .line 401
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    return-wide v0
.end method

.method public whitelist test-api getBotServiceId()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getExpired()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    return v0
.end method

.method public whitelist test-api getExtFeature()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api getFeature()J
    .locals 2

    .line 392
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    return-wide v0
.end method

.method public whitelist test-api getLegacyLatching()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    return v0
.end method

.method public whitelist test-api getTimestamp()Ljava/util/Date;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api hasFeature(I)Z
    .locals 4
    .param p1, "feature"    # I

    .line 423
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hasFeature(J)Z
    .locals 2
    .param p1, "feature"    # J

    .line 433
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api isAvailable()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    return v0
.end method

.method public whitelist test-api isFeatureAvailable(I)Z
    .locals 2
    .param p1, "feature"    # I

    .line 357
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities;->isFeatureAvailable(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isFeatureAvailable(J)Z
    .locals 6
    .param p1, "feature"    # J

    .line 367
    sget v0, Lcom/samsung/android/ims/options/SemCapabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 369
    return v1

    .line 371
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 372
    .local v0, "isFeatureAvailable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFeatureAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemCapexInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 4

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities [mIsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 549
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsLegacyLatching="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBotServiceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    sget-boolean v2, Lcom/samsung/android/ims/options/SemCapabilities;->SHIP_BUILD:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "xxxxx"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAvailableFeatures="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    .line 553
    invoke-static {v2, v3}, Lcom/samsung/android/ims/options/SemCapabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    .line 554
    invoke-static {v1, v2}, Lcom/samsung/android/ims/options/SemCapabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    return-object v0
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 496
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 498
    iget-wide v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mAvailableFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 499
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mIsLegacyLatching:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mBotServiceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 504
    return-void
.end method
