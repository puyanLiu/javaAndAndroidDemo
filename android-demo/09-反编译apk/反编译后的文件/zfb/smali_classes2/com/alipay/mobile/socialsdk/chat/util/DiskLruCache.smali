.class final Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final q:Ljava/io/OutputStream;


# instance fields
.field final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private final i:I

.field private j:J

.field private k:I

.field private l:Ljava/io/Writer;

.field private final m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/chat/util/d;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:J

.field private final p:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 687
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/b;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/util/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->q:Ljava/io/OutputStream;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/io/File;I)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    .line 96
    iput v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    .line 107
    iput-wide v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->o:J

    .line 111
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 112
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/util/a;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->p:Ljava/util/concurrent/Callable;

    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->b:Ljava/io/File;

    .line 132
    iput p2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f:I

    .line 133
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    .line 134
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->d:Ljava/io/File;

    .line 135
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->e:Ljava/io/File;

    .line 136
    iput v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    .line 137
    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g:J

    .line 138
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h:I

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;J)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/lang/String;J)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 409
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g()V

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    .line 411
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 412
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->f(Lcom/alipay/mobile/socialsdk/chat/util/d;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 428
    :goto_0
    monitor-exit p0

    return-object v0

    .line 415
    :cond_1
    if-nez v0, :cond_2

    .line 416
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;B)V

    .line 417
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 422
    :goto_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/d;B)V

    .line 423
    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    .line 426
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 418
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 419
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;I)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;
    .locals 6

    .prologue
    .line 152
    const-wide/32 v0, 0x1400000

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    :cond_1
    :goto_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    .line 176
    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;-><init>(Ljava/io/File;I)V

    .line 177
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    :try_start_0
    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c()V

    .line 180
    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->d()V

    .line 181
    new-instance v1, Ljava/io/BufferedWriter;

    .line 182
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 183
    sget-object v4, Lcom/alipay/mobile/socialsdk/chat/util/h;->a:Ljava/nio/charset/Charset;

    .line 182
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 181
    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_1
    return-object v0

    .line 170
    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->close()V

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/File;)V

    .line 192
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 193
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;-><init>(Ljava/io/File;I)V

    .line 194
    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->e()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 631
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/h;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 474
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->b(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)Lcom/alipay/mobile/socialsdk/chat/util/d;

    move-result-object v2

    .line 475
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 480
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 481
    :goto_0
    iget v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    if-lt v1, v3, :cond_5

    .line 494
    :cond_1
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    if-lt v0, v1, :cond_8

    .line 511
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    .line 512
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    .line 513
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_b

    .line 514
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->d(Lcom/alipay/mobile/socialsdk/chat/util/d;)V

    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->c(Lcom/alipay/mobile/socialsdk/chat/util/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 516
    if-eqz p2, :cond_2

    .line 517
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->o:J

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;J)V

    .line 523
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 525
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h:I

    if-gt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 482
    :cond_5
    :try_start_2
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->c(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_6

    .line 483
    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->abort()V

    .line 484
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_6
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 488
    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->abort()V

    goto :goto_3

    .line 481
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 495
    :cond_8
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(I)Ljava/io/File;

    move-result-object v1

    .line 496
    if-eqz p2, :cond_a

    .line 497
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 498
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(I)Ljava/io/File;

    move-result-object v3

    .line 499
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 500
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->e(Lcom/alipay/mobile/socialsdk/chat/util/d;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 501
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 502
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->e(Lcom/alipay/mobile/socialsdk/chat/util/d;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 503
    iget-wide v8, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    .line 504
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    .line 494
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 507
    :cond_a
    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;)V

    goto :goto_4

    .line 520
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->c(Lcom/alipay/mobile/socialsdk/chat/util/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->c(Lcom/alipay/mobile/socialsdk/chat/util/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Z)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 342
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 345
    if-eqz p2, :cond_0

    .line 346
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;)V

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 351
    :cond_1
    return-void
.end method

.method static synthetic b()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 687
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->q:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h()V

    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 199
    new-instance v3, Lcom/alipay/mobile/socialsdk/chat/util/f;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 200
    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/util/h;->a:Ljava/nio/charset/Charset;

    .line 199
    invoke-direct {v3, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/util/f;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 202
    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/chat/util/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/chat/util/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/chat/util/f;->a()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/chat/util/f;->a()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/chat/util/f;->a()Ljava/lang/String;

    move-result-object v6

    .line 207
    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    iget v7, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    iget v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const-string/jumbo v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 212
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/Closeable;)V

    .line 229
    throw v0

    :cond_1
    move v1, v0

    .line 220
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/chat/util/f;->a()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/Closeable;)V

    .line 230
    return-void

    .line 220
    :cond_2
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x20

    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-ne v5, v2, :cond_9

    const-string/jumbo v2, "REMOVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    if-nez v0, :cond_5

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v2, v7}, Lcom/alipay/mobile/socialsdk/chat/util/d;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;B)V

    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v6, v8, :cond_6

    if-ne v5, v9, :cond_6

    const-string/jumbo v2, "CLEAN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->d(Lcom/alipay/mobile/socialsdk/chat/util/d;)V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;[Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ne v6, v8, :cond_7

    if-ne v5, v9, :cond_7

    const-string/jumbo v2, "DIRTY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Lcom/alipay/mobile/socialsdk/chat/util/d;B)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    goto :goto_1

    :cond_7
    if-ne v6, v8, :cond_8

    const/4 v0, 0x4

    if-ne v5, v0, :cond_8

    const-string/jumbo v0, "READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    move-object v2, v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i()V

    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;)V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    return-void

    .line 278
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    .line 279
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    .line 280
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    if-ge v1, v4, :cond_0

    .line 281
    iget-wide v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->e(Lcom/alipay/mobile/socialsdk/chat/util/d;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    .line 282
    iget v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;)V

    move v1, v2

    .line 286
    :goto_2
    iget v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    if-lt v1, v4, :cond_3

    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;)V

    .line 288
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized e()V
    .locals 5

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 304
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 305
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/alipay/mobile/socialsdk/chat/util/h;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 304
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 311
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 313
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 325
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 334
    new-instance v0, Ljava/io/BufferedWriter;

    .line 335
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/alipay/mobile/socialsdk/chat/util/h;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 334
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    monitor-exit p0

    return-void

    .line 317
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    .line 318
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->c(Lcom/alipay/mobile/socialsdk/chat/util/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    .line 325
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 326
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :cond_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->c(Lcom/alipay/mobile/socialsdk/chat/util/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->e()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    .line 537
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 536
    goto :goto_0
.end method

.method static synthetic g(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->b:Ljava/io/File;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 609
    :goto_0
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 613
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 611
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 616
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h:I

    if-gt v0, v1, :cond_0

    .line 620
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->c(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 358
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g()V

    .line 359
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-nez v2, :cond_0

    move-object v1, v3

    .line 398
    :goto_0
    monitor-exit p0

    return-object v1

    .line 364
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(Lcom/alipay/mobile/socialsdk/chat/util/d;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 365
    goto :goto_0

    .line 371
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    new-array v6, v1, [Ljava/io/File;

    .line 372
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    new-array v7, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 375
    :goto_1
    :try_start_2
    iget v5, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v1, v5, :cond_3

    .line 392
    :try_start_3
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    .line 393
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "READ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 394
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 398
    :cond_2
    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->f(Lcom/alipay/mobile/socialsdk/chat/util/d;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/d;->e(Lcom/alipay/mobile/socialsdk/chat/util/d;)[J

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JB)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 376
    :cond_3
    :try_start_4
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(I)Ljava/io/File;

    move-result-object v5

    .line 377
    aput-object v5, v6, v1

    .line 378
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v8, v7, v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    :catch_0
    move-exception v1

    move v1, v4

    :goto_2
    :try_start_5
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    if-lt v1, v2, :cond_5

    :cond_4
    move-object v1, v3

    .line 389
    goto :goto_0

    .line 383
    :cond_5
    aget-object v2, v7, v1

    if-eqz v2, :cond_4

    .line 384
    aget-object v2, v7, v1

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/util/h;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g()V

    .line 587
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h()V

    .line 588
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i()V

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
    .locals 2

    .prologue
    .line 405
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/lang/String;J)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 546
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->g()V

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    .line 548
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_0
    move v0, v1

    .line 570
    :goto_0
    monitor-exit p0

    return v0

    .line 553
    :cond_1
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/d;->a(I)Ljava/io/File;

    move-result-object v2

    .line 554
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 555
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 557
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->e(Lcom/alipay/mobile/socialsdk/chat/util/d;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->j:J

    .line 558
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->k:I

    .line 559
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->e(Lcom/alipay/mobile/socialsdk/chat/util/d;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i:I

    if-lt v1, v2, :cond_1

    .line 562
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->n:I

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 3

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 606
    :goto_0
    monitor-exit p0

    return-void

    .line 597
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->h()V

    .line 603
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->i()V

    .line 604
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->l:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 597
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/util/d;

    .line 598
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 599
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/util/d;->b(Lcom/alipay/mobile/socialsdk/chat/util/d;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
