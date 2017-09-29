.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final client:Z

.field private connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

.field private final frameReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;

.field private final frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

.field private final handler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private lastStreamTime:J

.field private nextPingId:I

.field private nextStreamId:I

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field settings:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

.field private shutdown:Z

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;",
            ">;"
        }
    .end annotation
.end field

.field final variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 55
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v7, "OkHttp SpdyConnection"

    invoke-static {v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->daemonThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->idleStartTimeNs:J

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->lastStreamTime:J

    .line 114
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    .line 115
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->client:Z

    .line 116
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->handler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/InputStream;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;->newReader(Ljava/io/InputStream;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/OutputStream;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;->newWriter(Ljava/io/OutputStream;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    .line 119
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 120
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextPingId:I

    .line 121
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 122
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Spdy Reader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->close(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->getStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->handler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->removePing(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->setIdle(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writePing(ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V

    return-void
.end method

.method private close(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 347
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 350
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 358
    :goto_0
    monitor-enter p0

    .line 359
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    .line 361
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 362
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->setIdle(Z)V

    move-object v5, v0

    .line 364
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    .line 366
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    move-object v4, v0

    .line 368
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    if-eqz v5, :cond_3

    .line 371
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    .line 373
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->close(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 371
    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 351
    :catch_0
    move-exception v0

    .line 352
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v4, "SpdyConnection#close  shutdown error"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 353
    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 374
    :catch_1
    move-exception v1

    .line 375
    if-eqz v0, :cond_1

    move-object v0, v1

    .line 376
    goto :goto_4

    :cond_2
    move-object v1, v0

    .line 381
    :cond_3
    if-eqz v4, :cond_4

    .line 382
    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    .line 383
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;->cancel()V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 388
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 394
    :goto_6
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 402
    :cond_5
    :goto_7
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    .line 410
    :cond_6
    :goto_8
    if-eqz v0, :cond_7

    .line 411
    throw v0

    .line 389
    :catch_2
    move-exception v0

    .line 390
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v2, "SpdyConnection#close  frameReader.close() error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 391
    goto :goto_6

    .line 395
    :catch_3
    move-exception v0

    .line 396
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    const-string/jumbo v3, "SpdyConnection#close  frameWriter.close() error"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    if-nez v1, :cond_5

    move-object v1, v0

    .line 398
    goto :goto_7

    .line 403
    :catch_4
    move-exception v0

    .line 404
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    const-string/jumbo v3, "SpdyConnection#close  connection.close() error"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_8

    .line 412
    :cond_7
    return-void

    :cond_8
    move-object v4, v2

    goto :goto_2

    :cond_9
    move-object v5, v2

    goto/16 :goto_1
.end method

.method private declared-synchronized getStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removePing(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;
    .locals 2

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    monitor-enter v1

    .line 297
    if-eqz p4, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;->send()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->ping(ZII)V

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writePingLater(ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V
    .locals 9

    .prologue
    .line 282
    sget-object v8, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$3;

    const-string/jumbo v2, "OkHttp SPDY Writer %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$3;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 292
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 343
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->NO_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->CANCEL:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->close(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 344
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->flush()V

    .line 314
    return-void
.end method

.method public final declared-synchronized getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isIdle()Z
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isShutdown()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown:Z

    return v0
.end method

.method public final newStream(Ljava/util/List;ZZLcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/alipay/mobile/common/transport/context/TransportContext;",
            ")",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 175
    if-nez p2, :cond_0

    move v3, v4

    .line 176
    :goto_0
    if-nez p3, :cond_1

    .line 177
    :goto_1
    iget-object v10, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    monitor-enter v10

    .line 184
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v0, :cond_2

    .line 186
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_0
    move v3, v0

    .line 175
    goto :goto_0

    :cond_1
    move v4, v0

    .line 176
    goto :goto_1

    .line 188
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 189
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 190
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    move-object v2, p0

    move-object v6, p1

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;-><init>(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 192
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->setLastStreamTime()V

    .line 197
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v1

    move-object v9, p1

    invoke-interface/range {v2 .. v9}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->synStream(ZZIIIILjava/util/List;)V

    .line 201
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    return-object v0
.end method

.method public final noop()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->noop()V

    .line 310
    return-void
.end method

.method public final declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ping()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;-><init>()V

    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 267
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextPingId:I

    .line 270
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->nextPingId:I

    .line 271
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 272
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 275
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const v2, 0x4f4b6f6b

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writePing(ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V

    .line 277
    return-object v0
.end method

.method public final readConnectionHeader()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;->readConnectionHeader()V

    .line 429
    return-void
.end method

.method final declared-synchronized removeStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    .line 142
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->setIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendConnectionHeader()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->connectionHeader()V

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->settings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 421
    return-void
.end method

.method public final setLastStreamTime()V
    .locals 2

    .prologue
    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->lastStreamTime:J

    .line 436
    return-void
.end method

.method public final shutdown(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    monitor-enter v1

    .line 325
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v0, :cond_0

    .line 327
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->shutdown:Z

    .line 330
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    .line 331
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v2, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->goAway(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 333
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 331
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final writeData(IZ[BII)V
    .locals 6

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    move v1, p2

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->data(ZI[BII)V

    .line 214
    return-void
.end method

.method final writeSynReply(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 209
    return-void
.end method

.method final writeSynReset(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->rstStream(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 240
    return-void
.end method

.method final writeSynResetLater(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 7

    .prologue
    .line 227
    sget-object v6, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$1;

    const-string/jumbo v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 236
    return-void
.end method

.method public final writeTcpData([B)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->tcpData([B)V

    .line 224
    return-void
.end method

.method final writeWindowUpdate(II)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->frameWriter:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;->windowUpdate(II)V

    .line 256
    return-void
.end method

.method final writeWindowUpdateLater(II)V
    .locals 7

    .prologue
    .line 243
    sget-object v6, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$2;

    const-string/jumbo v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$2;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 252
    return-void
.end method
