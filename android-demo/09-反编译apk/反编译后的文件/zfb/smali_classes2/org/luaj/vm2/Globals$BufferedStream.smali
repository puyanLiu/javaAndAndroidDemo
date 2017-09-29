.class Lorg/luaj/vm2/Globals$BufferedStream;
.super Lorg/luaj/vm2/Globals$AbstractBufferedStream;


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/Globals$AbstractBufferedStream;-><init>(I)V

    iput-object p2, p0, Lorg/luaj/vm2/Globals$BufferedStream;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/luaj/vm2/Globals$BufferedStream;-><init>(ILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected avail()I
    .locals 6

    const/4 v1, -0x1

    iget v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    iget v2, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    iget v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    iget-object v2, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    iput v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B

    iget v3, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    iget-object v4, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B

    array-length v4, v4

    iget v5, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B

    iget v2, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    :cond_4
    iget v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B

    array-length v0, v0

    if-le p1, v0, :cond_2

    new-array v0, p1, [B

    :goto_0
    iget-object v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B

    iget v2, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    iget v5, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    iget v2, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->j:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I

    iput-object v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->b:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/luaj/vm2/Globals$BufferedStream;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
