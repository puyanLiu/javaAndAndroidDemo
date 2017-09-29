.class public Lanetwork/channel/dns/DNSOptimize;
.super Ljava/lang/Object;
.source "DNSOptimize.java"


# direct methods
.method public static a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lanetwork/channel/dns/a;

    invoke-direct {v1, p0}, Lanetwork/channel/dns/a;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 50
    return-void
.end method
