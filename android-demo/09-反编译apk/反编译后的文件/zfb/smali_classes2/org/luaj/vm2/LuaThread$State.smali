.class public Lorg/luaj/vm2/LuaThread$State;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/luaj/vm2/Globals;

.field args:Lorg/luaj/vm2/Varargs;

.field error:Ljava/lang/String;

.field public final function:Lorg/luaj/vm2/LuaValue;

.field final lua_thread:Ljava/lang/ref/WeakReference;

.field result:Lorg/luaj/vm2/Varargs;

.field public status:I


# direct methods
.method constructor <init>(Lorg/luaj/vm2/Globals;Lorg/luaj/vm2/LuaThread;Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->error:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    iput-object p1, p0, Lorg/luaj/vm2/LuaThread$State;->a:Lorg/luaj/vm2/Globals;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->lua_thread:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lorg/luaj/vm2/LuaThread$State;->function:Lorg/luaj/vm2/LuaValue;

    return-void
.end method


# virtual methods
.method public declared-synchronized lua_resume(Lorg/luaj/vm2/LuaThread;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->a:Lorg/luaj/vm2/Globals;

    iget-object v1, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->a:Lorg/luaj/vm2/Globals;

    iput-object p1, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iput-object p2, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    iget v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "Coroutine-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget v3, Lorg/luaj/vm2/LuaThread;->coroutine_count:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/luaj/vm2/LuaThread;->coroutine_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    const/4 v2, 0x3

    iput v2, v0, Lorg/luaj/vm2/LuaThread$State;->status:I

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->error:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lorg/luaj/vm2/LuaValue;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    iget-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->error:Ljava/lang/String;

    invoke-static {v2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/luaj/vm2/LuaValue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_1
    :try_start_2
    sget-object v2, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    sget-object v2, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->error:Ljava/lang/String;

    iget-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->a:Lorg/luaj/vm2/Globals;

    iput-object v1, v2, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->a:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-object v1, v1, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    const/4 v2, 0x2

    iput v2, v1, Lorg/luaj/vm2/LuaThread$State;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v0, Lorg/luaj/vm2/OrphanedThread;

    invoke-direct {v0}, Lorg/luaj/vm2/OrphanedThread;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    sget-object v2, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    sget-object v2, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->error:Ljava/lang/String;

    iget-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->a:Lorg/luaj/vm2/Globals;

    iput-object v1, v2, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->a:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-object v1, v1, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    const/4 v2, 0x2

    iput v2, v1, Lorg/luaj/vm2/LuaThread$State;->status:I

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_6
    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    iget-object v2, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;

    invoke-static {v0, v2}, Lorg/luaj/vm2/LuaValue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized lua_yield(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;

    const/4 v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    sget-wide v0, Lorg/luaj/vm2/LuaThread;->thread_orphan_check_interval:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->lua_thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    new-instance v0, Lorg/luaj/vm2/OrphanedThread;

    invoke-direct {v0}, Lorg/luaj/vm2/OrphanedThread;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    new-instance v0, Lorg/luaj/vm2/OrphanedThread;

    invoke-direct {v0}, Lorg/luaj/vm2/OrphanedThread;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    sget-object v1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    sget-object v1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    sget-object v1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    iput-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->args:Lorg/luaj/vm2/Varargs;

    iget-object v1, p0, Lorg/luaj/vm2/LuaThread$State;->function:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->result:Lorg/luaj/vm2/Varargs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread$State;->error:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x4

    :try_start_3
    iput v0, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x4

    :try_start_4
    iput v1, p0, Lorg/luaj/vm2/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
