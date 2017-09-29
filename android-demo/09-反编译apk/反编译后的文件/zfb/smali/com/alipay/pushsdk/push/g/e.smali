.class public final Lcom/alipay/pushsdk/push/g/e;
.super Ljava/lang/Object;
.source "TriggerFactory.java"


# direct methods
.method public static a(Lcom/alipay/pushsdk/push/m;Ljava/lang/String;)Lcom/alipay/pushsdk/push/g/d;
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive trigger:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 13
    if-eqz p1, :cond_1

    .line 15
    const-string/jumbo v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    const-string/jumbo v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    const-string/jumbo v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/g/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/g/f;-><init>(Lcom/alipay/pushsdk/push/m;)V

    .line 37
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/g/d;->a(Ljava/lang/String;)V

    .line 41
    :cond_2
    return-object v0

    .line 20
    :cond_3
    const-string/jumbo v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    new-instance v0, Lcom/alipay/pushsdk/push/g/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/g/c;-><init>(Lcom/alipay/pushsdk/push/m;)V

    goto :goto_0

    .line 23
    :cond_4
    const-string/jumbo v1, "11"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 24
    const-string/jumbo v1, "12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 25
    const-string/jumbo v1, "13"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 26
    const-string/jumbo v1, "15"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 27
    :cond_5
    new-instance v0, Lcom/alipay/pushsdk/push/g/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/g/a;-><init>(Lcom/alipay/pushsdk/push/m;)V

    goto :goto_0

    .line 28
    :cond_6
    const-string/jumbo v1, "14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v0, Lcom/alipay/pushsdk/push/g/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/g/b;-><init>(Lcom/alipay/pushsdk/push/m;)V

    goto :goto_0
.end method
