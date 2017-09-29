.class public final Lcom/alipay/pushsdk/push/p;
.super Ljava/lang/Object;
.source "PushManager.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/m;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 981
    const/4 v0, 0x0

    .line 983
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v1

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submit(runnable)...getExecutorService:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/m;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 985
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_0
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v1

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isTerminated="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/m;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_1
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 993
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v1

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isShutdown="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/m;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 993
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_2
    iget-object v1, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/m;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 998
    iget-object v1, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/m;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 999
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/m;->a(Lcom/alipay/pushsdk/push/m;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1000
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1001
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Future result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_3
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1005
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->w()Ljava/lang/String;

    move-result-object v1

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Future result isCancelled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1007
    const-string/jumbo v3, ", isDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1006
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_4
    return-object v0
.end method
