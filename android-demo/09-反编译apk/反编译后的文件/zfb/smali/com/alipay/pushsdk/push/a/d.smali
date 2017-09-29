.class public final Lcom/alipay/pushsdk/push/a/d;
.super Ljava/lang/Object;
.source "AmnetAdapterDataListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 17
    const-string/jumbo v0, "receive null data"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 22
    :cond_0
    :try_start_0
    const-string/jumbo v1, "process data from amnet"

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 23
    if-nez p1, :cond_1

    const-string/jumbo v1, " accepted data is null"

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    .line 24
    :goto_1
    invoke-static {}, Lcom/alipay/pushsdk/push/f/e;->a()Lcom/alipay/pushsdk/push/f/e;

    move-result-object v1

    if-nez v1, :cond_3

    .line 26
    const-string/jumbo v0, "PacketListenerDispatcher is null"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 23
    :cond_1
    :try_start_1
    iget-byte v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-static {v1}, Lcom/alipay/mobile/common/amnet/api/model/ChannelType;->isPush(B)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive data not push channel data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->i()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/e/c;->a(I)Lcom/alipay/pushsdk/push/e/a;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->data:[B

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-static {}, Lcom/alipay/pushsdk/push/f/e;->a()Lcom/alipay/pushsdk/push/f/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/f/e;->a(Lcom/alipay/pushsdk/push/e/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final recycle(BLjava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public final tell(BJII)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
