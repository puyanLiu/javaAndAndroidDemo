.class final Lcom/google/gson/LruCache;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"

# interfaces
.implements Lcom/google/gson/Cache;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final maxCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 37
    const v0, 0x3f333333    # 0.7f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 38
    iput p1, p0, Lcom/google/gson/LruCache;->maxCapacity:I

    .line 39
    return-void
.end method


# virtual methods
.method public final declared-synchronized addElement(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/gson/LruCache;->size()I

    move-result v0

    iget v1, p0, Lcom/google/gson/LruCache;->maxCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized removeElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
