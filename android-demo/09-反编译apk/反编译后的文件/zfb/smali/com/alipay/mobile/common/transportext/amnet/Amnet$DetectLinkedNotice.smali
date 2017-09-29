.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectLinkedNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectLinkedNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2265
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2266
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 4

    .prologue
    .line 2271
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectLinkedNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v1

    .line 2272
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->getProxy()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    .line 2274
    if-nez v0, :cond_0

    .line 2275
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->putTcp()V

    .line 2276
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->execute(Z)V

    .line 2300
    :goto_0
    return-void

    .line 2278
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->getServer()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    .line 2279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CONNECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " HTTP/1.1\r\nHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\r\nProxy-Connection: keep-alive\r\nConnection: keep-alive\r\nContent-Length: 0\r\n\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2288
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2289
    if-nez v0, :cond_1

    .line 2290
    const-string/jumbo v0, "Can not convert requisition."

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2294
    :catch_0
    move-exception v0

    .line 2295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fail to convert requisition. ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    goto :goto_0

    .line 2292
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->send([B)I

    move-result v0

    const-string/jumbo v2, "Can not send requisition."

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->judge(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
