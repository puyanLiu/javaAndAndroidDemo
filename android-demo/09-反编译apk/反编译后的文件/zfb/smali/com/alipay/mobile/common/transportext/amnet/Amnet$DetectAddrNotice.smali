.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

.field private valIp:Ljava/lang/String;

.field private valPort:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2241
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2243
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;->valIp:Ljava/lang/String;

    .line 2244
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;->valPort:Ljava/lang/String;

    .line 2245
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 3

    .prologue
    .line 2250
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;->valIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectAddrNotice;->valPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->putServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    return-void
.end method
