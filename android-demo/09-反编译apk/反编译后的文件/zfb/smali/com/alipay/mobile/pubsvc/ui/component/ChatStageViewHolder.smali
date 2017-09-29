.class public Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;
.super Ljava/lang/Object;
.source "ChatStageViewHolder.java"


# instance fields
.field private a:Landroid/os/Handler;

.field public appIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public appInstallTv:Lcom/alipay/mobile/commonui/widget/APTextView;

.field public appItemView:Landroid/view/View;

.field public appName:Lcom/alipay/mobile/commonui/widget/APTextView;

.field public appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public appNotEnableIv:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

.field public root:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "SelectPanel"

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 2

    .prologue
    .line 116
    if-eqz p1, :cond_0

    const-string/jumbo v0, "SelectPanel"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public installStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commoen_component_ChatStageViewHolder"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "installStatusUpdate, installStatus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->a:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 50
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->a:Landroid/os/Handler;

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->a:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;ZLcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
