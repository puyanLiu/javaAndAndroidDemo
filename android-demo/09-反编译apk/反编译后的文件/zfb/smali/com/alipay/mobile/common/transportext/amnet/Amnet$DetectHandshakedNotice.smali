.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectHandshakedNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J[B[B)V
    .locals 0

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectHandshakedNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2338
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2339
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 2

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectHandshakedNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    .line 2345
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->putSsl()V

    .line 2346
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->execute(Z)V

    .line 2347
    return-void
.end method
