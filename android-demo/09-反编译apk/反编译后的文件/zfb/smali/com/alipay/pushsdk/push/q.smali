.class public final Lcom/alipay/pushsdk/push/q;
.super Ljava/lang/Object;
.source "PushManager.java"


# instance fields
.field public a:I

.field final synthetic b:Lcom/alipay/pushsdk/push/m;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 1

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/alipay/pushsdk/push/q;->b:Lcom/alipay/pushsdk/push/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/q;->a:I

    .line 1022
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->b:Lcom/alipay/pushsdk/push/m;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/m;->b(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/q;

    move-result-object v1

    monitor-enter v1

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->b:Lcom/alipay/pushsdk/push/m;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/m;->b(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/q;

    move-result-object v0

    iget v2, v0, Lcom/alipay/pushsdk/push/q;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/alipay/pushsdk/push/q;->a:I

    .line 1037
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    const/4 v0, 0x4

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Decremented task count to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1039
    iget v4, p0, Lcom/alipay/pushsdk/push/q;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1038
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
