.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$FillableInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "NameValueBlockReader.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 68
    return-void
.end method


# virtual methods
.method public fill()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 72
    return-void
.end method
