.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectBrokenNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V
    .locals 0

    .prologue
    .line 2305
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectBrokenNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2306
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2307
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 2

    .prologue
    .line 2312
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectBrokenNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    const-string/jumbo v1, "The link is broken."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    .line 2313
    return-void
.end method
