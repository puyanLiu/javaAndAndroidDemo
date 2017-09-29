.class public Lcom/uc/webview/export/utility/download/DownloadTask;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final b:[Ljava/lang/Object;

.field private final c:[Landroid/webkit/ValueCallback;

.field private final d:[Ljava/lang/String;

.field private final e:[J

.field private f:Landroid/webkit/ValueCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    .line 40
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    .line 43
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 54
    sget-object v1, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Duplicate task."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 59
    :cond_0
    :try_start_1
    sget-object v2, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    iput-object p2, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    .line 64
    const-string/jumbo v1, "sdk_dl"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 70
    :try_start_2
    const-string/jumbo v1, "tmp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ucdown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/download/DownloadTask;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public delete()Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/uc/webview/export/utility/download/c;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/utility/download/c;-><init>(Lcom/uc/webview/export/utility/download/DownloadTask;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v0, v3

    .line 245
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    return-object p0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 84
    sget-object v1, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    sget-object v2, Lcom/uc/webview/export/utility/download/DownloadTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentSize()J
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 3

    .prologue
    .line 101
    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 122
    :goto_0
    return-object p0

    .line 103
    :cond_0
    const-string/jumbo v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo v0, "recovered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    goto :goto_0

    .line 107
    :cond_2
    const-string/jumbo v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto :goto_0

    .line 109
    :cond_3
    const-string/jumbo v0, "exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto :goto_0

    .line 111
    :cond_4
    const-string/jumbo v0, "check"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x5

    aput-object p2, v0, v1

    goto :goto_0

    .line 113
    :cond_5
    const-string/jumbo v0, "header"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x6

    aput-object p2, v0, v1

    goto :goto_0

    .line 115
    :cond_6
    const-string/jumbo v0, "exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x7

    aput-object p2, v0, v1

    goto :goto_0

    .line 117
    :cond_7
    const-string/jumbo v0, "beginDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x8

    aput-object p2, v0, v1

    goto :goto_0

    .line 120
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The given event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public planWith(Ljava/lang/Runnable;)Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uc/webview/export/utility/download/b;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/utility/download/b;-><init>(Lcom/uc/webview/export/utility/download/DownloadTask;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 224
    return-object p0
.end method

.method public declared-synchronized run()V
    .locals 22

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 255
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Download should not run in UI thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 258
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    aget-object v5, v2, v3

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x2

    aget-object v6, v2, v3

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x3

    aget-object v7, v2, v3

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x4

    aget-object v8, v2, v3

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v9, 0x6

    aget-object v9, v3, v9

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/4 v10, 0x7

    aget-object v10, v3, v10

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->c:[Landroid/webkit/ValueCallback;

    const/16 v11, 0x8

    aget-object v11, v3, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    if-eqz v2, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 271
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v12, 0x0

    aput-object v12, v2, v3

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v12, v2, v3

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v13, v2, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v14

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 280
    :cond_2
    invoke-static {v12}, Lcom/uc/webview/export/utility/Utils;->getTotalSizeLastModified(Ljava/lang/String;)Landroid/util/Pair;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 285
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v15, 0x0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    aput-wide v16, v14, v15

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v15, 0x2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v14, v15

    .line 287
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->d:[Ljava/lang/String;

    const/4 v3, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v3

    .line 289
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v3, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v19

    aput-wide v19, v2, v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    cmp-long v2, v19, v16

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move v3, v2

    .line 293
    :goto_0
    if-eqz v9, :cond_3

    :try_start_5
    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 295
    :cond_3
    :goto_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v2, v2, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    if-eq v2, v9, :cond_7

    .line 394
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 281
    :catch_0
    move-exception v2

    .line 282
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 283
    :cond_5
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 388
    :catch_1
    move-exception v2

    .line 389
    :try_start_8
    const-string/jumbo v3, "sdk_dl_e"

    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v3, v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 392
    if-eqz v8, :cond_4

    :try_start_9
    move-object/from16 v0, p0

    invoke-interface {v8, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 394
    :catch_2
    move-exception v2

    goto :goto_2

    .line 291
    :cond_6
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    .line 299
    :cond_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v9, v15

    invoke-interface {v2, v9}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 301
    :cond_8
    if-eqz v3, :cond_17

    .line 303
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_12

    .line 305
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 315
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    .line 316
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 320
    :cond_a
    cmp-long v2, v19, v16

    if-gez v2, :cond_14

    .line 321
    if-eqz v11, :cond_b

    :try_start_b
    move-object/from16 v0, p0

    invoke-interface {v11, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 323
    :cond_b
    :goto_3
    :try_start_c
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 325
    const/16 v9, 0xbb8

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 326
    const-string/jumbo v9, "GET"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 328
    const-wide/16 v9, 0x0

    cmp-long v9, v19, v9

    if-lez v9, :cond_c

    .line 329
    const-string/jumbo v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "bytes="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string/jumbo v9, "sdk_dl_r"

    invoke-static {v9}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 331
    if-eqz v6, :cond_c

    :try_start_d
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 334
    :cond_c
    :goto_4
    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 337
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v6

    .line 339
    :try_start_f
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 341
    const v10, 0xc800

    :try_start_10
    new-array v10, v10, [B

    .line 343
    :cond_d
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 345
    if-lez v11, :cond_e

    .line 346
    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v13, 0x1

    aget-wide v14, v12, v13

    int-to-long v0, v11

    move-wide/from16 v19, v0

    add-long v14, v14, v19

    aput-wide v14, v12, v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 349
    if-eqz v7, :cond_e

    :try_start_11
    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 352
    :cond_e
    :goto_5
    if-lez v11, :cond_f

    :try_start_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->e:[J

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    cmp-long v11, v11, v16

    if-lez v11, :cond_10

    .line 353
    :cond_f
    const/4 v3, 0x0

    .line 356
    :cond_10
    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-object v12

    if-eq v11, v12, :cond_d

    .line 359
    :cond_11
    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 363
    :goto_6
    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 364
    :goto_7
    :try_start_15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move v2, v3

    .line 371
    :goto_8
    if-nez v2, :cond_4

    .line 372
    :try_start_16
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-eqz v2, :cond_15

    .line 373
    const-string/jumbo v2, "sdk_dl_f"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Size mismatch:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 375
    if-eqz v5, :cond_4

    :try_start_17
    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 307
    :cond_12
    :try_start_18
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 308
    array-length v10, v9

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v10, :cond_9

    aget-object v13, v9, v2

    .line 309
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 310
    const/4 v15, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v13, v15, v0}, Lcom/uc/webview/export/utility/Utils;->recursiveDelete(Ljava/io/File;ZLjava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 308
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 359
    :catchall_1
    move-exception v3

    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :goto_a
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 363
    :catchall_2
    move-exception v3

    :try_start_1b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 364
    :goto_b
    :try_start_1c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_c
    :try_start_1d
    throw v3

    .line 365
    :catch_4
    move-exception v2

    move v2, v3

    goto :goto_8

    .line 366
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    .line 377
    :cond_15
    const-string/jumbo v2, "sdk_dl_s"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 378
    if-eqz v4, :cond_16

    :try_start_1e
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 379
    :cond_16
    :goto_d
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/utility/download/DownloadTask;->f:Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 383
    :cond_17
    const-string/jumbo v2, "sdk_dl_x"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 384
    if-eqz v10, :cond_4

    :try_start_20
    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto/16 :goto_2

    :catch_6
    move-exception v2

    goto/16 :goto_1

    :catch_7
    move-exception v2

    goto/16 :goto_3

    :catch_8
    move-exception v6

    goto/16 :goto_4

    :catch_9
    move-exception v12

    goto/16 :goto_5

    .line 360
    :catch_a
    move-exception v7

    goto/16 :goto_6

    :catch_b
    move-exception v4

    goto :goto_a

    :catch_c
    move-exception v6

    goto/16 :goto_7

    :catch_d
    move-exception v4

    goto :goto_b

    :catch_e
    move-exception v2

    goto :goto_c

    :catch_f
    move-exception v2

    goto :goto_d
.end method

.method public start()Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    return-object p0
.end method

.method public stop()Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 181
    return-object p0
.end method

.method public stopWith(Ljava/lang/Runnable;)Lcom/uc/webview/export/utility/download/DownloadTask;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/uc/webview/export/utility/download/a;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/utility/download/a;-><init>(Lcom/uc/webview/export/utility/download/DownloadTask;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v0, v3

    .line 202
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/DownloadTask;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-object p0
.end method
