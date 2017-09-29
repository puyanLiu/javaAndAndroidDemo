.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 698
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$2;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 148
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->nextSequenceNumber:J

    .line 151
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 153
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->directory:Ljava/io/File;

    .line 171
    iput p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->appVersion:I

    .line 172
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    .line 173
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 174
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 175
    iput p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    .line 176
    iput-wide p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->maxSize:J

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Ljava/lang/String;J)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Z)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->completeEdit(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;I)I
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 494
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    move-result-object v2

    .line 495
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 501
    :goto_0
    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_4

    .line 502
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->access$1500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 503
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->abort()V

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 501
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_7

    .line 514
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 515
    if-eqz p2, :cond_6

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 517
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 518
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 519
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 521
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 522
    iget-wide v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    .line 513
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 525
    :cond_6
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 529
    :cond_7
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    .line 530
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    .line 531
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 532
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$602(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Z)Z

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 534
    if-eqz p2, :cond_8

    .line 535
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1202(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;J)J

    .line 541
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 543
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 538
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

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

    goto :goto_4
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 373
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 439
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->checkNotClosed()V

    .line 440
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    .line 442
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 459
    :goto_0
    monitor-exit p0

    return-object v0

    .line 446
    :cond_1
    if-nez v0, :cond_2

    .line 447
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;)V

    .line 448
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 453
    :goto_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;)V

    .line 454
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    .line 457
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    .line 458
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 450
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 650
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;
    .locals 6

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    if-gtz p2, :cond_1

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 210
    :cond_2
    :goto_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 211
    iget-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    :try_start_0
    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->readJournal()V

    .line 214
    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->processJournal()V

    .line 215
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    return-object v0

    .line 205
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->logW(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->delete()V

    .line 226
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 227
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 228
    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->rebuildJournal()V

    goto :goto_1
.end method

.method private processJournal()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    .line 311
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 312
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_0

    .line 313
    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 316
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move v1, v2

    .line 317
    :goto_2
    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_2

    .line 318
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 321
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 324
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 8

    .prologue
    .line 233
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 235
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 240
    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "1"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 249
    :cond_1
    const/4 v0, 0x0

    .line 252
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :catch_0
    move-exception v2

    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v1, 0x20

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 266
    if-ne v2, v5, :cond_0

    .line 267
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 271
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 273
    if-ne v3, v5, :cond_2

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    const/4 v1, 0x6

    if-ne v2, v1, :cond_7

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    .line 284
    if-nez v0, :cond_3

    .line 285
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;)V

    .line 286
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    if-eq v3, v5, :cond_4

    if-ne v2, v7, :cond_4

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$602(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Z)Z

    .line 292
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    .line 293
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_4
    if-ne v3, v5, :cond_5

    if-ne v2, v7, :cond_5

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$702(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    goto :goto_0

    .line 296
    :cond_5
    if-ne v3, v5, :cond_6

    const/4 v0, 0x4

    if-ne v2, v0, :cond_6

    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 335
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    :try_start_1
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    .line 349
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

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

    .line 356
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 365
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 367
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 376
    if-eqz p2, :cond_0

    .line 377
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 379
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 382
    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 4

    .prologue
    .line 626
    :goto_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 628
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 643
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 623
    :goto_0
    monitor-exit p0

    return-void

    .line 615
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    .line 616
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 617
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 620
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->trimToSize()V

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final delete()V
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->close()V

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->deleteContents(Ljava/io/File;)V

    .line 640
    return-void
.end method

.method public final edit(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
    .locals 2

    .prologue
    .line 435
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->checkNotClosed()V

    .line 606
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->trimToSize()V

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 390
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->checkNotClosed()V

    .line 391
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-nez v2, :cond_0

    move-object v1, v3

    .line 427
    :goto_0
    monitor-exit p0

    return-object v1

    .line 397
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 398
    goto :goto_0

    .line 404
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 406
    :goto_1
    :try_start_2
    iget v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    if-ge v1, v5, :cond_3

    .line 407
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v6, v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    :catch_0
    move-exception v1

    move v1, v4

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_2

    .line 412
    aget-object v2, v6, v1

    if-eqz v2, :cond_2

    .line 413
    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 418
    goto :goto_0

    .line 421
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    .line 422
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    .line 423
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 427
    :cond_4
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public final getMaxSize()J
    .locals 2

    .prologue
    .line 472
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 565
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->checkNotClosed()V

    .line 566
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;

    .line 568
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 589
    :goto_0
    monitor-exit p0

    return v0

    .line 577
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J

    .line 578
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 572
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 573
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 574
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
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

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 581
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->redundantOpCount:I

    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized setMaxSize(J)V
    .locals 2

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->maxSize:J

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()J
    .locals 2

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
