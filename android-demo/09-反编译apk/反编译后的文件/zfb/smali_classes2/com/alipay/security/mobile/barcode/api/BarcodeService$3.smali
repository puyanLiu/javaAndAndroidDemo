.class Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;
.super Ljava/lang/Object;
.source "BarcodeService.java"

# interfaces
.implements Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

.field final synthetic val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

.field final synthetic val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    iput-object p3, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFail(I)V
    .locals 3

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 249
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 250
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 252
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    :try_start_3
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 261
    :catch_1
    move-exception v0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    :try_start_4
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 260
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    .line 261
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized onSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 223
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 224
    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setData(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 227
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    .line 231
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 232
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 233
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 235
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    :try_start_4
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 241
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    .line 242
    :catch_3
    move-exception v0

    goto :goto_0
.end method
