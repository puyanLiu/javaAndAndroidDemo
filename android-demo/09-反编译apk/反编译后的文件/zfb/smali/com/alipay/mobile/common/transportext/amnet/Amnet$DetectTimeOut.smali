.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTimeOut;
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
    .line 2364
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTimeOut;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2365
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2366
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2371
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTimeOut;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTimeOut;->identification()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->over(J)V

    .line 2372
    return-void
.end method
