.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->out:Ljava/io/OutputStream;

    .line 330
    return-void
.end method


# virtual methods
.method public writeHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->out:Ljava/io/OutputStream;

    const/16 v3, 0x60

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 336
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->writeString(Ljava/lang/String;)V

    .line 337
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->writeString(Ljava/lang/String;)V

    .line 334
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public writeInt(III)V
    .locals 3

    .prologue
    .line 343
    if-ge p1, p2, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->out:Ljava/io/OutputStream;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 359
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->out:Ljava/io/OutputStream;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 350
    sub-int v0, p1, p2

    .line 353
    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 354
    and-int/lit8 v1, v0, 0x7f

    .line 355
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->out:Ljava/io/OutputStream;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 356
    ushr-int/lit8 v0, v0, 0x7

    .line 357
    goto :goto_1

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 366
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 367
    array-length v1, v0

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->writeInt(III)V

    .line 368
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Writer;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 369
    return-void
.end method
