.class public Lcom/samsung/android/emergencymode/SemEmergencySettings;
.super Ljava/lang/Object;
.source "SemEmergencySettings.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemEmergencySettings"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static blacklist checkForMCC()Ljava/lang/String;
    .locals 16

    .line 266
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "mccmn":Ljava/lang/String;
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "isReady":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForMCC: gsm.sim.operator.numeric mccmn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 274
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "arrMcc":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 281
    .local v4, "arrIsReady":[Ljava/lang/String;
    :goto_0
    array-length v6, v5

    .line 282
    .local v6, "simCount":I
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    .line 284
    .local v8, "mcc1":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/4 v10, 0x0

    if-ge v9, v6, :cond_2

    .line 285
    aget-object v11, v5, v9

    if-eqz v11, :cond_1

    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v7, :cond_1

    .line 286
    aget-object v11, v5, v9

    const/4 v12, 0x3

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_2

    .line 288
    :cond_1
    aput-object v2, v8, v9

    .line 284
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 292
    .end local v9    # "i":I
    :cond_2
    if-nez v4, :cond_3

    .line 293
    const-string v7, "checkForMCC: requested Country : default cond."

    invoke-static {v3, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-object v2

    .line 297
    :cond_3
    array-length v7, v4

    .line 298
    .local v7, "size_readystate":I
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "arrIsReadyValue":Ljava/lang/String;
    const-string v11, "checkForMCC: requested Country : mcc1[0] "

    const-string v12, "READY"

    const-string v13, " sim ready = "

    if-lez v7, :cond_4

    aget-object v14, v4, v10

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v4, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    aget-object v2, v8, v10

    return-object v2

    .line 303
    :cond_4
    const-string v14, "checkForMCC: requested Country : mcc1[1] "

    const/4 v15, 0x1

    if-le v7, v15, :cond_5

    aget-object v2, v4, v15

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v8, v15

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v15

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    aget-object v2, v8, v15

    return-object v2

    .line 306
    :cond_5
    if-lez v6, :cond_6

    aget-object v2, v8, v10

    if-eqz v2, :cond_6

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    aget-object v2, v8, v10

    return-object v2

    .line 309
    :cond_6
    if-le v6, v15, :cond_7

    aget-object v2, v8, v15

    if-eqz v2, :cond_7

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v8, v15

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    aget-object v2, v8, v15

    return-object v2

    .line 313
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkForMCC: requested Country : default cond. sim ready = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v2, 0x0

    return-object v2

    .line 276
    .end local v4    # "arrIsReady":[Ljava/lang/String;
    .end local v5    # "arrMcc":[Ljava/lang/String;
    .end local v6    # "simCount":I
    .end local v7    # "size_readystate":I
    .end local v8    # "mcc1":[Ljava/lang/String;
    .end local v9    # "arrIsReadyValue":Ljava/lang/String;
    :cond_8
    return-object v2
.end method

.method private static blacklist get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;

    .line 72
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pref=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "selection":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 80
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    const-string/jumbo v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v7    # "selection":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 89
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SemEmergencySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    return-object v0

    .line 88
    :goto_2
    if-eqz v1, :cond_3

    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_3
    throw v2

    .line 73
    .end local v0    # "ret":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 121
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 123
    return p2

    .line 125
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static whitelist getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 171
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-wide p2
.end method

.method public static blacklist getEmergencyNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->getEmergencyNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getEmergencyNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "type"    # Ljava/lang/String;

    .line 212
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "China"

    const-string/jumbo v4, "ro.csc.country_code"

    const-string v5, "getEmergencyNumber not found emergency number!"

    const-string v6, "SemEmergencySettings"

    if-eqz p1, :cond_e

    if-eqz v2, :cond_e

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 215
    :cond_0
    const/4 v13, 0x0

    .line 216
    .local v13, "ret":Ljava/lang/String;
    const/4 v14, 0x0

    .line 217
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 218
    .local v0, "isReady":Z
    const/4 v7, 0x1

    .line 219
    .local v7, "mState":I
    const-string/jumbo v8, "phone"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 221
    .local v15, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v8, 0x0

    .line 222
    .local v8, "mccmnc":Ljava/lang/String;
    const/4 v9, 0x0

    move v12, v0

    move v11, v7

    move-object v0, v8

    .end local v7    # "mState":I
    .end local v8    # "mccmnc":Ljava/lang/String;
    .local v0, "mccmnc":Ljava/lang/String;
    .local v9, "i":I
    .local v11, "mState":I
    .local v12, "isReady":Z
    :goto_0
    :try_start_0
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v9, v7, :cond_4

    .line 224
    if-eqz v0, :cond_1

    :try_start_1
    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    if-ne v11, v7, :cond_2

    .line 225
    :cond_1
    invoke-static {v1, v9}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->getPhoneId(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 227
    :cond_2
    invoke-virtual {v15, v9}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v11, v7

    .line 228
    const/4 v7, 0x5

    if-ne v11, v7, :cond_3

    .line 229
    const/4 v7, 0x1

    move v12, v7

    .line 222
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_5

    .line 246
    :catch_0
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_2

    .line 232
    .restart local v0    # "mccmnc":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 233
    .local v7, "mcc":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    .line 234
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v8

    move-object v9, v7

    goto :goto_1

    .line 236
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->checkForMCC()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v9, v7

    .line 238
    .end local v7    # "mcc":Ljava/lang/String;
    .local v9, "mcc":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEmergencyNumber requested Country : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " sim ready = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mcc=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "selection":Ljava/lang/String;
    sget-object v8, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v7, p1

    move-object/from16 v19, v9

    .end local v9    # "mcc":Ljava/lang/String;
    .local v19, "mcc":Ljava/lang/String;
    move-object/from16 v9, v16

    move/from16 v16, v11

    .end local v11    # "mState":I
    .local v16, "mState":I
    move-object/from16 v11, v17

    move/from16 v17, v12

    .end local v12    # "isReady":Z
    .local v17, "isReady":Z
    move-object/from16 v12, v18

    :try_start_5
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v14, v7

    .line 242
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_6

    .line 243
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v13, v7

    .line 249
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .end local v19    # "mcc":Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_7

    .line 250
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_7
    if-nez v13, :cond_a

    .line 252
    invoke-static {v6, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 255
    goto :goto_3

    .line 246
    .end local v0    # "countryCode":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 249
    .end local v16    # "mState":I
    .end local v17    # "isReady":Z
    .restart local v11    # "mState":I
    .restart local v12    # "isReady":Z
    :catchall_1
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    .end local v11    # "mState":I
    .end local v12    # "isReady":Z
    .restart local v16    # "mState":I
    .restart local v17    # "isReady":Z
    goto :goto_5

    .line 246
    .end local v16    # "mState":I
    .end local v17    # "isReady":Z
    .restart local v11    # "mState":I
    .restart local v12    # "isReady":Z
    :catch_2
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    .line 247
    .end local v11    # "mState":I
    .end local v12    # "isReady":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "mState":I
    .restart local v17    # "isReady":Z
    :goto_2
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v14, :cond_8

    .line 250
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_8
    if-nez v13, :cond_a

    .line 252
    invoke-static {v6, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 255
    :goto_3
    const-string v3, "119"

    move-object v13, v3

    .end local v13    # "ret":Ljava/lang/String;
    .local v3, "ret":Ljava/lang/String;
    goto :goto_4

    .line 257
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v13    # "ret":Ljava/lang/String;
    :cond_9
    const-string v3, "911"

    move-object v13, v3

    .line 261
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_a
    :goto_4
    return-object v13

    .line 249
    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v14, :cond_b

    .line 250
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_b
    if-nez v13, :cond_d

    .line 252
    invoke-static {v6, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "countryCode":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 255
    const-string v13, "119"

    goto :goto_6

    .line 257
    :cond_c
    const-string v13, "911"

    .line 260
    .end local v4    # "countryCode":Ljava/lang/String;
    :cond_d
    :goto_6
    throw v0

    .line 213
    .end local v13    # "ret":Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v16    # "mState":I
    .end local v17    # "isReady":Z
    :cond_e
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 103
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return p2
.end method

.method public static whitelist getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 153
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-wide p2
.end method

.method private static blacklist getPhoneId(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 330
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 331
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_0

    .line 332
    invoke-static {v0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->getSubId(Landroid/telephony/SubscriptionManager;I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 334
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 137
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 139
    return-object p2

    .line 141
    :cond_0
    return-object v0
.end method

.method private static blacklist getSubId(Landroid/telephony/SubscriptionManager;I)I
    .locals 2
    .param p0, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p1, "slotId"    # I

    .line 320
    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 322
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    return v1

    .line 326
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isPossibleNormalCall(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "return_val":Z
    :try_start_0
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 360
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 366
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static blacklist makeEmergencyNumber(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isReady"    # Z

    .line 338
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SemEmergencySettings"

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "This is Emergency number"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-object p1

    .line 343
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->isPossibleNormalCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    const-string v0, "SIM Ready, not emergency number."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-object p1

    .line 347
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Ready = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", default emergency number."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist put(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 59
    if-nez p0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "selection":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "pref"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    return-void
.end method
