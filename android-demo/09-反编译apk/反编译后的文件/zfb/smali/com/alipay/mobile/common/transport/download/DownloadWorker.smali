.class public Lcom/alipay/mobile/common/transport/download/DownloadWorker;
.super Lcom/alipay/mobile/common/transport/http/HttpWorker;
.source "DownloadWorker.java"


# static fields
.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 59
    check-cast p2, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 68
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/common/transport/Response;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 290
    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 295
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v1

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 297
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 307
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 299
    :cond_3
    :try_start_3
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 301
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v1

    .line 309
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 264
    const-string/jumbo v0, "DownloadWorker"

    const-string/jumbo v1, "deleteAllFile"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string/jumbo v1, "DownloadWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 324
    :try_start_0
    const-string/jumbo v0, "Last-Modified"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 328
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-string/jumbo v0, "DownloadWorker"

    const-string/jumbo v1, "setLastModified error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getHeaders()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 72
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 82
    cmp-long v3, v1, v6

    if-lez v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-Modified-Since"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const-string/jumbo v2, "DownloadWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "If-Modified-Since:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 91
    cmp-long v5, v1, v6

    if-lez v5, :cond_0

    cmp-long v5, v3, v6

    if-lez v5, :cond_0

    .line 93
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Range:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-Range"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string/jumbo v2, "DownloadWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "If-Range:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 23

    .prologue
    .line 109
    const-string/jumbo v4, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 114
    const/16 v4, 0xc8

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 115
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download failed! code must be equal to 200  code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_0
    const/16 v4, 0x130

    move/from16 v0, p3

    if-ne v0, v4, :cond_1

    .line 120
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 258
    :goto_0
    return-object v4

    .line 123
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_11

    .line 126
    const-string/jumbo v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "file len:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/16 v5, 0x1a0

    move/from16 v0, p3

    if-ne v0, v5, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v4

    goto :goto_0

    .line 132
    :cond_2
    const/16 v5, 0xc8

    move/from16 v0, p3

    if-ne v0, v5, :cond_3

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 135
    :cond_3
    const/16 v5, 0xc8

    move/from16 v0, p3

    if-eq v0, v5, :cond_4

    const/16 v5, 0xce

    move/from16 v0, p3

    if-eq v0, v5, :cond_4

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 138
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download failed! code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 141
    const/4 v5, 0x0

    .line 142
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 146
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    .line 148
    sget-object v6, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->g:Ljava/util/Set;

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 149
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "downloadFileBlackSet contains this url"

    invoke-direct {v4, v9, v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :catch_0
    move-exception v4

    move-object v11, v4

    move-object v12, v5

    .line 222
    :goto_1
    :try_start_1
    instance-of v4, v11, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    if-eqz v4, :cond_5

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SDKDownloadIOException"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v4, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_5

    .line 226
    sget-object v4, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v4

    const-string/jumbo v5, "SDKDownloadIOException"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 241
    :cond_6
    :goto_2
    const-string/jumbo v4, "DownloadWorker"

    invoke-static {v4, v11}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    .line 243
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download failed!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :catchall_0
    move-exception v4

    move-object v6, v12

    :goto_3
    if-eqz v6, :cond_7

    .line 248
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 254
    :cond_7
    throw v4

    .line 153
    :cond_8
    sub-long v12, v10, v7

    :try_start_3
    invoke-static {v12, v13}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isAppAvailableSpace(J)Z

    move-result v6

    if-nez v6, :cond_9

    .line 154
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "cache space less than "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v7, v10, v7

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v9, v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 246
    :catchall_1
    move-exception v4

    move-object v6, v5

    goto :goto_3

    .line 158
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "/data/data"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 159
    invoke-static {v10, v11}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isAppAvailableSpace(J)Z

    move-result v6

    if-nez v6, :cond_b

    .line 160
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "target space less than "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v9, v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_a
    invoke-static {v10, v11}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isSDcardAvailableSpace(J)Z

    move-result v6

    if-nez v6, :cond_b

    .line 165
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "target space less than "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v9, v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 171
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_c

    .line 172
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "cache dir create fail"

    invoke-direct {v4, v9, v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_d

    .line 176
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "targe dir create fail"

    invoke-direct {v4, v9, v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :cond_d
    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    const/4 v13, 0x1

    invoke-direct {v6, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v8, v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)J

    move-result-wide v14

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    sub-long v16, v16, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v12, v18, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v19, "phone"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v19

    const-string/jumbo v20, "monitor"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "url: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v21, " socketSpend: "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " size: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " netDetail: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, "|"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long v7, v12, v7

    invoke-virtual {v4, v7, v8}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    .line 194
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v5

    const/4 v7, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v4, v5, v0, v1, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v14, v15}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->noteTraficConsume(Lcom/alipay/mobile/common/transport/Response;Lorg/apache/http/HttpResponse;J)V

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-static {v5, v7}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 206
    sget-object v4, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->g:Ljava/util/Set;

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "target file not exist"

    invoke-direct {v4, v9, v5, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    :catch_1
    move-exception v4

    move-object v11, v4

    move-object v12, v6

    goto/16 :goto_1

    .line 183
    :catch_2
    move-exception v4

    :try_start_6
    new-instance v4, Lcom/alipay/mobile/common/transport/download/DownloadIOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "cache file read fail"

    invoke-direct {v4, v9, v6, v7}, Lcom/alipay/mobile/common/transport/download/DownloadIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 210
    :cond_e
    const-wide/16 v7, 0x0

    cmp-long v5, v10, v7

    if-lez v5, :cond_f

    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v5, v7, v10

    if-eqz v5, :cond_f

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v7, "DownloadWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " target file length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 220
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 249
    :catch_3
    move-exception v4

    .line 250
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 236
    :cond_10
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 249
    :catch_4
    move-exception v4

    .line 250
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 258
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 246
    :catchall_2
    move-exception v4

    goto/16 :goto_3
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 338
    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
