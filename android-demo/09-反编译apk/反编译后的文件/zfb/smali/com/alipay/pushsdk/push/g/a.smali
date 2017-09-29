.class public Lcom/alipay/pushsdk/push/g/a;
.super Lcom/alipay/pushsdk/push/g/d;
.source "SysTriggerEvent.java"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/pushsdk/push/g/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 13
    sput-object v0, Lcom/alipay/pushsdk/push/g/a;->c:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/g/d;-><init>(Lcom/alipay/pushsdk/push/m;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 23
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->g()J

    move-result-wide v0

    .line 24
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->d()J

    move-result-wide v2

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 27
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    sget-object v6, Lcom/alipay/pushsdk/push/g/a;->c:Ljava/lang/String;

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "osTriggerEvent_onExecute isConnected="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v8, p0, Lcom/alipay/pushsdk/push/g/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v8}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", lostedTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 33
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastConnectedTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 34
    invoke-static {v2, v3}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    const-string/jumbo v3, ", lastCreateConnectTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 36
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v9, v6, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->a()V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "01"

    .line 50
    const-string/jumbo v2, "1"

    .line 46
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->r()V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "41"

    .line 60
    const-string/jumbo v2, "3"

    .line 56
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcom/alipay/pushsdk/push/t;->a()I

    move-result v0

    if-gez v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->m()V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "70"

    .line 71
    const-string/jumbo v2, "8"

    .line 67
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/g/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "71"

    .line 78
    const-string/jumbo v2, "6"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
