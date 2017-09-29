.class public Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;
.super Ljava/lang/Object;
.source "ConnectionObservable.java"


# static fields
.field public static final CONNECTED:I = 0x0

.field public static final CONNECTING:I = 0x2

.field public static final DISCONNECTED:I = 0x1


# instance fields
.field public connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

.field public event:I


# direct methods
.method public constructor <init>(ILcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;->event:I

    .line 42
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;->event:I

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 44
    return-void
.end method
