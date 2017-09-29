.class Lcom/alipay/mobile/nebulacore/wallet/H5AppCenter$1;
.super Ljava/lang/Object;
.source "H5AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5AppCenter$1;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5AppCenter$1;->b:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5AppCenter$1;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5AppCenter$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v0, "H5AppCenter"

    const-string/jumbo v1, "H5Container installAPP!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method
