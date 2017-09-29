.class public Lcom/alipay/pushsdk/push/b/b;
.super Ljava/lang/Object;
.source "ConnectListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/b/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Lcom/alipay/pushsdk/push/m;

.field b:Lcom/alipay/pushsdk/push/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alipay/pushsdk/push/b/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 16
    sput-object v0, Lcom/alipay/pushsdk/push/b/b;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    .line 24
    new-instance v0, Lcom/alipay/pushsdk/push/r;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v1, v1, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->b:Lcom/alipay/pushsdk/push/r;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/connection/i;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 29
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/i;->f()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v1, v1, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/i;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/pushsdk/push/b/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConnection="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/b/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "===== Connected onSuccess()====="

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->v()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->l()Lcom/alipay/pushsdk/push/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/b/c;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->q()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(J)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/pushsdk/push/m;->b(J)V

    const-string/jumbo v0, "onSuccess setLastConnectedTime."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "31"

    const-string/jumbo v1, "01"

    const-string/jumbo v2, "2"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/i;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->b:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/r;->b(Ljava/lang/String;)V

    .line 30
    :cond_1
    return-void
.end method

.method public final b(Lcom/alipay/pushsdk/push/connection/i;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "amnet fail"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string/jumbo v0, "===== Connected onFail()====="

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->v()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/i;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->b:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/r;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->b:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/r;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/b;->b:Lcom/alipay/pushsdk/push/r;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/r;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->n()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->t()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "onFail() isFrontPolicy and then to startReconnectionThread..."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->m()V

    const-string/jumbo v0, "50"

    const-string/jumbo v1, "80"

    const-string/jumbo v2, "8"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "50"

    const-string/jumbo v1, "81"

    const-string/jumbo v2, "6"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
