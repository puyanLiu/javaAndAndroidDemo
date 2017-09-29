.class public Lcom/alipay/pushsdk/push/g/b;
.super Lcom/alipay/pushsdk/push/g/d;
.source "SysTriggerNetChange.java"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alipay/pushsdk/push/g/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/alipay/pushsdk/push/g/b;->c:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/g/d;-><init>(Lcom/alipay/pushsdk/push/m;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 21
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->d()J

    move-result-wide v0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 24
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    sget-object v4, Lcom/alipay/pushsdk/push/g/b;->c:Ljava/lang/String;

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "netTriggerEvent_onExecute lostedTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    const-string/jumbo v3, ", isConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/g/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    const-string/jumbo v3, ", lastConnectedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v7, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->r()V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "41"

    .line 41
    const-string/jumbo v2, "3"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/b;->a:Lcom/alipay/pushsdk/push/m;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/m;->d(J)V

    .line 49
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->n()V

    .line 50
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->m()V

    .line 51
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "40"

    .line 54
    const-string/jumbo v2, "1"

    .line 51
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
