.class final Lcom/alipay/pushsdk/push/f/g;
.super Ljava/lang/Object;
.source "PacketListenerDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/f/e;

.field private b:Lcom/alipay/pushsdk/push/e/a;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/f/e;Lcom/alipay/pushsdk/push/e/a;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/pushsdk/push/f/g;->a:Lcom/alipay/pushsdk/push/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/alipay/pushsdk/push/f/g;->b:Lcom/alipay/pushsdk/push/e/a;

    .line 167
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->isCanLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dispatch packet:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/f/g;->b:Lcom/alipay/pushsdk/push/e/a;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/g;->a:Lcom/alipay/pushsdk/push/f/e;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    .line 176
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    return-void

    .line 176
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/connection/b;

    .line 177
    iget-object v2, p0, Lcom/alipay/pushsdk/push/f/g;->b:Lcom/alipay/pushsdk/push/e/a;

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/b;->a(Lcom/alipay/pushsdk/push/e/a;)V

    goto :goto_0
.end method
