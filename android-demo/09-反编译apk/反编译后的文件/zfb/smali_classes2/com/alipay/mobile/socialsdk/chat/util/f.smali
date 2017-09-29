.class final Lcom/alipay/mobile/socialsdk/chat/util/f;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/chat/util/f;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_1
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/util/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->a:Ljava/io/InputStream;

    .line 92
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->b:Ljava/nio/charset/Charset;

    .line 93
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/util/f;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 179
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 182
    :cond_0
    iput v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    .line 183
    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->e:I

    .line 184
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 120
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->a:Ljava/io/InputStream;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->e:I

    if-lt v0, v1, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/f;->b()V

    .line 132
    :cond_1
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    :goto_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->e:I

    if-ne v2, v0, :cond_4

    .line 142
    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/util/g;

    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->e:I

    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/socialsdk/chat/util/g;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/f;I)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    iget v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->e:I

    iget v5, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->e:I

    .line 158
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/util/f;->b()V

    .line 160
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    :goto_1
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->e:I

    if-eq v0, v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_7

    .line 162
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    if-eq v0, v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    iget v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    iget v5, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 165
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    .line 166
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    :goto_2
    return-object v0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_6

    .line 134
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    if-eq v2, v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    .line 135
    :goto_3
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    iget v5, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    iget v6, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 136
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->d:I

    .line 137
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move v1, v2

    .line 134
    goto :goto_3

    .line 132
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->a:Ljava/io/InputStream;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->c:[B

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/f;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 103
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
