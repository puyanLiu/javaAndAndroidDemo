.class public Lmtopsdk/mtop/upload/FileUploadMgr;
.super Ljava/lang/Object;
.source "FileUploadMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FileUploadMgr"

.field private static volatile instance:Lmtopsdk/mtop/upload/FileUploadMgr;


# instance fields
.field private removeTaskPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private uploadTasks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadFileInfo;",
            "Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    .line 37
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTaskPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTaskPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/upload/FileUploadMgr;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100(Lmtopsdk/mtop/upload/FileUploadMgr;Lmtopsdk/mtop/upload/domain/UploadFileInfo;)Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lmtopsdk/mtop/upload/FileUploadMgr;->getTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lmtopsdk/mtop/upload/FileUploadMgr;->instance:Lmtopsdk/mtop/upload/FileUploadMgr;

    if-nez v0, :cond_0

    .line 44
    const-class v1, Lmtopsdk/mtop/upload/FileUploadMgr;

    monitor-enter v1

    .line 45
    :try_start_0
    new-instance v0, Lmtopsdk/mtop/upload/FileUploadMgr;

    invoke-direct {v0}, Lmtopsdk/mtop/upload/FileUploadMgr;-><init>()V

    sput-object v0, Lmtopsdk/mtop/upload/FileUploadMgr;->instance:Lmtopsdk/mtop/upload/FileUploadMgr;

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    sget-object v0, Lmtopsdk/mtop/upload/FileUploadMgr;->instance:Lmtopsdk/mtop/upload/FileUploadMgr;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 143
    :cond_0
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "add upload task failed,fileInfoList is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    return-void

    .line 147
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    .line 148
    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getListener()Lmtopsdk/mtop/upload/FileUploadListener;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lmtopsdk/mtop/upload/FileUploadMgr;->addTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadListener;)V

    goto :goto_0
.end method

.method public addTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadBaseListener;)V
    .locals 3

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "add upload task failed,listener is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    :cond_1
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "add upload task failed,fileInfo is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "ILLEGAL_FILE_ERROR"

    const-string/jumbo v1, "ANDROID_SYS_FILE_INVALID"

    const-string/jumbo v2, "\u65e0\u6548\u7684\u4e0a\u4f20\u6587\u4ef6"

    invoke-interface {p2, v0, v1, v2}, Lmtopsdk/mtop/upload/FileUploadBaseListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-direct {v0, p2}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;-><init>(Lmtopsdk/mtop/upload/FileUploadListener;)V

    .line 96
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_3
    new-instance v1, Lmtopsdk/mtop/upload/FileUploadConnection;

    invoke-direct {v1, p1, v0}, Lmtopsdk/mtop/upload/FileUploadConnection;-><init>(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;)V

    .line 100
    invoke-virtual {v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->upload()V

    goto :goto_0
.end method

.method public addTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadBaseListener;Z)V
    .locals 3

    .prologue
    .line 110
    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2}, Lmtopsdk/mtop/upload/FileUploadMgr;->addTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadBaseListener;)V

    .line 132
    :goto_0
    return-void

    .line 115
    :cond_0
    if-nez p2, :cond_1

    .line 116
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "add upload task failed,listener is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    :cond_2
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "add upload task failed,fileInfo is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "ILLEGAL_FILE_ERROR"

    const-string/jumbo v1, "ANDROID_SYS_FILE_INVALID"

    const-string/jumbo v2, "\u65e0\u6548\u7684\u4e0a\u4f20\u6587\u4ef6"

    invoke-interface {p2, v0, v1, v2}, Lmtopsdk/mtop/upload/FileUploadBaseListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-direct {v0, p2}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;-><init>(Lmtopsdk/mtop/upload/FileUploadListener;)V

    .line 127
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 128
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_4
    new-instance v1, Lmtopsdk/mtop/upload/FileUploadConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lmtopsdk/mtop/upload/FileUploadConnection;-><init>(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;Z)V

    .line 131
    invoke-virtual {v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->upload()V

    goto :goto_0
.end method

.method public addTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "add upload task failed,listener is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :cond_1
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "add upload task failed,fileInfo is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "ANDROID_SYS_FILE_INVALID"

    const-string/jumbo v1, "\u65e0\u6548\u7684\u4e0a\u4f20\u6587\u4ef6"

    invoke-interface {p2, v0, v1}, Lmtopsdk/mtop/upload/FileUploadListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-direct {v0, p2}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;-><init>(Lmtopsdk/mtop/upload/FileUploadListener;)V

    .line 71
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_3
    new-instance v1, Lmtopsdk/mtop/upload/FileUploadConnection;

    invoke-direct {v1, p1, v0}, Lmtopsdk/mtop/upload/FileUploadConnection;-><init>(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;)V

    .line 75
    invoke-virtual {v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->upload()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->uploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 199
    iput-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTaskPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 200
    sput-object v1, Lmtopsdk/mtop/upload/FileUploadMgr;->instance:Lmtopsdk/mtop/upload/FileUploadMgr;

    .line 201
    return-void
.end method

.method public removeTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V
    .locals 3

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTaskPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lmtopsdk/mtop/upload/FileUploadMgr$1;

    invoke-direct {v1, p0, p1}, Lmtopsdk/mtop/upload/FileUploadMgr$1;-><init>(Lmtopsdk/mtop/upload/FileUploadMgr;Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string/jumbo v1, "mtopsdk.FileUploadMgr"

    const-string/jumbo v2, "add removeTask to removeTaskPool error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
