.class final Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;
.super Ljava/lang/Object;
.source "BraceletPayHelperImpl.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->b:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 4

    .prologue
    .line 105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v0, "result"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v0, "message"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Shouldn\'t execute to there."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 115
    :pswitch_0
    const-string/jumbo v0, "data"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    const-string/jumbo v2, "tokenId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 124
    const-string/jumbo v0, "bracelet_authenticate_result"

    .line 130
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 131
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "result"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 128
    const-string/jumbo v0, "bracelet_register_result"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
