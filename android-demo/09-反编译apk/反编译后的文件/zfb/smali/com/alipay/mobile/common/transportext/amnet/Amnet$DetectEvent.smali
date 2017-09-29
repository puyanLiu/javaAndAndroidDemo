.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.source "Amnet.java"


# instance fields
.field private detect:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V
    .locals 0

    .prologue
    .line 2170
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 2171
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;->detect:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 2172
    return-void
.end method


# virtual methods
.method public final owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;->detect:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    return-object v0
.end method
