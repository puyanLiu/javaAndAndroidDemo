.class final Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;
.super Ljava/lang/Object;
.source "SQLiteCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mThreadState:I

.field final synthetic this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    .line 118
    return-void
.end method

.method private sendMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;->sendEmptyMessage(I)Z

    .line 122
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$0(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;Z)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$0(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$1(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/CursorWindow;

    move-result-object v0

    .line 131
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$3(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v1

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    if-eq v1, v2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    :goto_1
    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$4(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$5(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$6(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;II)I

    move-result v1

    .line 142
    if-eqz v1, :cond_2

    .line 143
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$6(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$5(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$7(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)V

    .line 145
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$7(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)V

    .line 148
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    throw v0
.end method
