.class public final Lcom/alipay/pushsdk/push/h/a;
.super Ljava/lang/Object;
.source "ConnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/m;

.field private b:Lcom/alipay/pushsdk/push/b/a;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/b/b;Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    .line 24
    iput-object p1, p0, Lcom/alipay/pushsdk/push/h/a;->b:Lcom/alipay/pushsdk/push/b/a;

    .line 25
    return-void
.end method

.method private a()Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget v0, v0, Lcom/alipay/pushsdk/push/m;->f:I

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

    sget-object v1, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->SOCKS:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget v3, v3, Lcom/alipay/pushsdk/push/m;->f:I

    .line 85
    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    .line 91
    :goto_0
    new-instance v1, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    .line 92
    iget-object v2, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget v3, v3, Lcom/alipay/pushsdk/push/m;->d:I

    .line 91
    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;-><init>(Ljava/lang/String;ILcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/m;->b:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->required:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;)V

    .line 101
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->e()V

    .line 102
    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->d()V

    .line 103
    return-object v1

    .line 88
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

    sget-object v1, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->disabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;)V

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "connectUseAmnet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/h/a;->a()Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    move-result-object v0

    new-instance v1, Lcom/alipay/pushsdk/push/a/e;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/alipay/pushsdk/push/a/e;-><init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/connection/i;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->b:Lcom/alipay/pushsdk/push/b/a;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/a/e;->a(Lcom/alipay/pushsdk/push/b/a;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string/jumbo v0, "===== ConnectTask.run()====="

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->u()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/m;->d(J)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->j()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->k()V

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/h/a;->a()Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    move-result-object v0

    new-instance v1, Lcom/alipay/pushsdk/push/connection/i;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/alipay/pushsdk/push/connection/i;-><init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/connection/i;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    iget v1, v1, Lcom/alipay/pushsdk/push/m;->g:I

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/i;->b(I)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    sget v1, Lcom/alipay/pushsdk/push/m;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/i;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/pushsdk/push/m;->i:J

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/a;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h/a;->b:Lcom/alipay/pushsdk/push/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/b/a;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ConnectTask.run: pushManager.isConnected now!"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
