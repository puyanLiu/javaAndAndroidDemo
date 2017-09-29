.class abstract Lorg/luaj/vm2/Globals$AbstractBufferedStream;
.super Ljava/io/InputStream;


# instance fields
.field protected b:[B

.field protected i:I

.field protected j:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    iput v0, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->j:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->b:[B

    return-void
.end method


# virtual methods
.method protected abstract avail()I
.end method

.method public available()I
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->j:I

    iget v1, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->avail()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->b:[B

    iget v1, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->avail()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->b:[B

    iget v2, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    goto :goto_0
.end method

.method public skip(J)J
    .locals 4

    iget v0, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->j:I

    iget v1, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget v2, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/luaj/vm2/Globals$AbstractBufferedStream;->i:I

    return-wide v0
.end method
