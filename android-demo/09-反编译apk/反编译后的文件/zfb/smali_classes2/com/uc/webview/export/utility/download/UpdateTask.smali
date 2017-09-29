.class public Lcom/uc/webview/export/utility/download/UpdateTask;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final b:[Ljava/lang/String;

.field private final c:[J

.field private final d:[Landroid/webkit/ValueCallback;

.field private final e:[Ljava/lang/Object;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/webkit/ValueCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    .line 68
    iput v5, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    .line 72
    const-string/jumbo v0, "core.jar"

    iput-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 87
    sget-object v1, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Duplicate task."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_0
    :try_start_1
    sget-object v2, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    const-string/jumbo v1, "sdk_ucm"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 97
    iput-object p5, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:Landroid/webkit/ValueCallback;

    .line 98
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    int-to-long v2, v0

    aput-wide v2, v1, v5

    .line 99
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aput-object p2, v0, v5

    .line 100
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 101
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 102
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    new-instance v1, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-direct {v1, p2, p5}, Lcom/uc/webview/export/utility/download/DownloadTask;-><init>(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    aput-object v1, v0, v6

    .line 103
    iput-object p4, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:Ljava/lang/String;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/download/UpdateTask;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic a(Ljava/io/File;Z)V
    .locals 2

    .prologue
    .line 32
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "299772b0fd1634653ae3c31f366de3f8"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/utility/download/UpdateTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/uc/webview/export/utility/download/UpdateTask;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    return v0
.end method

.method static synthetic f(Lcom/uc/webview/export/utility/download/UpdateTask;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    return v0
.end method

.method static synthetic g(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/uc/webview/export/internal/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/uc/webview/export/internal/d;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ucplayer"

    invoke-static {p0, v0}, Lcom/uc/webview/export/utility/SetupTask;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getUpdateRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "updates"

    invoke-static {p0, v0}, Lcom/uc/webview/export/utility/SetupTask;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final isFinished(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "299772b0fd1634653ae3c31f366de3f8"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "c34d62af061f389f7e4c9f0e835f7a54"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "95b70b3ec9f6407a92becf890996088d"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    new-instance v1, Lcom/uc/webview/export/utility/download/e;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/utility/download/e;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->stopWith(Ljava/lang/Runnable;)Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 441
    return-object p0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 125
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    return-void

    .line 127
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

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getUpdateDir()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 174
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    aget-wide v0, v0, v5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/uc/webview/export/utility/Utils;->getTotalSizeLastModified(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 177
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v2, v7

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    aget-wide v1, v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    aget-wide v1, v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[J

    aget-wide v1, v1, v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 181
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 3

    .prologue
    .line 142
    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 165
    :goto_0
    return-object p0

    .line 144
    :cond_0
    const-string/jumbo v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    goto :goto_0

    .line 146
    :cond_1
    const-string/jumbo v0, "recovered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    goto :goto_0

    .line 148
    :cond_2
    const-string/jumbo v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto :goto_0

    .line 150
    :cond_3
    const-string/jumbo v0, "exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto :goto_0

    .line 152
    :cond_4
    const-string/jumbo v0, "check"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x5

    aput-object p2, v0, v1

    goto :goto_0

    .line 154
    :cond_5
    const-string/jumbo v0, "exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x6

    aput-object p2, v0, v1

    goto :goto_0

    .line 156
    :cond_6
    const-string/jumbo v0, "beginDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x7

    aput-object p2, v0, v1

    goto :goto_0

    .line 158
    :cond_7
    const-string/jumbo v0, "beginUnZip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x8

    aput-object p2, v0, v1

    goto :goto_0

    .line 160
    :cond_8
    const-string/jumbo v0, "unzipSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x9

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 163
    :cond_9
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

.method public start()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 15

    .prologue
    const/4 v4, 0x2

    const/4 v14, 0x0

    .line 197
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    aget-object v8, v0, v14

    .line 198
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    aget-object v5, v0, v1

    .line 199
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    aget-object v10, v0, v4

    .line 200
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x3

    aget-object v2, v0, v1

    .line 201
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x4

    aget-object v9, v0, v1

    .line 202
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x5

    aget-object v11, v0, v1

    .line 203
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x6

    aget-object v12, v0, v1

    .line 204
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x7

    aget-object v13, v0, v1

    .line 205
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x8

    aget-object v6, v0, v1

    .line 206
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[Landroid/webkit/ValueCallback;

    const/16 v1, 0x9

    aget-object v7, v0, v1

    .line 208
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:[Ljava/lang/String;

    aget-object v3, v0, v14

    .line 209
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    aget-object v4, v0, v4

    check-cast v4, Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 211
    iput v14, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:I

    .line 212
    new-instance v0, Lcom/uc/webview/export/utility/download/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/uc/webview/export/utility/download/d;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Ljava/lang/String;Lcom/uc/webview/export/utility/download/DownloadTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    .line 274
    const-string/jumbo v1, "check"

    new-instance v3, Lcom/uc/webview/export/utility/download/n;

    invoke-direct {v3, p0, v11}, Lcom/uc/webview/export/utility/download/n;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v4, v1, v3}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v1

    const-string/jumbo v3, "success"

    new-instance v4, Lcom/uc/webview/export/utility/download/m;

    invoke-direct {v4, p0, v0}, Lcom/uc/webview/export/utility/download/m;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3, v4}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v1

    const-string/jumbo v3, "exists"

    new-instance v4, Lcom/uc/webview/export/utility/download/l;

    invoke-direct {v4, p0, v0}, Lcom/uc/webview/export/utility/download/l;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3, v4}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    const-string/jumbo v1, "failed"

    new-instance v3, Lcom/uc/webview/export/utility/download/k;

    invoke-direct {v3, p0, v5}, Lcom/uc/webview/export/utility/download/k;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    const-string/jumbo v1, "progress"

    new-instance v3, Lcom/uc/webview/export/utility/download/j;

    invoke-direct {v3, p0, v2}, Lcom/uc/webview/export/utility/download/j;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    const-string/jumbo v1, "exception"

    new-instance v3, Lcom/uc/webview/export/utility/download/h;

    invoke-direct {v3, p0, v9}, Lcom/uc/webview/export/utility/download/h;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    const-string/jumbo v1, "header"

    new-instance v4, Lcom/uc/webview/export/utility/download/g;

    move-object v5, p0

    move-object v6, v12

    move-object v7, v10

    move-object v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/uc/webview/export/utility/download/g;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    const-string/jumbo v1, "beginDownload"

    new-instance v2, Lcom/uc/webview/export/utility/download/f;

    invoke-direct {v2, p0, v13}, Lcom/uc/webview/export/utility/download/f;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->start()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 408
    return-object p0
.end method

.method public stop()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->stop()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 418
    return-object p0
.end method
