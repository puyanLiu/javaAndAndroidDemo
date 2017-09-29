.class public Lcom/alipay/mobile/rome/syncsdk/transport/d/b;
.super Ljava/lang/Object;
.source "PacketListenerImplADispatch.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/transport/d/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 8

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 32
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v2, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v3, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v4, Lcom/alipay/mobile/rome/syncsdk/transport/d/i;

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/rome/syncsdk/transport/d/i;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v5, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;

    iget-object v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v6, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;

    invoke-direct {v6}, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v7, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLastRecvPacketTime(J)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    return-void

    .line 77
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    .line 78
    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/a;->b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Lcom/alipay/mobile/rome/syncsdk/transport/d/c;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/d/b;Lcom/alipay/mobile/rome/syncsdk/transport/d/a;Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 1

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
