.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectDataNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;
.source "Amnet.java"


# instance fields
.field private data:[B

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J[B)V
    .locals 0

    .prologue
    .line 2318
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectDataNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2319
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2320
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectDataNotice;->data:[B

    .line 2321
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 2

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectDataNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectDataNotice;->data:[B

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->check([B)V

    .line 2327
    return-void
.end method
