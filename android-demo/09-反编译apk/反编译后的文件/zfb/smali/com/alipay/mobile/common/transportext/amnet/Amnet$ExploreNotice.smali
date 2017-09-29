.class abstract Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V
    .locals 0

    .prologue
    .line 2395
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    .line 2396
    return-void
.end method


# virtual methods
.method protected abstract exe()V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2401
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    move-result-object v0

    .line 2402
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;->identification()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->identification()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2403
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->group()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5600()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2404
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;->exe()V

    .line 2409
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->cancel()Z

    goto :goto_0
.end method
