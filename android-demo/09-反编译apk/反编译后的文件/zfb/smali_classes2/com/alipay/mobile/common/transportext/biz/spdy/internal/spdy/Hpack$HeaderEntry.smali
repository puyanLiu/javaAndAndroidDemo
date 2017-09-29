.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method length()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$HeaderEntry;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
