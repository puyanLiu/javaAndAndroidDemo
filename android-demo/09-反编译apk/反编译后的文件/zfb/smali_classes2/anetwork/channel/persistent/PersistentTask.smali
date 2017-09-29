.class public Lanetwork/channel/persistent/PersistentTask;
.super Lanetwork/channel/entity/Task;
.source "PersistentTask.java"


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lanetwork/channel/entity/Task;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lanetwork/channel/persistent/PersistentResult;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lanetwork/channel/persistent/PersistentResult;

    iget-object v1, p0, Lanetwork/channel/persistent/PersistentTask;->a:Lanetwork/channel/entity/RequestConfig;

    iget-object v2, p0, Lanetwork/channel/persistent/PersistentTask;->c:Lanetwork/channel/statist/Repeater;

    iget-object v3, p0, Lanetwork/channel/persistent/PersistentTask;->b:Lanetwork/channel/statist/Statistics;

    invoke-direct {v0, v1, v2, v3}, Lanetwork/channel/persistent/PersistentResult;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V

    .line 20
    iget-object v1, p0, Lanetwork/channel/persistent/PersistentTask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-static {v1, v0}, Lanetwork/channel/anet/AEngine;->b(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/anet/AsyncResult;)Lanetwork/channel/anet/AsyncResult;

    .line 21
    invoke-virtual {v0}, Lanetwork/channel/persistent/PersistentResult;->i()V

    .line 22
    return-object v0
.end method
