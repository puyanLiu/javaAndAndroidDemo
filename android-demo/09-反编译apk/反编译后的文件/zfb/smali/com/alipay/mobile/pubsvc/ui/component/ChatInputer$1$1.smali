.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 68
    return-void
.end method
