.class Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;
.super Ljava/lang/Object;
.source "SamsungNNLFIDOFingerPrint.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

.field final synthetic val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    iput-object p2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$000(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$000(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$100(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$100(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
