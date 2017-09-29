.class interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# static fields
.field public static final HTTP_20_DRAFT_06:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

.field public static final SPDY3:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;->SPDY3:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    .line 24
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;->HTTP_20_DRAFT_06:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    return-void
.end method


# virtual methods
.method public abstract newReader(Ljava/io/InputStream;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;
.end method

.method public abstract newWriter(Ljava/io/OutputStream;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;
.end method
