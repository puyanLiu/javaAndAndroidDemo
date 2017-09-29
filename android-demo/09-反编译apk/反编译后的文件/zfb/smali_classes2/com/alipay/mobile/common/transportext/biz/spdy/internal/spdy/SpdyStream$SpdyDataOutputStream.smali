.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;
.super Ljava/io/OutputStream;
.source "SpdyStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buffer:[B

.field private closed:Z

.field private finished:Z

.field private pos:I

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

.field private unacknowledgedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 615
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 615
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 616
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    .line 617
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    .line 633
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$1;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z
    .locals 0

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    return v0
.end method

.method static synthetic access$620(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;I)I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    return v0
.end method

.method private checkNotClosed()V
    .locals 4

    .prologue
    .line 722
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 725
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    if-eqz v0, :cond_1

    .line 726
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "stream finished"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 728
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stream was reset:1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private waitUntilWritable(IZ)V
    .locals 3

    .prologue
    .line 704
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 705
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 708
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 709
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 710
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    if-eqz v0, :cond_2

    .line 711
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stream was reset:2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    :cond_3
    return-void
.end method

.method private writeFrame(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 685
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 687
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    .line 688
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 689
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->waitUntilWritable(IZ)V

    .line 690
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    .line 691
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    iget v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeData(IZ[BII)V

    .line 693
    iput v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    .line 694
    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 670
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 673
    monitor-exit v1

    .line 682
    :goto_0
    return-void

    .line 675
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    .line 676
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    if-nez v0, :cond_2

    .line 678
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->writeFrame(Z)V

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->flush()V

    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V

    goto :goto_0

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 660
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 661
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->checkNotClosed()V

    .line 662
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    if-lez v0, :cond_1

    .line 663
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->writeFrame(Z)V

    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->flush()V

    .line 666
    :cond_1
    return-void
.end method

.method public final write(I)V
    .locals 0

    .prologue
    .line 637
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 638
    return-void
.end method

.method public final write([BII)V
    .locals 3

    .prologue
    .line 642
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 643
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->checkOffsetAndCount(III)V

    .line 644
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->checkNotClosed()V

    .line 646
    :goto_0
    if-lez p3, :cond_2

    .line 647
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->writeFrame(Z)V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    .line 653
    add-int/2addr p2, v0

    .line 654
    sub-int/2addr p3, v0

    .line 655
    goto :goto_0

    .line 656
    :cond_2
    return-void
.end method
