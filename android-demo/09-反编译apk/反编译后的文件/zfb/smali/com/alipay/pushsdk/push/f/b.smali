.class public Lcom/alipay/pushsdk/push/f/b;
.super Ljava/lang/Object;
.source "HeartBeatPacketListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/f/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alipay/pushsdk/push/f/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/alipay/pushsdk/push/f/b;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/pushsdk/push/f/b;->b:Lcom/alipay/pushsdk/push/m;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 26
    new-instance v0, Lcom/alipay/pushsdk/push/f;

    invoke-direct {v0, v3}, Lcom/alipay/pushsdk/push/f;-><init>(I)V

    .line 29
    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/connection/c;->a(Lcom/alipay/pushsdk/push/e/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(J)V

    .line 33
    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/b;->b:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/m;->b(J)V

    .line 35
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/alipay/pushsdk/push/f/b;->a:Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "processPacket() got one HeartBeatPacket from Server!"

    .line 36
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->i()I

    move-result v0

    .line 45
    invoke-static {v0}, Lcom/alipay/pushsdk/push/e/c;->a(I)Lcom/alipay/pushsdk/push/e/a;

    move-result-object v0

    .line 47
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(I)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->b(I)V

    .line 50
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v1, p0, Lcom/alipay/pushsdk/push/f/b;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/e/a;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/b;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b;->d()V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/b;->b:Lcom/alipay/pushsdk/push/m;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/m;->e(J)V

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    sget-object v1, Lcom/alipay/pushsdk/push/f/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() got Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
