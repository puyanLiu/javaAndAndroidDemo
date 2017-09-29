.class Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;
.super Ljava/lang/Object;
.source "BarcodeService.java"

# interfaces
.implements Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

.field final synthetic val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFail(I)V
    .locals 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 102
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 103
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 105
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 75
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setData(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 79
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    .line 84
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 85
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 86
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 88
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
