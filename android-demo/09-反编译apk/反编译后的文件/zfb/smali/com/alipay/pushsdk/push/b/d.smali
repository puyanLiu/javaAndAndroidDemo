.class public Lcom/alipay/pushsdk/push/b/d;
.super Ljava/lang/Object;
.source "PushConnectionListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/b/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alipay/pushsdk/push/b/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "connectionClosed()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/connection/PushException;)V
    .locals 6

    .prologue
    .line 42
    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "=== connectionClosedOnError()==="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/PushException;->getType()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/m;->a(Z)V

    .line 53
    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/i;->h()V

    .line 56
    const-string/jumbo v1, "41"

    .line 58
    const-string/jumbo v2, "7"

    .line 55
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    iget-object v3, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/push/m;->c(J)V

    .line 66
    iget-object v3, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/m;->t()Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    :cond_1
    const/4 v3, 0x3

    .line 76
    sget-object v4, Lcom/alipay/pushsdk/push/b/d;->a:Ljava/lang/String;

    .line 77
    const-string/jumbo v5, "connectionClosedOnError() isFrontPolicy and then to startReconnectionThread..."

    .line 74
    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/push/m;->d(J)V

    .line 82
    iget-object v1, p0, Lcom/alipay/pushsdk/push/b/d;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->m()V

    .line 85
    const-string/jumbo v1, "80"

    .line 87
    const-string/jumbo v2, "8"

    .line 84
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    return-void

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/PushException;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    const-string/jumbo v1, "81"

    .line 92
    const-string/jumbo v2, "6"

    .line 89
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
