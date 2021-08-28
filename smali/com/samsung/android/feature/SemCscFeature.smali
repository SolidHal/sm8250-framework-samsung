.class public Lcom/samsung/android/feature/SemCscFeature;
.super Ljava/lang/Object;
.source "SemCscFeature.java"


# static fields
.field private static final blacklist ATTR_COUNTRYISO:Ljava/lang/String; = "countryISO"

.field private static final blacklist TAG:Ljava/lang/String; = "SemCscFeature"

.field private static final blacklist TAG_COUNTRY:Ljava/lang/String; = "Country"

.field private static final blacklist TAG_COUNTRYISO:Ljava/lang/String; = "CountryISO"

.field private static final blacklist TAG_FEATURESET:Ljava/lang/String; = "FeatureSet"

.field private static blacklist bLoadFeaure:Z

.field private static blacklist sInstance:Lcom/samsung/android/feature/SemCscFeature;


# instance fields
.field private final blacklist SALT_LENGTH:I

.field private final blacklist XML_HEADER:Ljava/lang/String;

.field private blacklist mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFeatureList_2:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist salts:[B

.field private final blacklist shifts:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 26

    .line 180
    move-object/from16 v1, p0

    const-string v0, "/cscfeature.xml"

    const-string v2, "/"

    const-string v3, "/cscfeature_network.xml"

    const-string v4, ""

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 62
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    .line 64
    const-string v5, "<?xml"

    iput-object v5, v1, Lcom/samsung/android/feature/SemCscFeature;->XML_HEADER:Ljava/lang/String;

    .line 66
    const/16 v5, 0x100

    iput v5, v1, Lcom/samsung/android/feature/SemCscFeature;->SALT_LENGTH:I

    .line 69
    new-array v6, v5, [B

    fill-array-data v6, :array_0

    iput-object v6, v1, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    .line 81
    new-array v5, v5, [B

    fill-array-data v5, :array_1

    iput-object v5, v1, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    .line 182
    const/4 v5, 0x0

    .line 183
    .local v5, "isOmc":Z
    const/4 v6, 0x0

    .line 184
    .local v6, "useConf":Z
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/system/omc/SW_Configuration.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v7, "f":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "/odm/etc/omc/SW_Configuration.xml"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v8, "fOdm":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v10, "/product/omc/SW_Configuration.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v9, "fProduct":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v11, "/prism/etc/SW_Configuration.xml"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v10, "fPrism":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 190
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/4 v6, 0x1

    .line 192
    :cond_3
    const-string/jumbo v11, "persist.sys.omc_path"

    invoke-static {v11, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "omcPath":Ljava/lang/String;
    const-string/jumbo v12, "persist.sys.omcnw_path"

    invoke-static {v12, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 194
    .local v12, "omcNwPath":Ljava/lang/String;
    const-string/jumbo v13, "persist.sys.omcnw_path2"

    invoke-static {v13, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, "omcNwPath2":Ljava/lang/String;
    const-string/jumbo v14, "mdc.omc_root"

    invoke-static {v14, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, "rootPath":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 197
    const-string v15, "/optics/configs/carriers"

    move-object v14, v15

    .line 199
    :cond_4
    const-string/jumbo v15, "ro.csc.sales_code"

    invoke-static {v15, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 200
    .local v15, "salesCode":Ljava/lang/String;
    move-object/from16 v16, v7

    .end local v7    # "f":Ljava/io/File;
    .local v16, "f":Ljava/io/File;
    const-string/jumbo v7, "ro.csc.omcnw_code"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "omcnwCode":Ljava/lang/String;
    move-object/from16 v17, v8

    .end local v8    # "fOdm":Ljava/io/File;
    .local v17, "fOdm":Ljava/io/File;
    const-string/jumbo v8, "ro.csc.omcnw_code2"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "omcnwCode2":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v18, "/conf"

    goto :goto_0

    :cond_5
    move-object/from16 v18, v4

    :goto_0
    move-object/from16 v19, v18

    .line 203
    .local v19, "conf":Ljava/lang/String;
    move/from16 v18, v6

    .end local v6    # "useConf":Z
    .local v18, "useConf":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    .end local v19    # "conf":Ljava/lang/String;
    .local v9, "conf":Ljava/lang/String;
    .local v20, "fProduct":Ljava/io/File;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "salesFeaturePath":Ljava/lang/String;
    move-object/from16 v19, v10

    .end local v10    # "fPrism":Ljava/io/File;
    .local v19, "fPrism":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "networkFeaturePath":Ljava/lang/String;
    move-object/from16 v21, v11

    .end local v11    # "omcPath":Ljava/lang/String;
    .local v21, "omcPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "networkFeaturePath2":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v22, v8

    .end local v8    # "omcnwCode2":Ljava/lang/String;
    .local v22, "omcnwCode2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v11

    .line 208
    .local v8, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v23, v6

    .end local v6    # "salesFeaturePath":Ljava/lang/String;
    .local v23, "salesFeaturePath":Ljava/lang/String;
    const-string v6, "/single/"

    if-nez v11, :cond_7

    .line 209
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 210
    .end local v23    # "salesFeaturePath":Ljava/lang/String;
    .local v11, "salesFeaturePath":Ljava/lang/String;
    move-object/from16 v24, v8

    .end local v8    # "featureXmlFile":Ljava/io/File;
    .local v24, "featureXmlFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v25, v12

    .end local v12    # "omcNwPath":Ljava/lang/String;
    .local v25, "omcNwPath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .end local v24    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 212
    move-object v0, v4

    .end local v11    # "salesFeaturePath":Ljava/lang/String;
    .local v0, "salesFeaturePath":Ljava/lang/String;
    goto :goto_1

    .line 211
    .end local v0    # "salesFeaturePath":Ljava/lang/String;
    .restart local v11    # "salesFeaturePath":Ljava/lang/String;
    :cond_6
    move-object v0, v11

    goto :goto_1

    .line 208
    .end local v11    # "salesFeaturePath":Ljava/lang/String;
    .end local v25    # "omcNwPath":Ljava/lang/String;
    .restart local v12    # "omcNwPath":Ljava/lang/String;
    .restart local v23    # "salesFeaturePath":Ljava/lang/String;
    :cond_7
    move-object/from16 v24, v8

    move-object/from16 v25, v12

    .end local v8    # "featureXmlFile":Ljava/io/File;
    .end local v12    # "omcNwPath":Ljava/lang/String;
    .restart local v24    # "featureXmlFile":Ljava/io/File;
    .restart local v25    # "omcNwPath":Ljava/lang/String;
    move-object/from16 v0, v23

    .line 216
    .end local v23    # "salesFeaturePath":Ljava/lang/String;
    .end local v24    # "featureXmlFile":Ljava/io/File;
    .restart local v0    # "salesFeaturePath":Ljava/lang/String;
    .restart local v8    # "featureXmlFile":Ljava/io/File;
    :goto_1
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v11

    .line 217
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "/outside/"

    if-nez v11, :cond_9

    .line 218
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 219
    new-instance v11, Ljava/io/File;

    move-object/from16 v23, v8

    .end local v8    # "featureXmlFile":Ljava/io/File;
    .local v23, "featureXmlFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v11

    .line 220
    .end local v23    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_8

    .line 221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 222
    new-instance v11, Ljava/io/File;

    move-object/from16 v23, v8

    .end local v8    # "featureXmlFile":Ljava/io/File;
    .restart local v23    # "featureXmlFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v11

    .line 223
    .end local v23    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a

    .line 224
    move-object v10, v4

    goto :goto_2

    .line 220
    :cond_8
    move-object/from16 v23, v8

    .end local v8    # "featureXmlFile":Ljava/io/File;
    .restart local v23    # "featureXmlFile":Ljava/io/File;
    goto :goto_2

    .line 217
    .end local v23    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "featureXmlFile":Ljava/io/File;
    :cond_9
    move-object/from16 v23, v8

    .line 229
    :cond_a
    :goto_2
    new-instance v11, Ljava/io/File;

    move-object/from16 v23, v8

    .end local v8    # "featureXmlFile":Ljava/io/File;
    .restart local v23    # "featureXmlFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v11

    .line 230
    .end local v23    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_b

    .line 231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 232
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v6

    .line 233
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_b

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 235
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v6

    .line 236
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 237
    move-object v2, v4

    .line 241
    :cond_b
    move-object v3, v0

    .line 242
    .end local v21    # "omcPath":Ljava/lang/String;
    .local v3, "omcPath":Ljava/lang/String;
    move-object v4, v10

    .line 243
    .end local v25    # "omcNwPath":Ljava/lang/String;
    .local v4, "omcNwPath":Ljava/lang/String;
    move-object v6, v2

    .line 245
    .end local v13    # "omcNwPath2":Ljava/lang/String;
    .local v6, "omcNwPath2":Ljava/lang/String;
    iget-object v11, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    const/4 v12, 0x0

    invoke-direct {v1, v5, v3, v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;Z)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 246
    invoke-direct {v1, v5, v4}, Lcom/samsung/android/feature/SemCscFeature;->loadNetworkFeatureFile(ZLjava/lang/String;)V

    .line 247
    if-eqz v6, :cond_c

    .line 248
    iget-object v11, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    const/4 v12, 0x1

    invoke-direct {v1, v5, v3, v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;Z)Z

    .line 249
    invoke-direct {v1, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->loadNetworkFeatureFile2nd(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    .end local v0    # "salesFeaturePath":Ljava/lang/String;
    .end local v2    # "networkFeaturePath2":Ljava/lang/String;
    .end local v3    # "omcPath":Ljava/lang/String;
    .end local v4    # "omcNwPath":Ljava/lang/String;
    .end local v5    # "isOmc":Z
    .end local v6    # "omcNwPath2":Ljava/lang/String;
    .end local v7    # "omcnwCode":Ljava/lang/String;
    .end local v8    # "featureXmlFile":Ljava/io/File;
    .end local v9    # "conf":Ljava/lang/String;
    .end local v10    # "networkFeaturePath":Ljava/lang/String;
    .end local v14    # "rootPath":Ljava/lang/String;
    .end local v15    # "salesCode":Ljava/lang/String;
    .end local v16    # "f":Ljava/io/File;
    .end local v17    # "fOdm":Ljava/io/File;
    .end local v18    # "useConf":Z
    .end local v19    # "fPrism":Ljava/io/File;
    .end local v20    # "fProduct":Ljava/io/File;
    .end local v22    # "omcnwCode2":Ljava/lang/String;
    :cond_c
    goto :goto_3

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemCscFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        -0x3bt
        0x21t
        -0x22t
        0x6bt
        0x1ct
        -0x6bt
        0x37t
        0x4et
        0x11t
        -0x51t
        0x6t
        -0x50t
        -0x79t
        -0x23t
        -0x17t
        0x48t
        0x7at
        -0x3ft
        -0x2bt
        0x44t
        0x77t
        -0x4et
        -0x6ft
        -0x3ct
        0x1ft
        0x3ct
        0x39t
        0x5ct
        -0x58t
        -0x64t
        -0x45t
        -0x6at
        0x5bt
        0x45t
        0x5dt
        0x6et
        0x17t
        0x5dt
        0x35t
        -0x2ct
        -0x33t
        0x40t
        -0x50t
        0x2et
        0x2t
        -0x4t
        0xct
        -0x2dt
        0x50t
        -0x2ct
        -0x23t
        -0x6ft
        -0x1ct
        -0x42t
        -0x74t
        0x27t
        0x2t
        -0x1bt
        -0x2dt
        -0x34t
        0x7dt
        0x27t
        0x42t
        -0x5at
        0x3ft
        -0x69t
        -0x43t
        0x54t
        -0x39t
        -0x4t
        -0x4t
        0x65t
        -0x5at
        0x51t
        0xat
        -0x21t
        0x1t
        0x43t
        -0x39t
        -0x47t
        0x12t
        -0x4at
        0x66t
        0x60t
        -0x59t
        0x40t
        -0x11t
        0x36t
        -0x5et
        -0x54t
        -0x42t
        0xet
        0x77t
        0x79t
        0x2t
        -0x4et
        -0x4ft
        0x59t
        0x3ft
        0x5dt
        0x6dt
        -0x4et
        -0x33t
        0x42t
        -0x24t
        0x20t
        0x56t
        0x3t
        -0x3at
        -0xft
        0x5ct
        0x3at
        0x2t
        -0x59t
        -0x50t
        -0xdt
        -0x1t
        0x7at
        -0x4t
        0x30t
        0x3ft
        -0x2ct
        0x3bt
        0x64t
        -0x2at
        -0x2dt
        0x3bt
        -0x7t
        -0x11t
        -0x36t
        0x22t
        -0x36t
        0x47t
        -0x40t
        -0x1at
        -0x57t
        -0x50t
        -0x11t
        -0x2ct
        -0x26t
        -0x70t
        0x46t
        0xat
        -0x6at
        0x5ft
        -0x18t
        -0x4t
        -0x76t
        0x2dt
        -0x55t
        -0xdt
        0x55t
        0x19t
        -0x66t
        -0x77t
        0xdt
        -0x25t
        0x74t
        0x2et
        -0x45t
        0x3bt
        0x2at
        -0x5at
        -0x26t
        -0x69t
        0x65t
        -0x77t
        -0x24t
        0x61t
        -0x3t
        -0x3et
        -0x5bt
        -0x61t
        -0x7dt
        0x11t
        0xet
        0x6at
        -0x48t
        -0x77t
        0x63t
        0x6ft
        0x14t
        0x12t
        -0x1bt
        0x71t
        0x40t
        -0x18t
        0x4at
        -0x3ct
        -0x64t
        0x1at
        0x38t
        -0x2ct
        -0x46t
        0xct
        -0x33t
        -0x64t
        -0x20t
        -0xbt
        0x1at
        0x30t
        -0x75t
        0x62t
        -0x5dt
        0x33t
        -0x19t
        -0x4ft
        -0x1ft
        0x61t
        0x57t
        -0x69t
        -0x40t
        0x7t
        -0xdt
        -0x65t
        0x21t
        -0x7at
        0x5t
        -0x68t
        0x59t
        -0x2ct
        -0x75t
        0x3ft
        -0x50t
        -0x6t
        -0x47t
        -0x6et
        -0x1dt
        -0x69t
        0x74t
        0x6bt
        -0x5dt
        0x5bt
        -0x29t
        -0xdt
        0x14t
        -0x73t
        -0x4et
        0x2bt
        0x4ft
        -0x7at
        0x6t
        0x66t
        -0x20t
        0x34t
        -0x76t
        -0x33t
        0x48t
        -0x68t
        0x29t
        -0x26t
        0x7ct
        0x48t
        -0x7et
        -0x23t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x7t
        0x1t
        0x6t
        0x5t
        0x3t
        0x3t
        0x1t
        0x2t
        0x5t
        0x0t
        0x6t
        0x2t
        0x2t
        0x4t
        0x2t
        0x2t
        0x3t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x3t
        0x1t
        0x6t
        0x5t
        0x6t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x3t
        0x2t
        0x7t
        0x7t
        0x5t
        0x6t
        0x7t
        0x3t
        0x5t
        0x1t
        0x0t
        0x7t
        0x6t
        0x3t
        0x6t
        0x5t
        0x4t
        0x5t
        0x3t
        0x5t
        0x1t
        0x3t
        0x3t
        0x1t
        0x5t
        0x4t
        0x1t
        0x0t
        0x0t
        0x2t
        0x6t
        0x6t
        0x6t
        0x6t
        0x4t
        0x0t
        0x1t
        0x1t
        0x0t
        0x5t
        0x5t
        0x4t
        0x2t
        0x4t
        0x6t
        0x1t
        0x7t
        0x1t
        0x2t
        0x1t
        0x1t
        0x6t
        0x5t
        0x4t
        0x7t
        0x6t
        0x5t
        0x1t
        0x6t
        0x7t
        0x0t
        0x2t
        0x6t
        0x3t
        0x1t
        0x7t
        0x1t
        0x1t
        0x7t
        0x4t
        0x0t
        0x4t
        0x2t
        0x5t
        0x3t
        0x1t
        0x1t
        0x5t
        0x6t
        0x0t
        0x3t
        0x5t
        0x3t
        0x6t
        0x5t
        0x7t
        0x2t
        0x5t
        0x6t
        0x6t
        0x2t
        0x2t
        0x3t
        0x6t
        0x0t
        0x4t
        0x3t
        0x2t
        0x0t
        0x2t
        0x2t
        0x3t
        0x5t
        0x3t
        0x3t
        0x2t
        0x5t
        0x5t
        0x5t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x6t
        0x2t
        0x4t
        0x7t
        0x1t
        0x4t
        0x6t
        0x0t
        0x6t
        0x4t
        0x3t
        0x2t
        0x6t
        0x1t
        0x6t
        0x3t
        0x2t
        0x1t
        0x6t
        0x7t
        0x3t
        0x2t
        0x1t
        0x1t
        0x5t
        0x6t
        0x7t
        0x2t
        0x2t
        0x2t
        0x7t
        0x4t
        0x6t
        0x7t
        0x5t
        0x3t
        0x1t
        0x4t
        0x2t
        0x7t
        0x1t
        0x6t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x5t
        0x4t
        0x5t
        0x0t
        0x1t
        0x1t
        0x6t
        0x3t
        0x7t
        0x2t
        0x0t
        0x2t
        0x5t
        0x0t
        0x1t
        0x3t
        0x3t
        0x2t
        0x6t
        0x7t
        0x7t
        0x2t
        0x5t
        0x6t
        0x0t
        0x4t
        0x1t
        0x2t
        0x5t
        0x3t
        0x7t
        0x6t
        0x5t
        0x2t
        0x5t
        0x2t
        0x0t
        0x1t
        0x3t
        0x1t
        0x4t
        0x3t
        0x4t
        0x2t
    .end array-data
.end method

.method private blacklist _decode([B)[B
    .locals 6
    .param p1, "source"    # [B

    .line 91
    array-length v0, p1

    new-array v0, v0, [B

    .line 92
    .local v0, "results":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 93
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v4, v3, v4

    shl-int/2addr v2, v4

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    rem-int/lit16 v5, v1, 0x100

    aget-byte v3, v3, v5

    rsub-int/lit8 v3, v3, 0x8

    ushr-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 94
    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private blacklist _decompressGzip([B)[B
    .locals 8
    .param p1, "sourceGz"    # [B

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 105
    .local v1, "gzIs":Ljava/util/zip/GZIPInputStream;
    const/16 v2, 0x400

    :try_start_0
    new-array v2, v2, [B

    .line 106
    .local v2, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 107
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 108
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v3, "resultStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 110
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 112
    .local v5, "len":I
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 113
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 116
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "len":I
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 118
    .local v4, "result":[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 120
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v2    # "buffer":[B
    .end local v3    # "resultStream":Ljava/io/ByteArrayOutputStream;
    nop

    .line 127
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 128
    const/4 v1, 0x0

    .line 131
    nop

    .line 132
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    const/4 v0, 0x0

    .line 137
    goto :goto_2

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 139
    :goto_2
    return-object v4

    .line 125
    .end local v4    # "result":[B
    :catchall_0
    move-exception v2

    goto :goto_7

    .line 121
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    const/4 v3, 0x0

    .line 126
    if-eqz v1, :cond_2

    .line 127
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 128
    const/4 v1, 0x0

    goto :goto_3

    .line 135
    :catch_2
    move-exception v4

    goto :goto_4

    .line 131
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 133
    const/4 v0, 0x0

    goto :goto_5

    .line 136
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 137
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    nop

    .line 123
    :goto_6
    return-object v3

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    if-eqz v1, :cond_4

    .line 127
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 128
    const/4 v1, 0x0

    goto :goto_8

    .line 135
    :catch_3
    move-exception v3

    goto :goto_9

    .line 131
    :cond_4
    :goto_8
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    const/4 v0, 0x0

    goto :goto_a

    .line 136
    .local v3, "e":Ljava/io/IOException;
    :goto_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_a
    nop

    .line 138
    :goto_b
    throw v2
.end method

.method private blacklist decode([B)[B
    .locals 2
    .param p1, "source"    # [B

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->_decode([B)[B

    move-result-object v0

    .line 177
    .local v0, "decodedGzip":[B
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->_decompressGzip([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemCscFeature;
    .locals 1

    .line 279
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z

    if-nez v0, :cond_2

    .line 280
    :cond_0
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z

    if-nez v0, :cond_1

    .line 281
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 284
    :cond_1
    new-instance v0, Lcom/samsung/android/feature/SemCscFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCscFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 286
    :cond_2
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    return-object v0
.end method

.method private blacklist isElementWithCountryISO(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 894
    const-string v0, "FeatureSet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Country"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CountryISO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isUseOdmProduct()Z
    .locals 4

    .line 746
    new-instance v0, Ljava/io/File;

    const-string v1, "/odm/etc/omc/SW_Configuration.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v0, "fOdm":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/product/omc/SW_Configuration.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    .local v1, "fProduct":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/prism/etc/SW_Configuration.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 749
    .local v2, "fPrism":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 750
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist isXmlEncoded(Ljava/io/File;)Z
    .locals 5
    .param p1, "featureXmlFile"    # Ljava/io/File;

    .line 143
    const-string v0, "SemCscFeature"

    const/4 v1, 0x0

    .line 146
    .local v1, "ptrRead":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 147
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "headerStr":Ljava/lang/String;
    nop

    .line 150
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 153
    if-eqz v3, :cond_1

    const-string v4, "<?xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    const-string v4, "Encoded"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v0, 0x1

    .line 165
    nop

    .line 166
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    const/4 v1, 0x0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return v0

    .line 154
    :cond_1
    :goto_1
    nop

    .line 165
    nop

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    const/4 v1, 0x0

    .line 171
    goto :goto_2

    .line 169
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return v2

    .line 164
    .end local v3    # "headerStr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 160
    :catch_2
    move-exception v3

    .line 161
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Exception : isXmlEncoded"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    nop

    .line 165
    if-eqz v1, :cond_2

    .line 166
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 167
    const/4 v1, 0x0

    goto :goto_3

    .line 169
    :catch_3
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 162
    :goto_4
    return v2

    .line 165
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5
    if-eqz v1, :cond_3

    .line 166
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 167
    const/4 v1, 0x0

    goto :goto_6

    .line 169
    :catch_4
    move-exception v2

    .line 170
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    nop

    .line 172
    :goto_7
    throw v0
.end method

.method private blacklist loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;Z)Z
    .locals 11
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p4, "isFeatureForSlot2"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 756
    .local p3, "featureList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "mdc.unified"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "unifiedSalesCode":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    const-string v7, ""

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z

    move-result v1

    .line 760
    .local v1, "ret":Z
    const-string/jumbo v2, "ro.csc.countryiso_code"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "deviceCountryISO":Ljava/lang/String;
    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z

    move-result v3

    .line 762
    .local v3, "retCountryISO":Z
    or-int v4, v1, v3

    return v4

    .line 764
    .end local v1    # "ret":Z
    .end local v2    # "deviceCountryISO":Ljava/lang/String;
    .end local v3    # "retCountryISO":Z
    :cond_0
    const-string v10, ""

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist loadFeatureFile(ZLjava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Z
    .locals 21
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p4, "isFeatureForSlot2"    # Z
    .param p5, "deviceCountryISO"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 770
    .local p3, "featureList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 771
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 772
    .local v3, "fi":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 773
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, -0x1

    .line 774
    .local v5, "eventType":I
    const/4 v6, 0x0

    .line 775
    .local v6, "TagName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 777
    .local v7, "TagValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 778
    .local v8, "featurePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 780
    .local v9, "ret":Z
    const/4 v0, 0x0

    .line 782
    .local v0, "appendFeatureSet":Z
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 783
    const/4 v0, 0x1

    move v10, v0

    goto :goto_0

    .line 782
    :cond_0
    move v10, v0

    .line 786
    .end local v0    # "appendFeatureSet":Z
    .local v10, "appendFeatureSet":Z
    :goto_0
    if-eqz p4, :cond_1

    const-string/jumbo v0, "slot2 "

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "slot1 "

    :goto_1
    move-object v11, v0

    .line 788
    .local v11, "slotNum":Ljava/lang/String;
    const-string v12, "SemCscFeature"

    if-nez v10, :cond_2

    .line 789
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 876
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_1e

    .line 873
    :catch_0
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_16

    .line 871
    :catch_1
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_17

    .line 869
    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_18

    .line 791
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p2

    goto :goto_3

    :cond_3
    :try_start_1
    const-string v0, "/system/csc"
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_22
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :goto_3
    move-object v8, v0

    .line 793
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/cscfeature.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1f
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    if-eqz v13, :cond_6

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v13, v17, v15

    if-gtz v13, :cond_4

    goto :goto_4

    .line 806
    :cond_4
    if-nez p4, :cond_5

    .line 807
    sput-boolean v14, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 809
    :cond_5
    const/4 v9, 0x1

    move-object v13, v0

    goto :goto_6

    .line 795
    :cond_6
    :goto_4
    :try_start_4
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/feature.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    .line 796
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1f
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    if-eqz v13, :cond_8

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gtz v13, :cond_7

    goto :goto_5

    :cond_7
    move-object v13, v0

    goto :goto_6

    .line 797
    :cond_8
    :goto_5
    :try_start_6
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/others.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 798
    .end local v0    # "featureXmlFile":Ljava/io/File;
    .local v13, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v18, 0x0

    cmp-long v0, v14, v18

    if-gtz v0, :cond_9

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    goto/16 :goto_10

    .line 812
    :cond_9
    :goto_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v14, v0

    .line 813
    .local v14, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 814
    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    .line 815
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 817
    invoke-direct {v1, v13}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1f
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v0, :cond_a

    .line 818
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 819
    .local v0, "size":I
    new-array v15, v0, [B

    .line 820
    .local v15, "source":[B
    invoke-virtual {v3, v15}, Ljava/io/InputStream;->read([B)I

    .line 821
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 823
    invoke-direct {v1, v15}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v18

    move-object/from16 v19, v18

    .line 824
    .local v19, "result":[B
    move/from16 v18, v0

    .end local v0    # "size":I
    .local v18, "size":I
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v20, v5

    move-object/from16 v5, v19

    .end local v19    # "result":[B
    .local v5, "result":[B
    .local v20, "eventType":I
    :try_start_8
    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 826
    const/4 v0, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 827
    .end local v5    # "result":[B
    .end local v15    # "source":[B
    .end local v18    # "size":I
    goto :goto_7

    .line 876
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_1e

    .line 873
    :catch_3
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_16

    .line 871
    :catch_4
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_17

    .line 869
    :catch_5
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v5, v20

    move-object/from16 v8, p3

    goto/16 :goto_18

    .line 876
    .end local v20    # "eventType":I
    .local v5, "eventType":I
    :catchall_2
    move-exception v0

    move/from16 v20, v5

    move-object v1, v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_1e

    .line 873
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    :catch_6
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_16

    .line 871
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    :catch_7
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_17

    .line 869
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    :catch_8
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    goto/16 :goto_18

    .line 828
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_a
    move/from16 v20, v5

    .end local v5    # "eventType":I
    .restart local v20    # "eventType":I
    const/4 v0, 0x0

    :try_start_9
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 831
    :goto_7
    const/4 v0, 0x0

    .line 832
    .local v0, "skipElement":Z
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_18
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object v15, v7

    move-object v7, v6

    move v6, v5

    move v5, v0

    .line 833
    .end local v0    # "skipElement":Z
    .end local v20    # "eventType":I
    .local v5, "skipElement":Z
    .local v6, "eventType":I
    .local v7, "TagName":Ljava/lang/String;
    .local v15, "TagValue":Ljava/lang/String;
    :goto_8
    move-object/from16 v16, v8

    const/4 v8, 0x1

    .end local v8    # "featurePath":Ljava/lang/String;
    .local v16, "featurePath":Ljava/lang/String;
    if-eq v6, v8, :cond_14

    .line 834
    const/4 v0, 0x2

    if-ne v6, v0, :cond_e

    .line 835
    if-nez v5, :cond_b

    move-object/from16 v8, p5

    :try_start_a
    invoke-direct {v1, v2, v8, v10}, Lcom/samsung/android/feature/SemCscFeature;->needToSkipElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 836
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 837
    .end local v7    # "TagName":Ljava/lang/String;
    .local v0, "TagName":Ljava/lang/String;
    const/4 v5, 0x1

    move-object v7, v0

    goto :goto_d

    .line 876
    .end local v0    # "TagName":Ljava/lang/String;
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v8, p3

    :goto_9
    move-object v1, v0

    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_1e

    .line 873
    :catch_9
    move-exception v0

    move-object/from16 v8, p3

    :goto_a
    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_16

    .line 871
    :catch_a
    move-exception v0

    move-object/from16 v8, p3

    :goto_b
    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_17

    .line 869
    :catch_b
    move-exception v0

    move-object/from16 v8, p3

    :goto_c
    move v5, v6

    move-object v6, v7

    move-object v7, v15

    goto/16 :goto_18

    .line 835
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_b
    move-object/from16 v8, p5

    .line 839
    :cond_c
    :goto_d
    if-nez v5, :cond_d

    .line 840
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v8, p3

    move-object v7, v0

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v0    # "TagName":Ljava/lang/String;
    goto/16 :goto_f

    .line 839
    .end local v0    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :cond_d
    move-object/from16 v8, p3

    goto/16 :goto_f

    .line 843
    :cond_e
    move-object/from16 v8, p5

    const/4 v0, 0x4

    if-ne v6, v0, :cond_12

    .line 844
    if-nez v5, :cond_11

    .line 845
    :try_start_b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v15, v0

    .line 846
    if-eqz v15, :cond_f

    .line 847
    :try_start_c
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v15, v0

    .line 849
    :cond_f
    :try_start_d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-nez v0, :cond_10

    .line 851
    move-object/from16 v8, p3

    :try_start_e
    invoke-interface {v8, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_16
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 854
    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 852
    :catch_c
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 853
    .local v0, "ex":Ljava/lang/Exception;
    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .local v18, "TagName":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    goto/16 :goto_e

    .line 849
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :cond_10
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_e

    .line 876
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move-object v1, v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_1e

    .line 873
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_16

    .line 871
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_17

    .line 869
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v18, v7

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto/16 :goto_18

    .line 844
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v5    # "skipElement":Z
    .restart local v7    # "TagName":Ljava/lang/String;
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_11
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    goto :goto_e

    .line 857
    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :cond_12
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .end local v7    # "TagName":Ljava/lang/String;
    .restart local v18    # "TagName":Ljava/lang/String;
    const/4 v0, 0x3

    if-ne v6, v0, :cond_13

    .line 858
    if-eqz v5, :cond_13

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/feature/SemCscFeature;->isElementWithCountryISO(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v0, :cond_13

    .line 859
    const/4 v0, 0x0

    move v5, v0

    move-object/from16 v7, v18

    .end local v5    # "skipElement":Z
    .local v0, "skipElement":Z
    goto :goto_f

    .line 876
    .end local v0    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_1e

    .line 873
    :catch_10
    move-exception v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_16

    .line 871
    :catch_11
    move-exception v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_17

    .line 869
    :catch_12
    move-exception v0

    move v5, v6

    move-object v7, v15

    move-object/from16 v6, v18

    goto/16 :goto_18

    .line 864
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_13
    :goto_e
    move-object/from16 v7, v18

    .end local v18    # "TagName":Ljava/lang/String;
    .restart local v7    # "TagName":Ljava/lang/String;
    :goto_f
    :try_start_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_13
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move v6, v0

    .line 867
    move-object/from16 v8, v16

    goto/16 :goto_8

    .line 876
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_6
    move-exception v0

    goto/16 :goto_9

    .line 871
    :catch_13
    move-exception v0

    goto/16 :goto_b

    .line 869
    :catch_14
    move-exception v0

    goto/16 :goto_c

    .line 865
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_15
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 866
    .local v0, "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 867
    move-object/from16 v1, p0

    move-object/from16 v8, v16

    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_8

    .line 873
    .end local v5    # "skipElement":Z
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_16
    move-exception v0

    goto/16 :goto_a

    .line 833
    .restart local v5    # "skipElement":Z
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_14
    move-object/from16 v8, p3

    move-object/from16 v18, v7

    .line 877
    .end local v5    # "skipElement":Z
    .end local v7    # "TagName":Ljava/lang/String;
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .restart local v18    # "TagName":Ljava/lang/String;
    nop

    .line 878
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 879
    const/4 v3, 0x0

    .line 882
    if-eqz v4, :cond_15

    .line 883
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_17

    .line 884
    const/4 v4, 0x0

    .line 888
    :cond_15
    move-object/from16 v7, v18

    goto/16 :goto_1d

    .line 886
    :catch_17
    move-exception v0

    .line 887
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .end local v0    # "e":Ljava/io/IOException;
    move-object/from16 v7, v18

    goto/16 :goto_1d

    .line 876
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15    # "TagValue":Ljava/lang/String;
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v18    # "TagName":Ljava/lang/String;
    .local v6, "TagName":Ljava/lang/String;
    .local v7, "TagValue":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    :catchall_7
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move-object v1, v0

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_1e

    .line 873
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_16

    .line 871
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_19
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_17

    .line 869
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move/from16 v5, v20

    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    goto/16 :goto_18

    .line 798
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .local v5, "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    :cond_16
    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .line 799
    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    :goto_10
    if-nez p4, :cond_17

    .line 800
    const/4 v0, 0x0

    :try_start_13
    sput-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->bLoadFeaure:Z
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1b
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_11

    .line 876
    .end local v13    # "featureXmlFile":Ljava/io/File;
    :catchall_8
    move-exception v0

    move-object v1, v0

    move/from16 v5, v20

    goto/16 :goto_1e

    .line 873
    :catch_1b
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_16

    .line 871
    :catch_1c
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_17

    .line 869
    :catch_1d
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_18

    .line 802
    .restart local v13    # "featureXmlFile":Ljava/io/File;
    :cond_17
    :goto_11
    nop

    .line 877
    if-eqz v3, :cond_18

    .line 878
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 879
    const/4 v3, 0x0

    goto :goto_12

    .line 886
    :catch_1e
    move-exception v0

    goto :goto_13

    .line 882
    :cond_18
    :goto_12
    if-eqz v4, :cond_19

    .line 883
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1e

    .line 884
    const/4 v4, 0x0

    goto :goto_14

    .line 887
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_13
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 888
    .end local v0    # "e":Ljava/io/IOException;
    :cond_19
    :goto_14
    nop

    .line 802
    :goto_15
    return v9

    .line 876
    .end local v13    # "featureXmlFile":Ljava/io/File;
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    move-object v1, v0

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto/16 :goto_1e

    .line 873
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_1f
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto :goto_16

    .line 871
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_20
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto :goto_17

    .line 869
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_21
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v16    # "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto :goto_18

    .line 876
    .end local v16    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    move-object v1, v0

    .end local v5    # "eventType":I
    .end local v8    # "featurePath":Ljava/lang/String;
    .local v1, "featurePath":Ljava/lang/String;
    .restart local v20    # "eventType":I
    goto/16 :goto_1e

    .line 873
    .end local v1    # "featurePath":Ljava/lang/String;
    .end local v20    # "eventType":I
    .restart local v5    # "eventType":I
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_22
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    .line 874
    .end local v8    # "featurePath":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "featurePath":Ljava/lang/String;
    :goto_16
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 877
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1a

    .line 878
    :try_start_16
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 879
    const/4 v0, 0x0

    move-object v3, v0

    .line 882
    :cond_1a
    if-eqz v4, :cond_1d

    .line 883
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_25

    goto :goto_1a

    .line 871
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_23
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    .line 872
    .end local v8    # "featurePath":Ljava/lang/String;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "featurePath":Ljava/lang/String;
    :goto_17
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 877
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1b

    .line 878
    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 879
    const/4 v0, 0x0

    move-object v3, v0

    .line 882
    :cond_1b
    if-eqz v4, :cond_1d

    .line 883
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_25

    goto :goto_1a

    .line 869
    .end local v16    # "featurePath":Ljava/lang/String;
    .restart local v8    # "featurePath":Ljava/lang/String;
    :catch_24
    move-exception v0

    move/from16 v20, v5

    move-object v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v1

    .line 870
    .end local v8    # "featurePath":Ljava/lang/String;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "featurePath":Ljava/lang/String;
    :goto_18
    :try_start_19
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 877
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_1c

    .line 878
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 879
    const/4 v0, 0x0

    move-object v3, v0

    .end local v3    # "fi":Ljava/io/InputStream;
    .local v0, "fi":Ljava/io/InputStream;
    goto :goto_19

    .line 886
    .end local v0    # "fi":Ljava/io/InputStream;
    .restart local v3    # "fi":Ljava/io/InputStream;
    :catch_25
    move-exception v0

    goto :goto_1b

    .line 882
    :cond_1c
    :goto_19
    if-eqz v4, :cond_1d

    .line 883
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_25

    .line 884
    :goto_1a
    const/4 v0, 0x0

    move-object v4, v0

    .end local v4    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_1c

    .line 887
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_1b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .end local v0    # "e":Ljava/io/IOException;
    move-object v15, v7

    move-object v7, v6

    move v6, v5

    goto :goto_1d

    .line 888
    :cond_1d
    :goto_1c
    move-object v15, v7

    move-object v7, v6

    move v6, v5

    .line 890
    .end local v5    # "eventType":I
    .local v6, "eventType":I
    .local v7, "TagName":Ljava/lang/String;
    .restart local v15    # "TagValue":Ljava/lang/String;
    :goto_1d
    return v9

    .line 876
    .end local v15    # "TagValue":Ljava/lang/String;
    .restart local v5    # "eventType":I
    .local v6, "TagName":Ljava/lang/String;
    .local v7, "TagValue":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object v1, v0

    .line 877
    :goto_1e
    if-eqz v3, :cond_1e

    .line 878
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 879
    const/4 v3, 0x0

    goto :goto_1f

    .line 886
    :catch_26
    move-exception v0

    goto :goto_20

    .line 882
    :cond_1e
    :goto_1f
    if-eqz v4, :cond_1f

    .line 883
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_26

    .line 884
    const/4 v4, 0x0

    goto :goto_21

    .line 887
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_20
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 888
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f
    :goto_21
    nop

    .line 889
    :goto_22
    throw v1
.end method

.method private blacklist loadNetworkFeatureFile(ZLjava/lang/String;)V
    .locals 18
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 913
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 914
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 915
    .local v3, "fi":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 916
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, -0x1

    .line 917
    .local v5, "eventType":I
    const/4 v6, 0x0

    .line 918
    .local v6, "TagName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 919
    .local v7, "TagValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 921
    .local v8, "TagSpecID":Ljava/lang/String;
    const/4 v9, 0x0

    .line 926
    .local v9, "featurePath":Ljava/lang/String;
    const-string v10, "SemCscFeature"

    if-eqz p1, :cond_0

    move-object/from16 v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "/system/csc"

    :goto_0
    move-object v9, v0

    .line 928
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cscfeature_network.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 929
    .local v11, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-gtz v0, :cond_1

    goto/16 :goto_4

    .line 944
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v12, v0

    .line 945
    .local v12, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 946
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    .line 947
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 949
    invoke-direct {v1, v11}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 950
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 951
    .local v0, "size":I
    new-array v15, v0, [B

    .line 952
    .local v15, "source":[B
    invoke-virtual {v3, v15}, Ljava/io/InputStream;->read([B)I

    .line 953
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 955
    invoke-direct {v1, v15}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v16

    move-object/from16 v17, v16

    .line 956
    .local v17, "result":[B
    new-instance v13, Ljava/io/ByteArrayInputStream;

    move-object/from16 v14, v17

    .end local v17    # "result":[B
    .local v14, "result":[B
    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v13

    .line 958
    const/4 v13, 0x0

    invoke-interface {v2, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 959
    .end local v0    # "size":I
    .end local v14    # "result":[B
    .end local v15    # "source":[B
    goto :goto_1

    .line 960
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 963
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v5, v0

    .line 965
    :goto_2
    const/4 v13, 0x1

    if-eq v5, v13, :cond_8

    .line 966
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    .line 967
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 968
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 969
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "TagSpecID":Ljava/lang/String;
    .local v0, "TagSpecID":Ljava/lang/String;
    goto :goto_3

    .line 971
    .end local v0    # "TagSpecID":Ljava/lang/String;
    .restart local v8    # "TagSpecID":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    move-object v8, v0

    .end local v8    # "TagSpecID":Ljava/lang/String;
    .restart local v0    # "TagSpecID":Ljava/lang/String;
    goto :goto_3

    .line 974
    .end local v0    # "TagSpecID":Ljava/lang/String;
    .restart local v8    # "TagSpecID":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x4

    if-ne v5, v0, :cond_7

    .line 975
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 976
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 977
    if-eqz v8, :cond_5

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 980
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 982
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    .line 985
    goto :goto_2

    .line 983
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 984
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 986
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 989
    :cond_6
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 990
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 993
    goto :goto_3

    .line 991
    :catch_1
    move-exception v0

    .line 992
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 998
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7
    :goto_3
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v0

    .line 1001
    goto :goto_2

    .line 999
    :catch_2
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 1000
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1001
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1011
    .end local v11    # "featureXmlFile":Ljava/io/File;
    :cond_8
    nop

    .line 1012
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1013
    const/4 v3, 0x0

    .line 1016
    if-eqz v4, :cond_9

    .line 1017
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1018
    const/4 v4, 0x0

    .line 1022
    :cond_9
    goto/16 :goto_d

    .line 1020
    :catch_3
    move-exception v0

    .line 1021
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_d

    .line 1011
    .end local v12    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    :cond_a
    :goto_4
    if-eqz v3, :cond_b

    .line 1012
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1013
    const/4 v3, 0x0

    goto :goto_5

    .line 1020
    :catch_4
    move-exception v0

    goto :goto_6

    .line 1016
    :cond_b
    :goto_5
    if-eqz v4, :cond_c

    .line 1017
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1018
    const/4 v4, 0x0

    goto :goto_7

    .line 1021
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1022
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_7
    nop

    .line 941
    :goto_8
    return-void

    .line 1010
    .end local v11    # "featureXmlFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v11, v0

    goto :goto_e

    .line 1007
    :catch_5
    move-exception v0

    .line 1008
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1011
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_d

    .line 1012
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1013
    const/4 v0, 0x0

    move-object v3, v0

    .line 1016
    :cond_d
    if-eqz v4, :cond_10

    .line 1017
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    .line 1005
    :catch_6
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1011
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_e

    .line 1012
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1013
    const/4 v0, 0x0

    move-object v3, v0

    .line 1016
    :cond_e
    if-eqz v4, :cond_10

    .line 1017
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_a

    .line 1003
    :catch_7
    move-exception v0

    .line 1004
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1011
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_f

    .line 1012
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1013
    const/4 v0, 0x0

    move-object v3, v0

    .end local v3    # "fi":Ljava/io/InputStream;
    .local v0, "fi":Ljava/io/InputStream;
    goto :goto_9

    .line 1020
    .end local v0    # "fi":Ljava/io/InputStream;
    .restart local v3    # "fi":Ljava/io/InputStream;
    :catch_8
    move-exception v0

    goto :goto_b

    .line 1016
    :cond_f
    :goto_9
    if-eqz v4, :cond_10

    .line 1017
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1018
    :goto_a
    const/4 v0, 0x0

    move-object v4, v0

    .end local v4    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_c

    .line 1021
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 1022
    :cond_10
    :goto_c
    nop

    .line 1024
    :goto_d
    return-void

    .line 1011
    :goto_e
    if-eqz v3, :cond_11

    .line 1012
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1013
    const/4 v3, 0x0

    goto :goto_f

    .line 1020
    :catch_9
    move-exception v0

    goto :goto_10

    .line 1016
    :cond_11
    :goto_f
    if-eqz v4, :cond_12

    .line 1017
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 1018
    const/4 v4, 0x0

    goto :goto_11

    .line 1021
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_10
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1022
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    :goto_11
    nop

    .line 1023
    :goto_12
    throw v11
.end method

.method private blacklist loadNetworkFeatureFile2nd(ZLjava/lang/String;)V
    .locals 16
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 1028
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1029
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 1030
    .local v3, "fi":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1031
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, -0x1

    .line 1032
    .local v5, "eventType":I
    const/4 v6, 0x0

    .line 1033
    .local v6, "TagName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1034
    .local v7, "TagValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1036
    .local v8, "TagSpecID":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1041
    .local v9, "featurePath":Ljava/lang/String;
    if-eqz p1, :cond_0

    move-object/from16 v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "/system/csc"

    :goto_0
    move-object v9, v0

    .line 1043
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cscfeature_network.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1044
    .local v10, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-gtz v0, :cond_1

    goto/16 :goto_5

    .line 1059
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v11, v0

    .line 1060
    .local v11, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1061
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    .line 1062
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 1064
    invoke-direct {v1, v10}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_2

    .line 1065
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 1066
    .local v0, "size":I
    new-array v14, v0, [B

    .line 1067
    .local v14, "source":[B
    invoke-virtual {v3, v14}, Ljava/io/InputStream;->read([B)I

    .line 1068
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1070
    invoke-direct {v1, v14}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v15

    .line 1071
    .local v15, "result":[B
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v12

    .line 1073
    invoke-interface {v2, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1074
    .end local v0    # "size":I
    .end local v14    # "source":[B
    .end local v15    # "result":[B
    goto :goto_1

    .line 1075
    :cond_2
    invoke-interface {v2, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1078
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v5, v0

    .line 1080
    :goto_2
    const/4 v12, 0x1

    if-eq v5, v12, :cond_8

    .line 1081
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    .line 1082
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1083
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1084
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "TagSpecID":Ljava/lang/String;
    .local v0, "TagSpecID":Ljava/lang/String;
    goto :goto_3

    .line 1086
    .end local v0    # "TagSpecID":Ljava/lang/String;
    .restart local v8    # "TagSpecID":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    move-object v8, v0

    .end local v8    # "TagSpecID":Ljava/lang/String;
    .restart local v0    # "TagSpecID":Ljava/lang/String;
    goto :goto_3

    .line 1089
    .end local v0    # "TagSpecID":Ljava/lang/String;
    .restart local v8    # "TagSpecID":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x4

    if-ne v5, v0, :cond_7

    .line 1090
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1091
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 1092
    if-eqz v8, :cond_5

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1095
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 1097
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    .line 1100
    goto :goto_2

    .line 1098
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 1099
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1101
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1104
    :cond_6
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1105
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1109
    goto :goto_3

    .line 1107
    :catch_1
    move-exception v0

    .line 1108
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1114
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7
    :goto_3
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v0

    .line 1117
    :goto_4
    goto :goto_2

    .line 1115
    :catch_2
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 1116
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1127
    .end local v10    # "featureXmlFile":Ljava/io/File;
    :cond_8
    nop

    .line 1128
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1129
    const/4 v3, 0x0

    .line 1132
    if-eqz v4, :cond_9

    .line 1133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1134
    const/4 v4, 0x0

    .line 1138
    :cond_9
    goto/16 :goto_e

    .line 1136
    :catch_3
    move-exception v0

    .line 1137
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1139
    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_e

    .line 1127
    .end local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "featureXmlFile":Ljava/io/File;
    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    .line 1128
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1129
    const/4 v3, 0x0

    goto :goto_6

    .line 1136
    :catch_4
    move-exception v0

    goto :goto_7

    .line 1132
    :cond_b
    :goto_6
    if-eqz v4, :cond_c

    .line 1133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1134
    const/4 v4, 0x0

    goto :goto_8

    .line 1137
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 1138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_8
    nop

    .line 1056
    :goto_9
    return-void

    .line 1126
    .end local v10    # "featureXmlFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v10, v0

    goto :goto_f

    .line 1123
    :catch_5
    move-exception v0

    .line 1124
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1127
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_d

    .line 1128
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1129
    const/4 v0, 0x0

    move-object v3, v0

    .line 1132
    :cond_d
    if-eqz v4, :cond_10

    .line 1133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_b

    .line 1121
    :catch_6
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_b
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1127
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_e

    .line 1128
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1129
    const/4 v0, 0x0

    move-object v3, v0

    .line 1132
    :cond_e
    if-eqz v4, :cond_10

    .line 1133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_b

    .line 1119
    :catch_7
    move-exception v0

    .line 1120
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1127
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_f

    .line 1128
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1129
    const/4 v0, 0x0

    move-object v3, v0

    .end local v3    # "fi":Ljava/io/InputStream;
    .local v0, "fi":Ljava/io/InputStream;
    goto :goto_a

    .line 1136
    .end local v0    # "fi":Ljava/io/InputStream;
    .restart local v3    # "fi":Ljava/io/InputStream;
    :catch_8
    move-exception v0

    goto :goto_c

    .line 1132
    :cond_f
    :goto_a
    if-eqz v4, :cond_10

    .line 1133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1134
    :goto_b
    const/4 v0, 0x0

    move-object v4, v0

    .end local v4    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_d

    .line 1137
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_c
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1139
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 1138
    :cond_10
    :goto_d
    nop

    .line 1140
    :goto_e
    return-void

    .line 1127
    :goto_f
    if-eqz v3, :cond_11

    .line 1128
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1129
    const/4 v3, 0x0

    goto :goto_10

    .line 1136
    :catch_9
    move-exception v0

    goto :goto_11

    .line 1132
    :cond_11
    :goto_10
    if-eqz v4, :cond_12

    .line 1133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 1134
    const/4 v4, 0x0

    goto :goto_12

    .line 1137
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_11
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 1138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    :goto_12
    nop

    .line 1139
    :goto_13
    throw v10
.end method

.method private blacklist needToSkipElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "deviceCountryISO"    # Ljava/lang/String;
    .param p3, "needCheckCountryIso"    # Z

    .line 898
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "countryISO"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "countryISO":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->isElementWithCountryISO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    if-nez p3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    .line 903
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 905
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 908
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public whitelist getBoolean(ILjava/lang/String;)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 510
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ril.NwNmId2"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "sNwNmID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 516
    .local v2, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 517
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 518
    if-nez v2, :cond_2

    .line 519
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 524
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 525
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 527
    :cond_3
    return v0

    .line 529
    .end local v1    # "sNwNmID":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 511
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(ILjava/lang/String;Z)Z
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 546
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 550
    :cond_0
    :try_start_0
    const-string/jumbo v0, "ril.NwNmId2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "sNwNmID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 552
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 553
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 554
    if-nez v1, :cond_2

    .line 555
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    .line 558
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 560
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 561
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 563
    :cond_3
    return p3

    .line 565
    .end local v0    # "sNwNmID":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    return p3

    .line 547
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "null"

    const/4 v1, 0x0

    .line 299
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "ril.NwNmId"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "sNwNmID":Ljava/lang/String;
    if-eq v3, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 305
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 308
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 310
    :cond_2
    return v2

    .line 312
    .end local v0    # "value":Ljava/lang/String;
    .end local v3    # "sNwNmID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 328
    const-string/jumbo v0, "null"

    :try_start_0
    const-string/jumbo v1, "ril.NwNmId"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "sNwNmID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 330
    .local v2, "value":Ljava/lang/String;
    if-eq v1, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    .end local v2    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 333
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .line 335
    .end local v0    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    .end local v2    # "value":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 338
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 340
    :cond_2
    return p2

    .line 342
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "sNwNmID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public whitelist getInt(ILjava/lang/String;)I
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 669
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 673
    :cond_0
    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v1, "ril.NwNmId2"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "sNwNmID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 675
    .local v2, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 676
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 677
    if-nez v2, :cond_2

    .line 678
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 681
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 683
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 684
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 686
    :cond_3
    return v0

    .line 688
    .end local v1    # "sNwNmID":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 670
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(ILjava/lang/String;I)I
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 720
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 724
    :cond_0
    :try_start_0
    const-string/jumbo v0, "ril.NwNmId2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "sNwNmID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 726
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 727
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 728
    if-nez v1, :cond_2

    .line 729
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 734
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 737
    :cond_3
    return p3

    .line 739
    .end local v0    # "sNwNmID":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    return p3

    .line 721
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 435
    const-string/jumbo v0, "null"

    const/4 v1, 0x0

    .line 436
    .local v1, "value":Ljava/lang/String;
    const/4 v2, -0x1

    :try_start_0
    const-string/jumbo v3, "ril.NwNmId"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "sNwNmID":Ljava/lang/String;
    if-eq v3, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 440
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 442
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 447
    :cond_2
    return v2

    .line 449
    .end local v0    # "value":Ljava/lang/String;
    .end local v3    # "sNwNmID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 480
    const-string/jumbo v0, "null"

    const/4 v1, 0x0

    .line 481
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ril.NwNmId"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "sNwNmID":Ljava/lang/String;
    if-eq v2, v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 485
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 487
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 492
    :cond_2
    return p2

    .line 494
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "sNwNmID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public blacklist getInteger(ILjava/lang/String;)I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 656
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(ILjava/lang/String;I)I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 706
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 421
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 465
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 581
    const-string v0, ""

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 585
    :cond_0
    :try_start_0
    const-string/jumbo v1, "ril.NwNmId2"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "sNwNmID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 587
    .local v2, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 588
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 589
    if-nez v2, :cond_2

    .line 590
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 593
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 596
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 597
    return-object v2

    .line 599
    :cond_3
    return-object v0

    .line 601
    .end local v1    # "sNwNmID":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    return-object v0

    .line 582
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 618
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 622
    :cond_0
    :try_start_0
    const-string/jumbo v0, "ril.NwNmId2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "sNwNmID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 624
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 625
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 626
    if-nez v1, :cond_2

    .line 627
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 633
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 634
    return-object v1

    .line 636
    :cond_3
    return-object p3

    .line 638
    .end local v0    # "sNwNmID":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    return-object p3

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 357
    const-string v0, ""

    const-string/jumbo v1, "null"

    :try_start_0
    const-string/jumbo v2, "ril.NwNmId"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "sNwNmID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 359
    .local v3, "value":Ljava/lang/String;
    if-eq v2, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    .end local v3    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 362
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_0

    .line 365
    .end local v1    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v3    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 369
    return-object v1

    .line 371
    :cond_2
    return-object v0

    .line 373
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "sNwNmID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 390
    const-string/jumbo v0, "null"

    const/4 v1, 0x0

    .line 391
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ril.NwNmId"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "sNwNmID":Ljava/lang/String;
    if-eq v2, v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 394
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 395
    iget-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 398
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 402
    return-object v0

    .line 404
    :cond_2
    return-object p2

    .line 406
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "sNwNmID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public blacklist tracer(I)Ljava/util/Hashtable;
    .locals 2
    .param p1, "tableNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    const-string v0, "SemCscFeature"

    if-nez p1, :cond_0

    .line 262
    const-string/jumbo v1, "mFeatureList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    return-object v0

    .line 264
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 265
    const-string/jumbo v1, "mFeatureList_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    return-object v0

    .line 268
    :cond_1
    const-string v1, "Invalid feature table number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method
