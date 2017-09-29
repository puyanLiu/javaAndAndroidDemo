.class Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;
.super Ljava/lang/Object;
.source "ChatStageViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;ZLcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iput-boolean p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p4, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->a:Z

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appNewIv:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->a:Z

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 73
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->a:Z

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 76
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getDownLoadProgress()I

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 82
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->a:Z

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commoen_component_ChatStageViewHolder"

    const-string/jumbo v2, "STATUS_DOWNLOAD_SUCCESS"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 97
    const-wide/16 v2, 0x1f4

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->a:Z

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commoen_component_ChatStageViewHolder"

    const-string/jumbo v2, "STATUS_INSTALL_SUCCESS"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_0
.end method
