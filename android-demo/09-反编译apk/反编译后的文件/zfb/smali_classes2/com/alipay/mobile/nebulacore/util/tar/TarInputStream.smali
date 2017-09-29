.class public Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;
.super Ljava/io/FilterInputStream;
.source "TarInputStream.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 20
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->d:Z

    .line 21
    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    .line 22
    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    .line 23
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 140
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 141
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    const-wide/16 v4, 0x200

    rem-long/2addr v2, v4

    long-to-int v2, v2

    .line 143
    if-lez v2, :cond_0

    .line 145
    :goto_0
    rsub-int v3, v2, 0x200

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    .line 151
    :cond_0
    return-void

    .line 146
    :cond_1
    rsub-int v3, v2, 0x200

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->skip(J)J

    move-result-wide v3

    .line 147
    add-long/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getCurrentOffset()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    return-wide v0
.end method

.method public getNextEntry()Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/16 v11, 0x200

    const/4 v4, 0x0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    move-wide v0, v2

    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    sub-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-ltz v5, :cond_4

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a()V

    .line 78
    :cond_1
    new-array v2, v11, [B

    .line 79
    new-array v1, v11, [B

    move v0, v4

    .line 83
    :goto_1
    if-lt v0, v11, :cond_6

    .line 95
    :cond_2
    const/4 v0, 0x1

    move v1, v4

    .line 96
    :goto_2
    if-lt v1, v11, :cond_7

    .line 103
    :goto_3
    if-nez v0, :cond_3

    .line 104
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    return-object v0

    .line 76
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    sub-long/2addr v5, v7

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;->getSize()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    sub-long/2addr v7, v9

    cmp-long v7, v7, v2

    if-lez v7, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Possible tar file corruption"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-long/2addr v0, v5

    goto :goto_0

    .line 84
    :cond_6
    rsub-int v3, v0, 0x200

    invoke-virtual {p0, v1, v4, v3}, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->read([BII)I

    move-result v3

    .line 86
    if-ltz v3, :cond_2

    .line 87
    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/2addr v0, v3

    goto :goto_1

    .line 96
    :cond_7
    aget-byte v3, v2, v1

    .line 97
    if-eqz v3, :cond_8

    move v0, v4

    .line 99
    goto :goto_3

    .line 96
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public isDefaultSkip()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->d:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .prologue
    .line 32
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 41
    new-array v1, v0, [B

    .line 43
    invoke-virtual {p0, v1, v3, v0}, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->read([BII)I

    move-result v0

    .line 45
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 46
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    .line 49
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    if-eqz v1, :cond_1

    .line 55
    iget-wide v1, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;->getSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 72
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;->getSize()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    sub-long/2addr v1, v3

    int-to-long v3, p3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;->getSize()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    .line 62
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 64
    if-eq v1, v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->a:Lcom/alipay/mobile/nebulacore/util/tar/TarEntry;

    if-eqz v0, :cond_2

    .line 66
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->b:J

    .line 69
    :cond_2
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    :cond_3
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultSkip(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->d:Z

    .line 189
    return-void
.end method

.method public skip(J)J
    .locals 10

    .prologue
    const-wide/16 v4, 0x800

    const-wide/16 v6, 0x0

    .line 155
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->d:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 159
    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->c:J

    .line 180
    :goto_0
    return-wide v0

    .line 164
    :cond_0
    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    move-wide v0, v6

    .line 165
    goto :goto_0

    .line 169
    :cond_1
    const/16 v0, 0x800

    new-array v8, v0, [B

    move-wide v2, p1

    .line 171
    :goto_1
    cmp-long v0, v2, v6

    if-gtz v0, :cond_3

    .line 180
    :cond_2
    sub-long v0, p1, v2

    goto :goto_0

    .line 172
    :cond_3
    const/4 v9, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    move-wide v0, v2

    .line 173
    :goto_2
    long-to-int v0, v0

    .line 172
    invoke-virtual {p0, v8, v9, v0}, Lcom/alipay/mobile/nebulacore/util/tar/TarInputStream;->read([BII)I

    move-result v0

    .line 174
    if-ltz v0, :cond_2

    .line 175
    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_1

    :cond_4
    move-wide v0, v4

    .line 173
    goto :goto_2
.end method
