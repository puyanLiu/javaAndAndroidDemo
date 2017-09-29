.class public Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;
.super Ljava/lang/Object;
.source "AuthenticatorCallbackImpl.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

.field private b:I

.field private c:Lcom/alipay/security/mobile/auth/IAuthenticator;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/security/mobile/auth/IAuthenticator;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->d:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    .line 38
    iput p4, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->b:I

    .line 39
    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->c:Lcom/alipay/security/mobile/auth/IAuthenticator;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    .line 49
    return-void
.end method

.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v0, "result"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v0, "message"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v0, ""

    .line 60
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v3, v2

    .line 95
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    .line 96
    const-string/jumbo v6, "msp"

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u6307\u7eb9\u652f\u4ed8"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u56de\u8c03\uff1a result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 98
    const-string/jumbo v8, " tokenId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " message:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v7, " data:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " callback "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, " isInitResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-interface {v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "msp"

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " check  invoke "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->b:I

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;->callBack(ILjava/lang/String;)V

    .line 111
    :cond_0
    :goto_3
    return-void

    :pswitch_1
    move v3, v1

    .line 64
    goto/16 :goto_1

    .line 66
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "fingerprint_authenticate_result"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v5, "result"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string/jumbo v5, "data"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v5, "message"

    .line 70
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->c:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v5}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v5

    .line 72
    const-string/jumbo v6, "vendor"

    invoke-virtual {v5}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string/jumbo v6, "protocolVersion"

    invoke-virtual {v5}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string/jumbo v6, "protocolType"

    invoke-virtual {v5}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string/jumbo v5, "deviceId"

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->c:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v6}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->d:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move v3, v2

    .line 77
    goto/16 :goto_1

    .line 79
    :pswitch_3
    const-string/jumbo v3, "data"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v3, v2

    .line 80
    goto/16 :goto_1

    .line 82
    :pswitch_4
    const-string/jumbo v3, "data"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    :cond_1
    const-string/jumbo v3, "tokenId"

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "msp.fp.register.broadcaster"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v5, "result"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v5, "responseMsg"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v5, "tokenId"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->d:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " \u6307\u7eb9\u652f\u4ed8 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    move v0, v2

    .line 99
    goto/16 :goto_2

    .line 60
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
