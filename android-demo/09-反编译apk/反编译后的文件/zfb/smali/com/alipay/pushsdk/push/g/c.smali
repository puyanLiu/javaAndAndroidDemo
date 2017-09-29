.class public final Lcom/alipay/pushsdk/push/g/c;
.super Lcom/alipay/pushsdk/push/g/d;
.source "SysTriggerRestart.java"


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/g/d;-><init>(Lcom/alipay/pushsdk/push/m;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "SysTriggerRestart use amnet call connect"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->a()V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->a()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "80"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->m()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "81"

    const-string/jumbo v2, "8"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
