.class Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;
.super Ljava/lang/Object;
.source "ChatStageViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;

    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->progressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder$1$1;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 96
    return-void
.end method
