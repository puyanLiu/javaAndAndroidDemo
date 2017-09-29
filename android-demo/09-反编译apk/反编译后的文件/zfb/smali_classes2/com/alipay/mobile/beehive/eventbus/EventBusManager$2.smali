.class Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;
.super Ljava/lang/Object;
.source "EventBusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

.field private final synthetic val$event:Ljava/lang/Object;

.field private final synthetic val$handler:Lcom/alipay/mobile/beehive/eventbus/EventHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/eventbus/EventBusManager;Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;->this$0:Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;->val$event:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;->val$handler:Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;->this$0:Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;->val$event:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;->val$handler:Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->access$0(Lcom/alipay/mobile/beehive/eventbus/EventBusManager;Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    .line 400
    return-void
.end method
