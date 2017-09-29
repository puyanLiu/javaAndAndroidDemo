.class public Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;
.super Ljava/lang/Object;
.source "DownloaderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/download/Downloader;
.implements Lcom/alipay/mobile/nebulacore/download/ProgressListener;
.implements Lcom/alipay/mobile/nebulacore/download/StatusListener;
.implements Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Downloader"

.field private static h:Lcom/alipay/mobile/nebulacore/download/Downloader;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/nebulacore/download/TaskBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulacore/download/TaskBox",
            "<",
            "Lcom/alipay/mobile/nebulacore/download/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/nebulacore/download/WorkerPool;

.field private d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

.field private e:Lcom/alipay/mobile/nebulacore/download/FileCache;

.field private f:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

.field private g:Lcom/alipay/mobile/nebulacore/download/StatusListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->getInstance()Lcom/alipay/mobile/nebulacore/download/TaskBox;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    .line 47
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/download/WorkerPool;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->c:Lcom/alipay/mobile/nebulacore/download/WorkerPool;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/InfoCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    .line 51
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/FileCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/download/FileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->e:Lcom/alipay/mobile/nebulacore/download/FileCache;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;)Lcom/alipay/mobile/nebulacore/download/ProgressListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->f:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;)Lcom/alipay/mobile/nebulacore/download/StatusListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->g:Lcom/alipay/mobile/nebulacore/download/StatusListener;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/download/Downloader;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->h:Lcom/alipay/mobile/nebulacore/download/Downloader;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->h:Lcom/alipay/mobile/nebulacore/download/Downloader;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->h:Lcom/alipay/mobile/nebulacore/download/Downloader;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 115
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 61
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v0

    .line 63
    sget-object v3, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne v0, v3, :cond_2

    .line 64
    :cond_1
    const-string/jumbo v0, "H5Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download already exists! "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 65
    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;-><init>(Ljava/lang/String;I)V

    .line 70
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setContext(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setProgressListener(Lcom/alipay/mobile/nebulacore/download/ProgressListener;)V

    .line 72
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setStatusListener(Lcom/alipay/mobile/nebulacore/download/StatusListener;)V

    .line 73
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->e:Lcom/alipay/mobile/nebulacore/download/FileCache;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/alipay/mobile/nebulacore/download/FileCache;->getTempPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setPath(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->getFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 77
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setProgress(I)V

    .line 78
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    move v0, v2

    .line 79
    goto :goto_0

    .line 82
    :cond_3
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 83
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->remove(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 86
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->get(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getProgress()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setProgress(I)V

    .line 89
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getTotalSize()J

    move-result-wide v3

    .line 90
    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setTotalSize(J)V

    .line 93
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->getNetworkType()Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    move-result-object v3

    .line 95
    sget-object v4, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-ne v3, v4, :cond_6

    .line 96
    const-string/jumbo v0, "H5Downloader"

    const-string/jumbo v2, "no network for download"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 97
    goto/16 :goto_0

    .line 100
    :cond_6
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v4, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->removeTask(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->addTask(Ljava/lang/Object;)Z

    .line 102
    and-int/lit8 v4, p2, 0x2

    .line 103
    sget-object v5, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-eq v3, v5, :cond_7

    if-nez v4, :cond_7

    .line 104
    const-string/jumbo v0, "H5Downloader"

    const-string/jumbo v2, "task failed for not enable mobile flag."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->cancel(Ljava/lang/String;)Z

    move v0, v1

    .line 106
    goto/16 :goto_0

    .line 107
    :cond_7
    sget-object v4, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-ne v3, v4, :cond_9

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->addListener(Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;)V

    .line 111
    :cond_8
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->c:Lcom/alipay/mobile/nebulacore/download/WorkerPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->doWork()Z

    move v0, v2

    .line 113
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 115
    goto/16 :goto_0
.end method

.method public cancel(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 126
    if-nez v0, :cond_0

    .line 138
    :goto_0
    return v1

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 131
    :cond_1
    sget-object v3, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 133
    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getClient()Lcom/alipay/mobile/nebulacore/download/Client;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/download/Client;->disconnect()Z

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->removeTask(Ljava/lang/String;)Ljava/lang/Object;

    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->getFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->delete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->e:Lcom/alipay/mobile/nebulacore/download/FileCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulacore/download/FileCache;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 212
    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->get(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v0

    .line 216
    :cond_0
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getProgress()I

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 218
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->getFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    const/16 v0, 0x64

    goto :goto_0

    .line 221
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/Downloader$Status;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 199
    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->get(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v0

    .line 203
    :cond_0
    if-nez v0, :cond_1

    .line 204
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->NONE:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 206
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->hasTask(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onNetworkChanged(Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;)V
    .locals 3

    .prologue
    .line 253
    const-string/jumbo v0, "H5Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onNetworkChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-ne p2, v0, :cond_1

    .line 270
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->tasks()Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 261
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getOptions()I

    move-result v2

    .line 262
    and-int/lit8 v2, v2, 0x2

    .line 263
    if-nez v2, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->cancel(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 274
    const-string/jumbo v0, "H5Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->f:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStatus(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V
    .locals 3

    .prologue
    .line 291
    const-string/jumbo v0, "H5Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->g:Lcom/alipay/mobile/nebulacore/download/StatusListener;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne p2, v0, :cond_4

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->e:Lcom/alipay/mobile/nebulacore/download/FileCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulacore/download/FileCache;->getTempPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->e:Lcom/alipay/mobile/nebulacore/download/FileCache;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/nebulacore/download/FileCache;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->remove(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->save(Landroid/content/Context;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->removeTask(Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 313
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->removeListener(Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;)V

    .line 316
    :cond_3
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 305
    :cond_4
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne p2, v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 307
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->set(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/TaskInfo;)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->save(Landroid/content/Context;)V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->removeTask(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 144
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return v2

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->removeTask(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v3, p1, v0}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->set(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/TaskInfo;)V

    .line 152
    sget-object v3, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PAUSED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 154
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getClient()Lcom/alipay/mobile/nebulacore/download/Client;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/download/Client;->disconnect()Z

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->save(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 148
    goto :goto_1
.end method

.method public resume(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 165
    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->get(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v0

    .line 169
    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    .line 192
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PAUSED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 174
    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setContext(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setProgressListener(Lcom/alipay/mobile/nebulacore/download/ProgressListener;)V

    .line 179
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setStatusListener(Lcom/alipay/mobile/nebulacore/download/StatusListener;)V

    .line 180
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(I)V

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->d:Lcom/alipay/mobile/nebulacore/download/InfoCache;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/download/InfoCache;->get(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setProgress(I)V

    .line 187
    :cond_3
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->addTask(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->c:Lcom/alipay/mobile/nebulacore/download/WorkerPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->isFull()Z

    move-result v0

    if-nez v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->c:Lcom/alipay/mobile/nebulacore/download/WorkerPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->doWork()Z

    .line 192
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProgressListener(Lcom/alipay/mobile/nebulacore/download/ProgressListener;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->f:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

    .line 244
    return-void
.end method

.method public setStatusListener(Lcom/alipay/mobile/nebulacore/download/StatusListener;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->g:Lcom/alipay/mobile/nebulacore/download/StatusListener;

    .line 249
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->size()I

    move-result v0

    return v0
.end method
