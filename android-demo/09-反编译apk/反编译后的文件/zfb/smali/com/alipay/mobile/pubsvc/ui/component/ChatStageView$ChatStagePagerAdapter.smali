.class public Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ChatStageView.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 296
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 314
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p2

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 288
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAllGrid()V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->notifyDataSetChanged()V

    .line 310
    return-void
.end method
