.class final Lcom/alipay/pushsdk/push/a/b;
.super Ljava/lang/Object;
.source "AmnetAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;


# instance fields
.field private final synthetic a:Lcom/alipay/pushsdk/push/b/a;

.field private final synthetic b:Lcom/alipay/pushsdk/push/a/e;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/b/a;Lcom/alipay/pushsdk/push/a/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/b/a;

    iput-object p2, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/a/e;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(I)V
    .locals 2

    .prologue
    .line 97
    invoke-static {p1}, Lcom/alipay/pushsdk/push/a/a;->a(I)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "startAmnetConnect before call dostartamnet "

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/pushsdk/push/a/a;->b:J

    .line 101
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/b/a;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/a/e;

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/a/a;->b(Lcom/alipay/pushsdk/push/b/a;Lcom/alipay/pushsdk/push/a/e;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string/jumbo v0, "startAmnetConnect do nothing cause ament is connected"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
