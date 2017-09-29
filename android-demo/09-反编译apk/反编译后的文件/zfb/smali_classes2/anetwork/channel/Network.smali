.class public interface abstract Lanetwork/channel/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract a(Lanetwork/channel/Request;)Lanetwork/channel/Response;
.end method

.method public abstract a(Lanetwork/channel/Request;Ljava/lang/Object;Landroid/os/Handler;Lanetwork/channel/NetworkListener;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanetwork/channel/Request;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            "Lanetwork/channel/NetworkListener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation
.end method
