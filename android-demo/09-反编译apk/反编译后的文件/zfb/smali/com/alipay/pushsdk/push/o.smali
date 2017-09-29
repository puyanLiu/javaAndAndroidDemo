.class final Lcom/alipay/pushsdk/push/o;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/m;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/pushsdk/push/m;


# direct methods
.method private constructor <init>(Lcom/alipay/pushsdk/push/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 629
    iput-object p1, p0, Lcom/alipay/pushsdk/push/o;->d:Lcom/alipay/pushsdk/push/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/o;->b:Ljava/lang/String;

    .line 627
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/o;->c:Ljava/lang/String;

    .line 630
    iput-object p1, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/m;

    .line 631
    iput-object p2, p0, Lcom/alipay/pushsdk/push/o;->b:Ljava/lang/String;

    .line 632
    iput-object p3, p0, Lcom/alipay/pushsdk/push/o;->c:Ljava/lang/String;

    .line 633
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/push/m;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/pushsdk/push/o;-><init>(Lcom/alipay/pushsdk/push/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x2

    .line 637
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v0

    .line 639
    const-string/jumbo v1, "===== SyncResponseTask() Runnable====="

    .line 638
    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->i()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/e/c;->a(I)Lcom/alipay/pushsdk/push/e/a;

    move-result-object v0

    .line 645
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(I)V

    .line 647
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 662
    iget-object v2, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 663
    const-string/jumbo v2, "userId"

    .line 664
    iget-object v3, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v3

    .line 663
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    :goto_0
    const-string/jumbo v2, "k"

    iget-object v3, p0, Lcom/alipay/pushsdk/push/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string/jumbo v2, "syncAck"

    iget-object v3, p0, Lcom/alipay/pushsdk/push/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/e/a;->a(Ljava/lang/String;)V

    .line 674
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    const/4 v2, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v3

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SyncResponseTask respPacket will be sent. dataResp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 676
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-static {v2, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/e/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 690
    :cond_2
    :goto_1
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v1

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SyncResponseTask run() got Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 666
    :cond_3
    :try_start_2
    const-string/jumbo v2, "userId"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 680
    :catch_1
    move-exception v0

    .line 681
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v1

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SyncResponseTask resp Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
