.class Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;
.super Ljava/lang/Object;
.source "PushMsgReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->c:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->recvPushMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;->access$1(Lcom/alipay/mobile/rome/syncservice/event/PushMsgReceiver;Ljava/util/concurrent/ScheduledFuture;)V

    .line 55
    return-void
.end method
