.class public final Lnet/lingala/zip4j/io/b;
.super Lnet/lingala/zip4j/io/c;
.source "InflaterInputStream.java"


# instance fields
.field private a:Ljava/util/zip/Inflater;

.field private b:[B

.field private c:[B

.field private d:Lnet/lingala/zip4j/unzip/c;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JLnet/lingala/zip4j/unzip/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/c;-><init>(Ljava/io/RandomAccessFile;JLnet/lingala/zip4j/unzip/c;)V

    .line 33
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/b;->c:[B

    .line 40
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    .line 41
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/b;->b:[B

    .line 42
    iput-object p4, p0, Lnet/lingala/zip4j/io/b;->d:Lnet/lingala/zip4j/unzip/c;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/b;->e:J

    .line 44
    invoke-virtual {p4}, Lnet/lingala/zip4j/unzip/c;->d()Lnet/lingala/zip4j/model/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/f;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/b;->f:J

    .line 45
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 104
    new-array v0, v3, [B

    .line 105
    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, v0, v1, v3}, Lnet/lingala/zip4j/io/c;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/b;->b()V

    .line 109
    return-void
.end method


# virtual methods
.method public final a()Lnet/lingala/zip4j/unzip/c;
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lnet/lingala/zip4j/io/c;->a()Lnet/lingala/zip4j/unzip/c;

    move-result-object v0

    return-object v0
.end method

.method public final available()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 168
    invoke-super {p0}, Lnet/lingala/zip4j/io/c;->close()V

    .line 169
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 48
    iget-object v1, p0, Lnet/lingala/zip4j/io/b;->c:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lnet/lingala/zip4j/io/b;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->c:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_2

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 65
    :cond_2
    if-nez p3, :cond_3

    .line 85
    :goto_0
    return v0

    .line 71
    :cond_3
    :try_start_0
    iget-wide v2, p0, Lnet/lingala/zip4j/io/b;->e:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/b;->f:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 72
    invoke-direct {p0}, Lnet/lingala/zip4j/io/b;->c()V

    move v0, v1

    .line 73
    goto :goto_0

    .line 81
    :cond_4
    iget-object v2, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lnet/lingala/zip4j/io/b;->b:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 75
    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_a

    .line 76
    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    :cond_6
    invoke-direct {p0}, Lnet/lingala/zip4j/io/b;->c()V

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_7
    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/io/b;->b:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/lingala/zip4j/io/b;->b:[B

    array-length v3, v3

    invoke-super {p0, v0, v2, v3}, Lnet/lingala/zip4j/io/c;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 87
    const-string/jumbo v0, "Invalid ZLIB data format"

    .line 88
    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 89
    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_8
    iget-object v1, p0, Lnet/lingala/zip4j/io/b;->d:Lnet/lingala/zip4j/unzip/c;

    if-eqz v1, :cond_9

    .line 92
    iget-object v1, p0, Lnet/lingala/zip4j/io/b;->d:Lnet/lingala/zip4j/unzip/c;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/c;->g()Lnet/lingala/zip4j/model/g;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/g;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/lingala/zip4j/io/b;->d:Lnet/lingala/zip4j/unzip/c;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/c;->g()Lnet/lingala/zip4j/model/g;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/g;->j()I

    move-result v1

    if-nez v1, :cond_9

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - Wrong Password?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_9
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_a
    :try_start_1
    iget-wide v1, p0, Lnet/lingala/zip4j/io/b;->e:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lnet/lingala/zip4j/io/b;->e:J
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final skip(J)J
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x200

    .line 127
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 132
    new-array v5, v1, [B

    move v2, v3

    .line 133
    :goto_0
    if-ge v2, v4, :cond_2

    .line 134
    sub-int v0, v4, v2

    .line 135
    if-le v0, v1, :cond_1

    move v0, v1

    .line 138
    :cond_1
    invoke-virtual {p0, v5, v3, v0}, Lnet/lingala/zip4j/io/b;->read([BII)I

    move-result v0

    .line 139
    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    .line 140
    add-int/2addr v0, v2

    move v2, v0

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    int-to-long v0, v2

    return-wide v0
.end method
