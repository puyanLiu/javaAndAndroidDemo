.class public Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;
.super Ljava/util/Observable;
.source "ConnectionObservable.java"


# static fields
.field private static connectionObservable:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->connectionObservable:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->connectionObservable:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;

    .line 18
    :goto_0
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;-><init>()V

    .line 18
    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->connectionObservable:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;

    goto :goto_0
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->setChanged()V

    .line 26
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
