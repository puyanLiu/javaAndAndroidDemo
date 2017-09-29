.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectShutdownNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V
    .locals 0

    .prologue
    .line 2352
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectShutdownNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2353
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2354
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 2

    .prologue
    .line 2359
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectShutdownNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    const-string/jumbo v1, "The SSL is shutdown."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    .line 2360
    return-void
.end method
