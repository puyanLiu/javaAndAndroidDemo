.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;

.field private unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->protocols:Ljava/util/List;

    .line 384
    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;)Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->unsupported:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 390
    if-nez p3, :cond_0

    .line 391
    sget-object p3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 393
    :cond_0
    const-string/jumbo v3, "supports"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_1

    .line 394
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .line 395
    :cond_1
    const-string/jumbo v3, "unsupported"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_2

    .line 396
    iput-boolean v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->unsupported:Z

    move-object v0, v1

    .line 397
    goto :goto_0

    .line 398
    :cond_2
    const-string/jumbo v3, "protocols"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, p3

    if-nez v3, :cond_3

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->protocols:Ljava/util/List;

    goto :goto_0

    .line 400
    :cond_3
    const-string/jumbo v3, "selectProtocol"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-class v3, Ljava/lang/String;

    if-ne v3, v2, :cond_5

    array-length v2, p3

    if-ne v2, v5, :cond_5

    aget-object v2, p3, v4

    if-eqz v2, :cond_4

    aget-object v2, p3, v4

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_5

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->protocols:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_5
    const-string/jumbo v2, "protocolSelected"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, p3

    if-ne v0, v5, :cond_6

    .line 409
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    move-object v0, v1

    .line 410
    goto :goto_0

    .line 412
    :cond_6
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
