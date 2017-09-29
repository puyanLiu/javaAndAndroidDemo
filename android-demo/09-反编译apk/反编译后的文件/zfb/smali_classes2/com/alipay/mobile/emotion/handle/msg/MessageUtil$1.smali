.class Lcom/alipay/mobile/emotion/handle/msg/MessageUtil$1;
.super Ljava/lang/Object;
.source "MessageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$commandMessage:Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil$1;->val$commandMessage:Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil$1;->val$commandMessage:Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->sendLocalBrodcast(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 39
    return-void
.end method
