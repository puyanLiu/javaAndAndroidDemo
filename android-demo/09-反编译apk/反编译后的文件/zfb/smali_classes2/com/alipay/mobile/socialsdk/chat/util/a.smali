.class final Lcom/alipay/mobile/socialsdk/chat/util/a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    monitor-exit v1

    .line 125
    :goto_0
    return-object v2

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->b(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->d(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->e(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/a;->a:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V

    .line 114
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
