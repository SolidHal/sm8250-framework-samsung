.class public Lcom/samsung/android/feature/SemFloatingFeature;
.super Ljava/lang/Object;
.source "SemFloatingFeature.java"

# interfaces
.implements Lcom/samsung/android/feature/IFloatingFeature;


# static fields
.field private static final blacklist FEATURE_XML:Ljava/lang/String; = "/vendor/etc/floating_feature.xml"

.field private static final blacklist LOG_ENABLED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "SemFloatingFeature"

.field private static blacklist sInstance:Lcom/samsung/android/feature/SemFloatingFeature;


# instance fields
.field private final blacklist mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "productShip":Z
    :try_start_0
    const-string/jumbo v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 53
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 54
    :goto_0
    sput-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    .line 55
    .end local v0    # "productShip":Z
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/feature/SemFloatingFeature;->loadFeatureFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemFloatingFeature;
    .locals 1

    .line 82
    sget-object v0, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemFloatingFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 85
    :cond_0
    sget-object v0, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    return-object v0
.end method

.method private blacklist loadFeatureFile()V
    .locals 10

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 289
    .local v1, "fi":Ljava/io/InputStream;
    const/4 v2, -0x1

    .line 290
    .local v2, "eventType":I
    const/4 v3, 0x0

    .line 291
    .local v3, "TagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 293
    .local v4, "TagValue":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 295
    new-instance v5, Ljava/io/File;

    const-string v6, "/vendor/etc/floating_feature.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v5, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    goto/16 :goto_4

    .line 301
    :cond_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 302
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 303
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object v0, v8

    .line 304
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v8

    .line 305
    const/4 v8, 0x0

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 306
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    move v2, v8

    .line 308
    :goto_0
    if-eq v2, v7, :cond_4

    .line 309
    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    .line 310
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_1

    .line 311
    :cond_1
    const/4 v8, 0x4

    if-ne v2, v8, :cond_3

    .line 312
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 313
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 314
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    .line 316
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v8

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v8

    .line 318
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 323
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 324
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    goto :goto_1

    .line 325
    :catch_1
    move-exception v8

    .line 326
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_1
    :try_start_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v8

    .line 335
    :goto_2
    goto :goto_0

    .line 333
    :catch_2
    move-exception v8

    .line 334
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 339
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 342
    goto :goto_3

    .line 340
    :catch_3
    move-exception v7

    .line 341
    .local v7, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 350
    .end local v5    # "featureXmlFile":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 351
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 352
    const/4 v1, 0x0

    .line 356
    goto :goto_9

    .line 354
    :catch_4
    move-exception v5

    .line 355
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 357
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 297
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v5, "featureXmlFile":Ljava/io/File;
    :cond_5
    :goto_4
    :try_start_a
    const-string v6, "Cannot read floating_feature.xml file"

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 350
    if-eqz v1, :cond_6

    .line 351
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 352
    const/4 v1, 0x0

    goto :goto_5

    .line 354
    :catch_5
    move-exception v6

    .line 355
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_6

    .line 356
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    nop

    .line 298
    :goto_6
    return-void

    .line 349
    .end local v5    # "featureXmlFile":Ljava/io/File;
    :catchall_0
    move-exception v5

    goto :goto_a

    .line 346
    :catch_6
    move-exception v5

    .line 347
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 350
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_7

    .line 351
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_7

    .line 344
    :catch_7
    move-exception v5

    .line 345
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 350
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_7

    .line 351
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 352
    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    .line 354
    :catch_8
    move-exception v5

    .line 355
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 357
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 356
    :cond_7
    :goto_8
    nop

    .line 358
    :goto_9
    return-void

    .line 350
    :goto_a
    if-eqz v1, :cond_8

    .line 351
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 352
    const/4 v1, 0x0

    goto :goto_b

    .line 354
    :catch_9
    move-exception v6

    .line 355
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_c

    .line 356
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :goto_b
    nop

    .line 357
    :goto_c
    throw v5
.end method

.method private static blacklist logd(Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 58
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFloatingFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method private static blacklist loge(Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 70
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFloatingFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method private static blacklist logw(Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 64
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFloatingFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string v0, "The first argumment of getBoolean() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "original":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 116
    .local v1, "value":Z
    return v1
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `boolean getBoolean(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `boolean getBoolean(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 134
    if-nez p1, :cond_0

    .line 135
    const-string v0, "The first argumment of getBoolean() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 142
    .local v1, "value":Z
    :goto_0
    return v1
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 214
    if-nez p1, :cond_0

    .line 215
    const-string v0, "The first argumment of getInt() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 216
    const/4 v0, -0x1

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "original":Ljava/lang/String;
    const/4 v1, -0x1

    .line 222
    .local v1, "value":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "[%s] cannot be parsed to Integer value"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `int getInt(String tag, int defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `int getInt(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 266
    if-nez p1, :cond_0

    .line 267
    const-string v0, "The first argumment of getInt() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 268
    const/4 v0, -0x1

    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    .local v0, "original":Ljava/lang/String;
    move v1, p2

    .line 274
    .local v1, "value":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "[%s] cannot be parsed to Integer value"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 279
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public blacklist getInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 154
    const-string v0, ""

    if-nez p1, :cond_0

    .line 155
    const-string v1, "The first argumment of getString() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 156
    return-object v0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 162
    .local v0, "value":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `String getString(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `String getString(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 181
    if-nez p1, :cond_0

    .line 182
    const-string v0, "The first argumment of getString() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 183
    const-string v0, ""

    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 189
    .local v1, "value":Ljava/lang/String;
    :goto_0
    return-object v1
.end method
