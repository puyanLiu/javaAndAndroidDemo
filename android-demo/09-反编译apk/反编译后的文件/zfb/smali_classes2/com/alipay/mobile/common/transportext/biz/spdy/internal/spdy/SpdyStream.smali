.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;
.super Ljava/lang/Object;
.source "SpdyStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final WINDOW_UPDATE_THRESHOLD:I = 0x8000


# instance fields
.field private final connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

.field private errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

.field private final id:I

.field private final in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

.field private mNetContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

.field private final out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

.field private final priority:I

.field private readTimeoutMillis:J

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private writeWindowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;",
            "ZZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    .line 60
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    .line 61
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    .line 68
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 77
    if-nez p2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p6, :cond_1

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    .line 82
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-static {v0, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$202(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v0, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z

    .line 85
    iput p5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->priority:I

    .line 86
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    .line 88
    invoke-direct {p0, p7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->setSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 89
    return-void
.end method

.method constructor <init>(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;",
            "ZZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;",
            "Lcom/alipay/mobile/common/transport/context/TransportContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;-><init>(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 94
    iput-object p8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->mNetContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 95
    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->writeWindowSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    return-wide v0
.end method

.method private cancelStreamIfNecessary()V
    .locals 2

    .prologue
    .line 593
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 596
    :cond_0
    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 598
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v1

    .line 599
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    if-eqz v0, :cond_4

    .line 605
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->CANCEL:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->close(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 609
    :cond_2
    :goto_1
    return-void

    .line 597
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 606
    :cond_4
    if-nez v1, :cond_2

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method private closeInternal(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    sget-boolean v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 277
    :cond_0
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    if-eqz v1, :cond_1

    .line 279
    monitor-exit p0

    .line 289
    :goto_0
    return v0

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_2
    :try_start_1
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SpdyStream#closeInternal  errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 287
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    .line 289
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
    .locals 2

    .prologue
    const/high16 v0, 0x10000

    .line 352
    sget-boolean v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->writeWindowSize:I

    .line 356
    return-void
.end method


# virtual methods
.method public final close(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->closeInternal(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeSynReset(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final closeLater(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->closeInternal(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public final declared-synchronized getErrorCode()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    return-object v0
.end method

.method public final getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->mNetContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the output stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    return-object v0
.end method

.method final getPriority()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->priority:I

    return v0
.end method

.method public final getReadTimeoutMillis()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    return-wide v0
.end method

.method public final getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 137
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 140
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    add-long/2addr v4, v6

    .line 146
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 147
    :goto_1
    iget-object v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    if-nez v8, :cond_2

    .line 148
    iget-wide v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_0

    .line 149
    const-string/jumbo v8, "MWALLET_SPDY_LOG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "SpdyStream#getResponseHeaders  readTimeoutMillis=["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "].  waiting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :try_start_1
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 179
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 180
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_0
    cmp-long v8, v0, v2

    if-lez v8, :cond_1

    .line 152
    :try_start_2
    const-string/jumbo v8, "MWALLET_SPDY_LOG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "SpdyStream#getResponseHeaders  Wait ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms]  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_1

    .line 156
    :cond_1
    const-string/jumbo v4, "MWALLET_SPDY_LOG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SpdyStream#getResponseHeaders  Wait ["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms]  break "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 163
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    const-string/jumbo v1, "SpdyStream#getResponseHeaders  return responseHeaders"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 167
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    if-eqz v4, :cond_4

    .line 168
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stream was reset:4 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_4
    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_5

    .line 171
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stream was reset:4 Spdy Stream Read Timeout. readTimeoutMillis=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms] realReadTimeoutMillis=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream was reset:4 Unknown Error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    move-wide v0, v2

    move-wide v4, v2

    goto/16 :goto_0
.end method

.method public final isLocallyInitiated()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget-boolean v3, v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->client:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public final declared-synchronized isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 111
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final receiveData(Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    .line 324
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->receive(Ljava/io/InputStream;I)V

    .line 326
    return-void
.end method

.method final receiveFin()V
    .locals 2

    .prologue
    .line 329
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 331
    :cond_0
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->in:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->access$202(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z

    .line 333
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    .line 339
    :cond_1
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final receiveHeaders(Ljava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 293
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 294
    :cond_0
    const/4 v1, 0x0

    .line 295
    const/4 v0, 0x1

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_3

    .line 298
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 315
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    if-eqz v1, :cond_5

    .line 317
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->closeLater(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 321
    :cond_1
    :goto_1
    return-void

    .line 301
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 302
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    goto :goto_0

    .line 309
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 318
    :cond_5
    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method final declared-synchronized receiveRstStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 3

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 343
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->errorCode:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 344
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SpdyStream#receiveRstStream   errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_0
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final receiveSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
    .locals 1

    .prologue
    .line 359
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 360
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->setSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 362
    return-void
.end method

.method final declared-synchronized receiveWindowUpdate(I)V
    .locals 1

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$620(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;I)I

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final reply(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 199
    sget-boolean v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_0
    const/4 v1, 0x0

    .line 201
    monitor-enter p0

    .line 202
    if-nez p1, :cond_1

    .line 203
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "responseHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot reply to a locally initiated stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply already sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_3
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 212
    if-nez p2, :cond_4

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->out:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z

    .line 216
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeSynReply(IZLjava/util/List;)V

    .line 218
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final setReadTimeout(J)V
    .locals 0

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->readTimeoutMillis:J

    .line 226
    return-void
.end method
