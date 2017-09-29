.class Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$1;
.super Ljava/lang/Object;
.source "GattPeripheral.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$1;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "P"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-G"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$1;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$1;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->access$100(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
