.class final Lcom/alipay/mobile/socialsdk/timeline/processer/a;
.super Ljava/lang/Object;
.source "TlDataProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;Z)V

    .line 126
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 128
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 129
    const-class v2, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v2

    .line 131
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 130
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;

    invoke-direct {v2}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;-><init>()V

    .line 133
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->c(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->getLastBizId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->bizId:Ljava/lang/String;

    .line 134
    new-instance v3, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    invoke-direct {v3}, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;-><init>()V

    iput-object v3, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->location:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    .line 135
    if-eqz v1, :cond_1

    .line 136
    iget-object v3, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->location:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lat:D

    .line 137
    iget-object v3, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->location:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lon:D

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " \u62c9\u53d6\u7ea2\u70b9\u5b9a\u4f4d\u7ed3\u679c\uff1alat:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->location:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    iget-wide v5, v5, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lat:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " lon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->location:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    iget-wide v5, v5, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lon:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v0, v2}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->pullLifeCircleSync(Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    const-string/jumbo v1, "100"

    iget-object v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;-><init>()V

    .line 146
    iget-wide v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->newsfeedTime:J

    iput-wide v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->ts:J

    .line 147
    iget-object v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizMemo:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->bizMemo:Ljava/lang/String;

    .line 148
    iget-object v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->sourceUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->url:Ljava/lang/String;

    .line 149
    const-string/jumbo v2, "1"

    iget-object v3, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " \u66f4\u65b0\u4e86bizMemo\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizMemo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->c(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->updateLastBizId(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->notiFriendTabRedChange(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v0, v7}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;Z)V

    .line 166
    return-void

    .line 139
    :cond_1
    :try_start_1
    iget-object v1, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->location:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v1, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lat:D

    .line 140
    iget-object v1, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleSyncReqVO;->location:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v1, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lon:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 153
    :cond_2
    :try_start_2
    const-string/jumbo v2, "0"

    iget-object v3, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->sourceUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->notiFriendTabRedChange(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;ZZ)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " \u62c9\u53d6\u7ea2\u70b9\u6570\u636e\u5f02\u5e38,type == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bizMemo == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizMemo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; url == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; bizId == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PullLifeCircleRespVO;->bizId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
