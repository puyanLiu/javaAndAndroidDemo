.class final Lcom/alipay/android/widgets/asset/e;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "AssetAnalyzeActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

.field private b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Z)V
    .locals 1

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/e;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    .line 386
    invoke-static {p1}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 387
    invoke-virtual {p0, p2}, Lcom/alipay/android/widgets/asset/e;->setShowNetworkErrorView(Z)V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/e;->setShowProgressDialog(Z)V

    .line 389
    const-class v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/e;->b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    .line 390
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/e;)Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/e;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    return-object v0
.end method


# virtual methods
.method public final varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthAnalysisReq;

    invoke-direct {v0}, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthAnalysisReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/e;->b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;->queryWealthAnalysis(Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthAnalysisReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    return-object v0
.end method

.method public final varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AssetAnalyzeActivity"

    const-string/jumbo v3, "onRPCFinish"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/e;->hideTipView()V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/e;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v1, p1}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;)V

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const-string/jumbo v1, "refresh"

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz p1, :cond_2

    iget-boolean v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->success:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;)V

    :cond_1
    new-instance v1, Lcom/alipay/android/widgets/asset/f;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/android/widgets/asset/f;-><init>(Lcom/alipay/android/widgets/asset/e;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/android/widgets/asset/e;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method
