.class public Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;
.super Ljava/lang/Object;
.source "AlipayLogUploader.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->f:Z

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    .line 31
    iput-wide p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->b:J

    .line 32
    iput-wide p4, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->c:J

    .line 33
    iput-object p6, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->e:Ljava/lang/String;

    .line 35
    iput-boolean p8, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->f:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 116
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_1

    .line 119
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 120
    if-eqz v3, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 126
    iget-wide v6, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->b:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->c:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 52
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 53
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "alipay"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "@("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 68
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MiscUtils;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "alipay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 75
    :try_start_0
    invoke-static {v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/ZipToFile;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 81
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "upload"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 91
    :cond_5
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    new-instance v4, Lcom/alipay/mobile/logmonitor/util/stack/a;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/logmonitor/util/stack/a;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/String;)V

    .line 111
    iget-boolean v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->f:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Z)V

    .line 112
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    .line 145
    return-void
.end method
