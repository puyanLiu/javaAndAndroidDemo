.class final Lcom/alipay/android/app/hardwarepay/bracelet/b;
.super Ljava/lang/Object;
.source "BraceletOperator.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 71
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v0, "result"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v0, "message"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v0, ""

    .line 75
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 88
    const-string/jumbo v3, "ex"

    .line 89
    const-string/jumbo v4, "braceletError"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u4f4d\u7f6e\u7684\u4e1a\u52a1\u7c7b\u578b:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    sget-object v4, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->SYS_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    const-string/jumbo v5, "\u5f00\u901a\u5f02\u5e38"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessFailed(Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 92
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wwdc::[BraceletPayHelperImpl]\u624b\u73af\u652f\u4ed8"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u56de\u8c03\uff1a result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tokenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v2, " message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " callback "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 102
    :goto_2
    return-void

    .line 79
    :pswitch_0
    const-string/jumbo v3, "data"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    const-string/jumbo v3, "tokenId"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    invoke-interface {v3, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move v0, v1

    .line 96
    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
