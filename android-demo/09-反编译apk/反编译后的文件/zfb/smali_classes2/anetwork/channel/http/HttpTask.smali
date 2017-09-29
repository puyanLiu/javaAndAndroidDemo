.class public Lanetwork/channel/http/HttpTask;
.super Lanetwork/channel/entity/Task;
.source "HttpTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanetwork/channel/entity/Task;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lanetwork/channel/Response;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lanetwork/channel/entity/Task;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lanetwork/channel/aidl/NetworkResponse;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 36
    iget-object v2, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->c:Lanetwork/channel/statist/Repeater;

    iget-object v4, p0, Lanetwork/channel/http/HttpTask;->b:Lanetwork/channel/statist/Statistics;

    invoke-static {v2, v3, v4}, Lanetwork/channel/http/ConnectionHelper;->a(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)Lanetwork/channel/entity/Result;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lanetwork/channel/entity/Result;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->a()I

    move-result v3

    iget-object v4, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-static {}, Lanetwork/channel/entity/RequestConfig;->m()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 41
    iget-object v0, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lanetwork/channel/entity/RequestConfig;->a(I)V

    move v0, v1

    .line 44
    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {v2}, Lanetwork/channel/entity/Result;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    iget-object v0, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lanetwork/channel/entity/RequestConfig;->b(I)V

    move v0, v1

    .line 49
    :cond_2
    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->b:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v3}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 50
    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->b:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v3}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v3

    iget-object v4, p0, Lanetwork/channel/http/HttpTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v4

    iput v4, v3, Lanetwork/channel/statist/StatisticData;->z:I

    .line 53
    :cond_3
    invoke-virtual {v2}, Lanetwork/channel/entity/Result;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    const-string/jumbo v0, "ANet.HttpTask"

    const-string/jumbo v3, "ip\u8bf7\u6c42\u5f02\u5e38\uff0c\u81ea\u52a8\u964d\u7ea7\u5230\u57df\u540d\u91cd\u8bd5"

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 57
    :cond_4
    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    const/4 v0, -0x5

    invoke-virtual {v2, v0}, Lanetwork/channel/entity/Result;->a(I)V

    .line 63
    :cond_5
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-virtual {v2}, Lanetwork/channel/entity/Result;->c()I

    move-result v1

    iget-object v3, p0, Lanetwork/channel/http/HttpTask;->b:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v3}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILanetwork/channel/statist/StatisticData;)V

    .line 64
    iget-object v1, p0, Lanetwork/channel/http/HttpTask;->b:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v1, v0}, Lanetwork/channel/statist/Statistics;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 65
    iget-object v1, p0, Lanetwork/channel/http/HttpTask;->c:Lanetwork/channel/statist/Repeater;

    invoke-virtual {v1, v0}, Lanetwork/channel/statist/Repeater;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 66
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v2}, Lanetwork/channel/entity/Result;->c()I

    move-result v1

    invoke-virtual {v2}, Lanetwork/channel/entity/Result;->d()[B

    move-result-object v3

    invoke-virtual {v2}, Lanetwork/channel/entity/Result;->e()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I[BLjava/util/Map;)V

    .line 67
    iget-object v1, p0, Lanetwork/channel/http/HttpTask;->b:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v1}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(Lanetwork/channel/statist/StatisticData;)V

    .line 68
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lanetwork/channel/http/HttpTask;->a()Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    return-object v0
.end method
