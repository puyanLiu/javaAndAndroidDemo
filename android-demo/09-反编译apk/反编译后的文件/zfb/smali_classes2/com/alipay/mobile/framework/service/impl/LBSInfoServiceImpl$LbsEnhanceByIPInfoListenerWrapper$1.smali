.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;
.super Ljava/lang/Object;
.source "LBSInfoServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 412
    new-instance v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v1}, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    .line 414
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 417
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 418
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 419
    const-class v3, Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    .line 421
    new-instance v3, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;-><init>()V

    .line 422
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->appKeyString:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;->appKey:Ljava/lang/String;

    .line 424
    invoke-interface {v0, v3}, Lcom/alipay/mobilelbs/rpc/locate/LocateService;->ipLocate(Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;)Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    iget-boolean v3, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->success:Z

    if-eqz v3, :cond_0

    .line 428
    iget-object v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->cityName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->city:Ljava/lang/String;

    .line 429
    iget-object v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->cityAdCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->adCode:Ljava/lang/String;

    .line 430
    iget-object v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->provinceName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->province:Ljava/lang/String;

    .line 431
    iget-wide v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->latitude:D

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 432
    iget-wide v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->longitude:D

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 433
    iget-wide v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->accuracy:D

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 469
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$1(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$3(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$4(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 485
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void

    .line 437
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 438
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 439
    const-class v2, Lcom/alipay/mobilelbs/rpc/user/UserService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/user/UserService;

    .line 440
    new-instance v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;

    invoke-direct {v2}, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;-><init>()V

    .line 441
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->appKeyString:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;->appKey:Ljava/lang/String;

    .line 442
    iput-object v8, v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;->startTime:Ljava/util/Date;

    .line 443
    iput-object v8, v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;->endTime:Ljava/util/Date;

    .line 445
    invoke-interface {v0, v2}, Lcom/alipay/mobilelbs/rpc/user/UserService;->getUserResidentPoints(Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;)Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_1

    iget-boolean v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->success:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 449
    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-object v0, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->cityName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->city:Ljava/lang/String;

    .line 450
    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    .line 451
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-object v0, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->cityAdCode:Ljava/lang/String;

    .line 450
    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->adCode:Ljava/lang/String;

    .line 452
    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    .line 453
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-object v0, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->provinceName:Ljava/lang/String;

    .line 452
    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->province:Ljava/lang/String;

    .line 454
    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    .line 455
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-wide v3, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->latitude:D

    .line 454
    iput-wide v3, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 456
    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    .line 457
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-wide v2, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->longitude:D

    .line 456
    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    goto/16 :goto_0

    .line 459
    :cond_1
    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 460
    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 461
    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 462
    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    .line 463
    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    .line 464
    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    goto/16 :goto_0

    .line 471
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    goto/16 :goto_1

    .line 477
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    goto/16 :goto_2

    .line 483
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    goto/16 :goto_3
.end method
