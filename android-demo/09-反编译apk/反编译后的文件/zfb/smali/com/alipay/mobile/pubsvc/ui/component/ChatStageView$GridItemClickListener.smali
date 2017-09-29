.class Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;
.super Ljava/lang/Object;
.source "ChatStageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 417
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    .line 419
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$10(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->appItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 422
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$10(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;->onChatStageAppSelected(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;)V

    .line 426
    :cond_0
    return-void
.end method
