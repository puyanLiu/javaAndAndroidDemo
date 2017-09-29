.class public Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;
.super Ljava/lang/Object;
.source "H5BridgePolicy.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;->CONSOLE_LOG:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->a:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->a:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    return-object v0
.end method

.method public static negotiate()V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "HuaweiMediaPad"

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v0, "4.4.2"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, "hw7d501l"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "C208B011"

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;->WINDOW_PROMPT:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->a:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    .line 37
    :cond_0
    return-void
.end method
