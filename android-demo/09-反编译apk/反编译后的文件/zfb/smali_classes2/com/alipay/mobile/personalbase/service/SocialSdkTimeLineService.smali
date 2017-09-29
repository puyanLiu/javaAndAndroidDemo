.class public abstract Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "SocialSdkTimeLineService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActivityBriefInfoList(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/Object;
.end method

.method public abstract loadActivityListFromRpc(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract loadNewHomeFeedsFromRpc(Ljava/lang/String;DDI)Ljava/lang/Object;
.end method

.method public abstract loadNewPersonalFeedsFromRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract loadOldHomeFeeds(Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/Object;
.end method

.method public abstract loadOldHomeFeeds(Ljava/lang/String;Ljava/lang/String;JIZ)Ljava/lang/Object;
.end method

.method public abstract loadOldPersonalFeeds(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;
.end method

.method public abstract loadOldPersonalFeeds(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZ)Ljava/lang/Object;
.end method

.method public abstract loadProfileMediaFromLocal(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract loadProfileMediaFromRpc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract loadTimeLineModule()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "SocialSdkTimelineService onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "SocialSdkTimelineService onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public abstract refreshTimeLIneModule()V
.end method
