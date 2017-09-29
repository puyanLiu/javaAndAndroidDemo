.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field private bufferSize:J

.field private bytesLeft:J

.field private final emittedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

.field private final maxBufferSize:J

.field private final referenceSet:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Ljava/io/DataInputStream;Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->maxBufferSize:J

    .line 114
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->referenceSet:Ljava/util/BitSet;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    .line 117
    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    .line 118
    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->in:Ljava/io/DataInputStream;

    .line 122
    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack;->INITIAL_SERVER_TO_CLIENT_HEADER_TABLE:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    .line 124
    const-wide/16 v0, 0x518

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack;->INITIAL_CLIENT_TO_SERVER_HEADER_TABLE:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    .line 127
    const-wide/16 v0, 0x4ee

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    goto :goto_0
.end method

.method private getName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertIntoHeaderTable(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1000

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->length()I

    move-result v2

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->length()I

    move-result v0

    sub-int v0, v2, v0

    .line 252
    :goto_0
    int-to-long v2, v0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_1
    return-void

    .line 262
    :cond_0
    :goto_2
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 263
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->remove(I)V

    .line 264
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 267
    :cond_1
    if-gez p1, :cond_2

    .line 269
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p1, v1

    .line 276
    :goto_3
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->referenceSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 271
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private readByte()I
    .locals 4

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->referenceSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->referenceSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->referenceSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 212
    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->insertIntoHeaderTable(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)V

    .line 213
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 219
    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->insertIntoHeaderTable(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)V

    .line 220
    return-void
.end method

.method private readLiteralHeaderWithSubstitutionIndexingIndexedName(I)V
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readByte()I

    move-result v0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    .line 225
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 227
    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->insertIntoHeaderTable(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)V

    .line 228
    return-void
.end method

.method private readLiteralHeaderWithSubstitutionIndexingNewName()V
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readByte()I

    move-result v1

    const/16 v2, 0xff

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 233
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-direct {v3, v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->insertIntoHeaderTable(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)V

    .line 235
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 3

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method private remove(I)V
    .locals 5

    .prologue
    .line 281
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->headerTable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->length()I

    move-result v0

    int-to-long v3, v0

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bufferSize:J

    .line 282
    return-void
.end method


# virtual methods
.method public emitReferenceSet()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->referenceSet:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->referenceSet:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public getAndReset()Ljava/util/List;
    .locals 2
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
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    return-object v0
.end method

.method public readHeaders(I)V
    .locals 7

    .prologue
    const/16 v6, 0x60

    const/16 v5, 0x40

    const/16 v4, 0x1f

    .line 136
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    .line 139
    :goto_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readByte()I

    move-result v0

    .line 142
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    .line 143
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    .line 144
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    .line 145
    :cond_0
    if-ne v0, v6, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto :goto_0

    .line 147
    :cond_1
    and-int/lit16 v1, v0, 0xe0

    if-ne v1, v6, :cond_2

    .line 148
    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    .line 149
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_0

    .line 150
    :cond_2
    if-ne v0, v5, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    .line 152
    :cond_3
    and-int/lit16 v1, v0, 0xe0

    if-ne v1, v5, :cond_4

    .line 153
    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    .line 154
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    .line 155
    :cond_4
    if-nez v0, :cond_5

    .line 156
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readLiteralHeaderWithSubstitutionIndexingNewName()V

    goto :goto_0

    .line 157
    :cond_5
    and-int/lit16 v1, v0, 0xc0

    if-nez v1, :cond_6

    .line 158
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    .line 159
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readLiteralHeaderWithSubstitutionIndexingIndexedName(I)V

    goto :goto_0

    .line 161
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :cond_7
    return-void
.end method

.method readInt(II)I
    .locals 3

    .prologue
    .line 290
    and-int v0, p1, p2

    .line 291
    if-ge v0, p2, :cond_0

    .line 305
    :goto_0
    return v0

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readByte()I

    move-result v1

    .line 300
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 301
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 302
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 304
    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 305
    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readByte()I

    move-result v0

    .line 317
    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v0

    .line 318
    new-array v1, v0, [B

    .line 319
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->bytesLeft:J

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 321
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
