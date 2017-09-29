.class public final Lcom/alipay/pushsdk/push/b/e;
.super Ljava/lang/Object;
.source "PushNetworkTunnelChangedListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;


# static fields
.field private static a:Lcom/alipay/pushsdk/push/b/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static final a()Lcom/alipay/pushsdk/push/b/e;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/pushsdk/push/b/e;->a:Lcom/alipay/pushsdk/push/b/e;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/pushsdk/push/b/e;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/b/e;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/push/b/e;->a:Lcom/alipay/pushsdk/push/b/e;

    .line 28
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/push/b/e;->a:Lcom/alipay/pushsdk/push/b/e;

    return-object v0
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 37
    check-cast p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    .line 38
    const-string/jumbo v0, "AlipayPush_PushNetworkTunnelChangedListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Push\u6536\u5230\u901a\u9053\u5207\u6362\uff1acurrent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/pushsdk/push/a/a;->c:Lcom/alipay/pushsdk/push/m;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V

    .line 46
    :cond_0
    return-void
.end method
