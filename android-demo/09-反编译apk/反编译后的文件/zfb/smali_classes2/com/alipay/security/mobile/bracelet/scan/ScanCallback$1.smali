.class Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$1;
.super Ljava/util/TimerTask;
.source "ScanCallback.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$1;->this$0:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->stopScan()V

    .line 70
    return-void
.end method
