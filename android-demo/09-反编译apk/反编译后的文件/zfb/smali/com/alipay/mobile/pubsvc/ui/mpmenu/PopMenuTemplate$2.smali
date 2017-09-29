.class Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$2;
.super Ljava/lang/Object;
.source "PopMenuTemplate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->access$2(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getInputEditText()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->access$3(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    .line 97
    return-void
.end method
