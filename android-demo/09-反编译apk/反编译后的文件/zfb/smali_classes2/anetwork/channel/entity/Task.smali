.class public Lanetwork/channel/entity/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field protected a:Lanetwork/channel/entity/RequestConfig;

.field protected b:Lanetwork/channel/statist/Statistics;

.field protected c:Lanetwork/channel/statist/Repeater;


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "request is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->i()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "url is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lanetwork/channel/entity/Task;->a:Lanetwork/channel/entity/RequestConfig;

    .line 48
    new-instance v0, Lanetwork/channel/statist/Statistics;

    invoke-direct {v0, p1}, Lanetwork/channel/statist/Statistics;-><init>(Lanetwork/channel/entity/RequestConfig;)V

    iput-object v0, p0, Lanetwork/channel/entity/Task;->b:Lanetwork/channel/statist/Statistics;

    .line 49
    new-instance v0, Lanetwork/channel/statist/Repeater;

    invoke-direct {v0, p2, p1}, Lanetwork/channel/statist/Repeater;-><init>(Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/entity/RequestConfig;)V

    iput-object v0, p0, Lanetwork/channel/entity/Task;->c:Lanetwork/channel/statist/Repeater;

    .line 50
    return-void
.end method
