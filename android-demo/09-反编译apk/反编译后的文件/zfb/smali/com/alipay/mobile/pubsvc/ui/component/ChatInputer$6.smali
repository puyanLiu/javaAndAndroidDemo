.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 165
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input:I

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->closeInputBoard()V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;->onSwitchMenuClick()V

    .line 170
    :cond_0
    return-void
.end method
