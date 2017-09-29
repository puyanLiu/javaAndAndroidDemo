.class Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;
.super Ljava/lang/Object;
.source "SamsungNNLFIDOFingerPrint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

.field final synthetic val$cb:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    iput-object p2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->val$cb:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    iget-object v4, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->val$cb:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-static {v3, v4, v5}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$300(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$202(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;I)I

    .line 96
    const/16 v2, 0x6a

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$200(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/16 v2, 0x69

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$200(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v2}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$100(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;

    invoke-static {v3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->access$100(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 105
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
