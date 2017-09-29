.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.source "Amnet.java"


# instance fields
.field private xp:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V
    .locals 0

    .prologue
    .line 2378
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 2379
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreEvent;->xp:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    .line 2380
    return-void
.end method


# virtual methods
.method public final owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreEvent;->xp:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    return-object v0
.end method
