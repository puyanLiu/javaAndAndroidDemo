.class Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;
.super Ljava/lang/Object;
.source "RecvMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$syncPacket:Lcom/alipay/mobile/rome/syncservice/sync/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncservice/sync/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;->val$syncPacket:Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->retryTimeMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;->val$syncPacket:Lcom/alipay/mobile/rome/syncservice/sync/c;

    iget-wide v1, v1, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->retryTimeMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;->val$syncPacket:Lcom/alipay/mobile/rome/syncservice/sync/c;

    iget-wide v2, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;->val$syncPacket:Lcom/alipay/mobile/rome/syncservice/sync/c;

    iget-wide v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;->val$syncPacket:Lcom/alipay/mobile/rome/syncservice/sync/c;

    iget-object v1, v1, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/BroadcastSender;->sendMsgToPush(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method
