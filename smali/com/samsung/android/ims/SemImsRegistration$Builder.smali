.class public Lcom/samsung/android/ims/SemImsRegistration$Builder;
.super Ljava/lang/Object;
.source "SemImsRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeregiReason:I

.field protected blacklist mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mDomain:Ljava/lang/String;

.field private blacklist mEcmpStatus:I

.field private blacklist mEpdgStatus:Z

.field protected blacklist mHandle:I

.field protected blacklist mInstanceId:Ljava/lang/String;

.field private blacklist mNetwork:Landroid/net/Network;

.field protected blacklist mOwnNumber:Ljava/lang/String;

.field private blacklist mPAssociatedUri2nd:Ljava/lang/String;

.field protected blacklist mPcscf:Ljava/lang/String;

.field protected blacklist mPdnType:I

.field protected blacklist mPhoneId:I

.field protected blacklist mPreferredPublicUserId:Ljava/lang/String;

.field protected blacklist mPrivateUserId:Ljava/lang/String;

.field private blacklist mProhibited:Z

.field protected blacklist mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mRat:I

.field private blacklist mRegExpiryStatus:I

.field private blacklist mRegisterSipResponse:Ljava/lang/String;

.field protected blacklist mRegisteredPublicUserId:Ljava/lang/String;

.field blacklist mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSubscriptionId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    .line 552
    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    .line 562
    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    .line 565
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    .line 569
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEcmpStatus:I

    return v0
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegExpiryStatus:I

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgStatus:Z

    return v0
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    return v0
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    return v0
.end method

.method static synthetic blacklist access$800(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 539
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist addService(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1

    .line 572
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    return-object v0
.end method

.method public blacklist setDeregiReason(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "reason"    # I

    .line 673
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    .line 674
    return-object p0
.end method

.method public blacklist setDeviceList(Ljava/util/List;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    .line 623
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 624
    return-object p0
.end method

.method public blacklist setDomain(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 598
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDomain:Ljava/lang/String;

    .line 599
    return-object p0
.end method

.method public blacklist setEcmpStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "ecmp"    # I

    .line 653
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEcmpStatus:I

    .line 654
    return-object p0
.end method

.method public blacklist setEpdgStatus(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "epdgStatus"    # Z

    .line 663
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgStatus:Z

    .line 664
    return-object p0
.end method

.method public blacklist setHandle(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "handle"    # I

    .line 576
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mHandle:I

    .line 577
    return-object p0
.end method

.method public blacklist setInstanceId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 638
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    .line 639
    return-object p0
.end method

.method public blacklist setNetwork(Landroid/net/Network;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 683
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    .line 684
    return-object p0
.end method

.method public blacklist setOwnNumber(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "ownNumber"    # Ljava/lang/String;

    .line 693
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mOwnNumber:Ljava/lang/String;

    .line 694
    return-object p0
.end method

.method public blacklist setPAssociatedUri2nd(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 688
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 689
    return-object p0
.end method

.method public blacklist setPcscf(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "pcscf"    # Ljava/lang/String;

    .line 648
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    .line 649
    return-object p0
.end method

.method public blacklist setPdnType(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "pdn"    # I

    .line 643
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPdnType:I

    .line 644
    return-object p0
.end method

.method public blacklist setPhoneId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "phoneId"    # I

    .line 633
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    .line 634
    return-object p0
.end method

.method public blacklist setPreferredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "impu"    # Ljava/lang/String;

    .line 613
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPreferredPublicUserId:Ljava/lang/String;

    .line 614
    return-object p0
.end method

.method public blacklist setPrivateUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "privateId"    # Ljava/lang/String;

    .line 603
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    .line 604
    return-object p0
.end method

.method public blacklist setProhibited(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "prohibit"    # Z

    .line 668
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    .line 669
    return-object p0
.end method

.method public blacklist setPublicUserId(Ljava/util/List;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    .line 618
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 619
    return-object p0
.end method

.method public blacklist setRegExpiryStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "regExpiry"    # I

    .line 658
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegExpiryStatus:I

    .line 659
    return-object p0
.end method

.method public blacklist setRegiRat(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "rat"    # I

    .line 588
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRat:I

    .line 589
    return-object p0
.end method

.method public blacklist setRegisterSipResponse(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "sip"    # Ljava/lang/String;

    .line 678
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    .line 679
    return-object p0
.end method

.method public blacklist setRegisteredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    .line 608
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 609
    return-object p0
.end method

.method public blacklist setServices(Ljava/util/Set;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    .line 582
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 583
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 584
    return-object p0
.end method

.method public blacklist setSubscriptionId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "subscriptionId"    # I

    .line 628
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    .line 629
    return-object p0
.end method
