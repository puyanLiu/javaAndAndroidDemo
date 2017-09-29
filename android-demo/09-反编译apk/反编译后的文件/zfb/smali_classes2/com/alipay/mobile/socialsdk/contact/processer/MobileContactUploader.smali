.class public Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;
.super Ljava/lang/Object;
.source "MobileContactUploader.java"


# static fields
.field public static final FIRST_UPLOAD_SIZE_TAG:Ljava/lang/String; = "first_upload_size"

.field public static UPLOAD_SIZE_FIRST_PACKAGE:I = 0x0

.field public static final UPLOAD_SIZE_PER_PACKAGE:I = 0x1f4

.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/Context;

.field private f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

.field private final g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xc8

    sput v0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->UPLOAD_SIZE_FIRST_PACKAGE:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->UPLOAD_SIZE_FIRST_PACKAGE:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    .line 66
    iput v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    .line 69
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->e:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 73
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 74
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 75
    if-eqz p1, :cond_2

    .line 76
    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 80
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->d:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 82
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 83
    const-string/jumbo v1, "firstUpload"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "perUpload"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    if-gtz v1, :cond_0

    .line 91
    iput v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    .line 94
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_2
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    if-gtz v0, :cond_1

    .line 99
    iput v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    .line 101
    :cond_1
    return-void

    .line 78
    :cond_2
    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    sget v1, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->UPLOAD_SIZE_FIRST_PACKAGE:I

    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    iput v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    return-object v0
.end method

.method private a(Ljava/util/List;I)Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;I)",
            "Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 399
    new-instance v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;

    invoke-direct {v3}, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;-><init>()V

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->recordList:Ljava/util/List;

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->deviceId:Ljava/lang/String;

    .line 402
    if-eq p2, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->incr:Ljava/lang/Boolean;

    .line 403
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->firstBatch:Ljava/lang/Boolean;

    .line 404
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->order:Ljava/lang/Integer;

    .line 405
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getMobileMagicCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->lifeSessionId:Ljava/lang/String;

    .line 406
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    return-object v3

    :cond_0
    move v0, v2

    .line 402
    goto :goto_0

    :cond_1
    move v1, v2

    .line 403
    goto :goto_1

    .line 406
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 407
    new-instance v4, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;

    invoke-direct {v4}, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;-><init>()V

    .line 408
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    .line 409
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    .line 410
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    .line 411
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->memo:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    .line 412
    iget-object v0, v3, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->recordList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 423
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 424
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 469
    :goto_2
    return-object v0

    .line 425
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 426
    new-instance v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;

    invoke-direct {v2}, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;-><init>()V

    .line 427
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    .line 428
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    .line 429
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    .line 430
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->memo:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    .line 431
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 434
    new-instance v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;

    invoke-direct {v2}, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;-><init>()V

    .line 435
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    .line 436
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    .line 437
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    .line 438
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->memo:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    .line 439
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    div-int/2addr v0, v1

    .line 445
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 446
    add-int/lit8 v0, v0, 0x1

    :cond_3
    move v7, v5

    move v1, v5

    move v2, v5

    .line 451
    :goto_3
    if-lt v7, v0, :cond_4

    move-object v0, v6

    .line 469
    goto :goto_2

    .line 452
    :cond_4
    add-int v9, p3, v7

    .line 453
    add-int/lit8 v3, v0, -0x1

    if-ge v7, v3, :cond_6

    .line 454
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    mul-int/2addr v1, v7

    .line 455
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    add-int/lit8 v3, v7, 0x1

    mul-int/2addr v2, v3

    .line 460
    :cond_5
    :goto_4
    new-instance v10, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;

    invoke-direct {v10}, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;-><init>()V

    .line 461
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v10, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->recordList:Ljava/util/List;

    .line 462
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->d:Ljava/lang/String;

    iput-object v3, v10, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->deviceId:Ljava/lang/String;

    .line 463
    if-eq v9, v4, :cond_7

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v10, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->incr:Ljava/lang/Boolean;

    .line 464
    if-ne v9, v4, :cond_8

    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v10, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->firstBatch:Ljava/lang/Boolean;

    .line 465
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v10, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->order:Ljava/lang/Integer;

    .line 466
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getMobileMagicCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->lifeSessionId:Ljava/lang/String;

    .line 467
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_3

    .line 456
    :cond_6
    add-int/lit8 v3, v0, -0x1

    if-ne v7, v3, :cond_5

    .line 457
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    mul-int/2addr v1, v7

    .line 458
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_7
    move v3, v5

    .line 463
    goto :goto_5

    :cond_8
    move v3, v5

    .line 464
    goto :goto_6
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uploaded_order"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putInt(Ljava/lang/String;I)V

    .line 105
    if-eqz p2, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "first_upload_size"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v4, "uploadIncrementalContacts:start"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v5, "uploadIncrementalContacts:\u672c\u5730\u6240\u6709\u901a\u8baf\u5f55\u4e3a\u7a7a, \u6e05\u7a7a\u4e0a\u4f20\u548c\u4e0b\u8f7d\u7684\u6570\u636e"

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v2, v3, v2}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uploaded_order"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "uploadIncrementalContacts:\u65e0\u65b0\u589e\u65e0\uff0c\u65e0\u9700\u4e0a\u4f20"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    invoke-interface {p1, v2, v0, v2}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->getRId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->getRId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->getRId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->getRId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "uploadIncrementalContacts:done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->upload(Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;)Lcom/alipay/mobilerelation/rpc/protobuf/result/BaseResult;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/alipay/mobilerelation/rpc/protobuf/result/BaseResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v8, 0x64

    if-ne v1, v8, :cond_e

    iget-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->order:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->b(Ljava/util/List;Ljava/util/List;I)V

    iget-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->order:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    :goto_6
    invoke-direct {p0, v6, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(IZ)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v8, "SocialSdk_Sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "uploadIncrementalContacts:\u589e\u91cf\u4e0a\u4f20\u7b2c"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->order:Ljava/lang/Integer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "\u6279\u6210\u529f"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-interface {p1, v0, v1, v8}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v8, "SocialSdk_Sdk"

    invoke-interface {v1, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_b

    invoke-interface {p1, v3, v11, v2}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V

    goto :goto_5

    :cond_d
    move v1, v3

    goto :goto_6

    :cond_e
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v8, "SocialSdk_Sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "uploadIncrementalContacts:\u589e\u91cf\u4e0a\u4f20\u7b2c"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->order:Ljava/lang/Integer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "\u6279\u5931\u8d25"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v8, 0x1

    invoke-interface {p1, v0, v1, v8}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "uploadAllContacts:start"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->e()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "uploadAllContacts:\u7cfb\u7edf\u901a\u8baf\u5f55\u4e3a\u7a7a"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Ljava/util/List;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v2}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_upload_timestampv2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putLong(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    if-gt v0, v1, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uploadAllContacts:\u9996\u6b21\u4e0a\u4f20\u901a\u8baf\u5f55\u603b\u5171"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6279"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    move v4, v2

    move v5, v2

    move v0, v2

    :goto_2
    add-int/lit8 v9, v0, 0x1

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v10, "SocialSdk_Sdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "uploadAllContacts:\u4e0a\u4f20\u7b2c"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u6279"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int v6, v5, v3

    invoke-direct {p0, v8, v9, p2}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Ljava/util/List;IZ)Z

    move-result v10

    invoke-interface {v8}, Ljava/util/List;->clear()V

    if-eqz v10, :cond_3

    invoke-direct {p0, v9, p2}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(IZ)V

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_6

    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    mul-int/2addr v4, v0

    add-int v5, v3, v4

    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v4, v9

    add-int/2addr v4, v3

    :goto_3
    add-int/lit8 v3, v0, 0x1

    if-lt v0, v1, :cond_8

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v10, :cond_7

    move v0, v2

    :goto_4
    invoke-interface {p1, v10, v0, v2}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadAllContacts:done \u603b\u6570\u91cf"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u4e0a\u4f20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    div-int/2addr v1, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->h:I

    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->i:I

    mul-int/2addr v4, v0

    add-int v5, v3, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_3

    :cond_7
    const/4 v0, 0x3

    goto :goto_4

    :cond_8
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_0

    .line 475
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 476
    const-string/jumbo v2, "upload_record"

    .line 475
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clearAndSaveUploadedContacts:\u65b0\u52a0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-class v1, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :try_start_1
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/processer/k;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/mobile/socialsdk/contact/processer/k;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/j256/ormlite/dao/Dao;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 479
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 479
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Ljava/util/List;I)Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;

    move-result-object v3

    .line 377
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v4, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->upload(Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;)Lcom/alipay/mobilerelation/rpc/protobuf/result/BaseResult;

    move-result-object v3

    .line 378
    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/alipay/mobilerelation/rpc/protobuf/result/BaseResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 379
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(IZ)V

    .line 380
    if-ne p2, v0, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Ljava/util/List;)V

    .line 392
    :goto_0
    return v0

    .line 383
    :cond_0
    invoke-direct {p0, p1, v2, p2}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->b(Ljava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 390
    goto :goto_0

    :cond_1
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/util/List;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    .line 502
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 503
    const-string/jumbo v2, "upload_record"

    .line 502
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveUploadedContacts:\u65b0\u52a0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 506
    const-string/jumbo v3, " \u5220\u9664"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-class v6, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/processer/l;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/contact/processer/l;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Ljava/util/List;ILcom/j256/ormlite/dao/Dao;Ljava/util/List;)V

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 507
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "saveUploadedContacts:done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void

    .line 507
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->getStoredList()Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "copyOldUploadFile:\u6ca1\u6709\u65e7\u7248\u672c\u7684\u4e0a\u4f20\u6570\u636e"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 121
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Ljava/util/List;)V

    move v0, v2

    .line 129
    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 123
    new-instance v5, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    invoke-direct {v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;-><init>()V

    .line 124
    aget-object v6, v0, v1

    iput-object v6, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    .line 125
    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    .line 126
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private c()V
    .locals 3

    .prologue
    .line 360
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    .line 361
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->clearAllData()V

    .line 362
    new-instance v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;-><init>()V

    .line 363
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->purge:Ljava/lang/Boolean;

    .line 364
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->deviceId:Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getMobileMagicCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;->lifeSessionId:Ljava/lang/String;

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->upload(Lcom/alipay/mobilerelation/rpc/protobuf/request/UploadMobileContact;)Lcom/alipay/mobilerelation/rpc/protobuf/result/BaseResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->b()Z

    move-result v0

    return v0
.end method

.method private d()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 534
    const-string/jumbo v3, "upload_record"

    .line 533
    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 535
    const/4 v1, 0x0

    .line 537
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    .line 538
    invoke-interface {v0, v3}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 539
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 546
    if-eqz v1, :cond_0

    .line 547
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 554
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getUploadedContacts:\u672c\u5730\u4e4b\u524d\u4e0a\u4f20\u8fc7"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-object v2

    .line 539
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 540
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 546
    if-eqz v1, :cond_0

    .line 547
    :try_start_4
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 549
    :catch_1
    move-exception v0

    .line 550
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 544
    :catchall_0
    move-exception v0

    .line 546
    if-eqz v1, :cond_2

    .line 547
    :try_start_5
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 552
    :cond_2
    :goto_2
    throw v0

    .line 549
    :catch_2
    move-exception v1

    .line 550
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 549
    :catch_3
    move-exception v0

    .line 550
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Z
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->f()Z

    move-result v0

    return v0
.end method

.method private e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 562
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 563
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 564
    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v3

    .line 565
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "sort_key COLLATE LOCALIZED asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 566
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "getSystemContacts:\u5f00\u59cb\u8f6e\u8be2"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 568
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 586
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getSystemContacts:\u67e5\u8be2\u5230"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-object v0

    .line 570
    :cond_0
    :try_start_2
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;-><init>()V

    .line 571
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    .line 572
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    .line 573
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->getRId()Ljava/lang/String;

    .line 574
    iget-object v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    :goto_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 577
    :cond_1
    :try_start_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 578
    :catch_1
    move-exception v1

    .line 579
    :try_start_5
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 583
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method private f()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 593
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    move-result-object v2

    .line 594
    const-wide/16 v0, 0x0

    .line 595
    if-eqz v2, :cond_0

    .line 598
    :try_start_0
    const-class v5, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 599
    const-string/jumbo v6, "upload_record"

    .line 598
    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 600
    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "mobile"

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v5, "mobile"

    invoke-virtual {v2, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->countOf()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v1, v0

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isUploadAndDownloadSame:\u5df2\u7ecf\u4e0a\u4f20\u901a\u8baf\u5f55\u4e2a\u6570"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    .line 607
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->queryDistinctPhoneNoCount()J

    move-result-wide v5

    .line 608
    cmp-long v0, v1, v5

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    return v0

    .line 601
    :catch_0
    move-exception v2

    .line 602
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v6, "SocialSdk_Sdk"

    invoke-interface {v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-wide v1, v0

    goto :goto_0

    :cond_1
    move v0, v4

    .line 608
    goto :goto_1
.end method


# virtual methods
.method public checkAndUploadAll(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;)V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/processer/j;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/processer/j;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public transferDataBetweenDb()V
    .locals 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "transferDataBetweenDb:\u8fc1\u79fb\u901a\u8baf\u5f55\u4e0a\u4f20\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    move-result-object v0

    .line 135
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    .line 136
    const-string/jumbo v2, "upload_record"

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 141
    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 156
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    move-result-object v0

    .line 157
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    .line 158
    const-string/jumbo v4, "upload_record"

    .line 157
    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 160
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "transferDataBetweenDb:\u8fc1\u79fb"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-class v1, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 162
    :try_start_3
    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/processer/h;

    invoke-direct {v4, p0, v3, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/h;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;)V

    invoke-interface {v0, v4}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 161
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "transferDataBetweenDb:\u6e05\u9664\u65e7\u6570\u636e"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 181
    :goto_3
    return-void

    .line 142
    :cond_1
    :try_start_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    .line 143
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_6
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    if-eqz v1, :cond_0

    .line 150
    :try_start_7
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 149
    if-eqz v1, :cond_2

    .line 150
    :try_start_8
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    .line 155
    :cond_2
    :goto_4
    throw v0

    .line 152
    :catch_2
    move-exception v1

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 152
    :catch_3
    move-exception v0

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 161
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 172
    :catch_4
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 178
    :catch_5
    move-exception v0

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public updateContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/processer/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/processer/i;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method
