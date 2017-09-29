.class Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;
.super Ljava/lang/Object;
.source "PopMenuTemplate.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$onButtonMoreTypeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->access$0(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->access$0(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->access$2(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getInputEditText()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->access$3(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    goto :goto_0
.end method
