.class public Lcom/alipay/security/mobile/auth/message/OstpMessage;
.super Ljava/lang/Object;
.source "OstpMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMessage(Ljava/lang/String;Z)Lcom/fido/android/framework/agent/api/OstpIn;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/security/mobile/auth/message/OstpMessage;->createMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/api/OstpIn;

    move-result-object v0

    return-object v0
.end method

.method public final createMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/api/OstpIn;
    .locals 2

    .prologue
    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v1, "ostpMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    new-instance v0, Lcom/fido/android/framework/agent/api/OstpIn;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/api/OstpIn;-><init>()V

    .line 37
    iput-object v1, v0, Lcom/fido/android/framework/agent/api/OstpIn;->request:Ljava/lang/String;

    .line 38
    iput-boolean p2, v0, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    .line 39
    iput-object p3, v0, Lcom/fido/android/framework/agent/api/OstpIn;->requestParams:Ljava/lang/String;

    .line 40
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
