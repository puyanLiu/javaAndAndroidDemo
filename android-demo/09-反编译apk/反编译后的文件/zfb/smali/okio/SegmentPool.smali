.class final Lokio/SegmentPool;
.super Ljava/lang/Object;


# static fields
.field static final INSTANCE:Lokio/SegmentPool;

.field static final MAX_SIZE:J = 0x10000L


# instance fields
.field byteCount:J

.field private next:Lokio/Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final recycle(Lokio/Segment;)V
    .locals 6

    const-wide/16 v4, 0x800

    iget-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_0

    iget-object v0, p1, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    monitor-exit p0

    :goto_0
    return-void

    :cond_2
    iget-wide v0, p0, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/SegmentPool;->byteCount:J

    iget-object v0, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    const/4 v0, 0x0

    iput v0, p1, Lokio/Segment;->limit:I

    iput v0, p1, Lokio/Segment;->pos:I

    iput-object p1, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final take()Lokio/Segment;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v1, 0x0

    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    iget-wide v1, p0, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v3, 0x800

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/SegmentPool;->byteCount:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
