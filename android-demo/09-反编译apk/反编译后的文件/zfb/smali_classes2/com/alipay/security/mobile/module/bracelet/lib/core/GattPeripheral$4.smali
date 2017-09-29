.class Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$4;
.super Ljava/lang/Object;
.source "GattPeripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$4;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    :try_start_0
    const-string/jumbo v0, "BluetoothGatt connect fail"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$4;->this$0:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->access$400(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
