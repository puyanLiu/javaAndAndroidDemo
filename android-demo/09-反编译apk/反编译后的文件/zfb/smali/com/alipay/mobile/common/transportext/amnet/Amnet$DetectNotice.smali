.class abstract Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V
    .locals 0

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2217
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2218
    return-void
.end method


# virtual methods
.method protected abstract exe()V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2223
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    .line 2224
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;->identification()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->identification()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2225
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2226
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;->exe()V

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stop()V

    goto :goto_0
.end method
