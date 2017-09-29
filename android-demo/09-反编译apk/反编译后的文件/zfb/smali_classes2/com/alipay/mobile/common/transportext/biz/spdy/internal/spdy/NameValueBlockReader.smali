.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private compressedLimit:I

.field private final fillableInflaterInputStream:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

.field private final nameValueBlockIn:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;Ljava/io/InputStream;)V

    .line 48
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$2;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;)V

    .line 60
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->fillableInflaterInputStream:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    .line 61
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->fillableInflaterInputStream:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$020(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;I)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method private doneReading()V
    .locals 3

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-nez v0, :cond_1

    .line 112
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->fillableInflaterInputStream:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;->fill()V

    .line 109
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "compressedLimit > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 116
    new-array v1, v0, [B

    .line 117
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readFully(Ljava/io/InputStream;[B)V

    .line 118
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 123
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->compressedLimit:I

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 79
    if-gez v1, :cond_0

    .line 80
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numberOfPairs < 0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    const/16 v0, 0x400

    if-le v1, v0, :cond_1

    .line 83
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numberOfPairs > 1024: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "name.length == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->doneReading()V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    return-object v2
.end method
