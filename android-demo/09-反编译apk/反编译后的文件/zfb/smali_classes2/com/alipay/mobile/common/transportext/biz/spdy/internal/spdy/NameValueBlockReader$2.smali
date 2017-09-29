.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$2;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 52
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader$2;->setDictionary([B)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 56
    :cond_0
    return v0
.end method
