.class Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;
.super Ljava/lang/Object;
.source "BTManager.java"


# instance fields
.field public device:Landroid/bluetooth/BluetoothDevice;

.field public secure:Z

.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->device:Landroid/bluetooth/BluetoothDevice;

    .line 404
    iput-object p3, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->uuid:Ljava/lang/String;

    .line 405
    iput-boolean p4, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;->secure:Z

    .line 406
    return-void
.end method
