.class Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;
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
    .line 133
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    iput-object p3, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFail(I)V
    .locals 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 175
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 176
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 178
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    :try_start_4
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    .line 187
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized onSuccess(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "receive send data, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 142
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    const-string/jumbo v3, "ack"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    if-nez v0, :cond_1

    .line 145
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendRegisterInfo callback result:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :goto_1
    monitor-exit p0

    return-void

    .line 147
    :cond_1
    const/16 v0, 0x65

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    .line 157
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 158
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 159
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->this$0:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z

    .line 161
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    :try_start_5
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;->val$adapter:Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 137
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    .line 168
    :catch_3
    move-exception v0

    goto :goto_1
.end method
