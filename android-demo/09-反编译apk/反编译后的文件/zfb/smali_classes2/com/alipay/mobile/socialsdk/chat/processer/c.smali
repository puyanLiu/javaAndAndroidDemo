.class final Lcom/alipay/mobile/socialsdk/chat/processer/c;
.super Ljava/lang/Object;
.source "BigVideoSender.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/c;->a:Ljava/util/LinkedList;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/c;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/c;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/processer/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/d;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/c;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
