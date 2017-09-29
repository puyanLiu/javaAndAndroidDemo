.class public Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;
.super Ljava/lang/Object;
.source "ResultUtils.java"


# instance fields
.field private mfacErrorMessage:Ljava/lang/String;

.field private resultStatus:Lcom/fido/android/framework/agent/api/ResultType;

.field private serverErrorMessage:Ljava/lang/String;

.field private syncedRegTokens:Ljava/util/List;

.field private touchXCoordinate:I

.field private touchYCoordinate:I


# direct methods
.method public constructor <init>(Lcom/fido/android/framework/agent/api/ResultType;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->resultStatus:Lcom/fido/android/framework/agent/api/ResultType;

    .line 156
    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchXCoordinate:I

    .line 157
    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchYCoordinate:I

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->resultStatus:Lcom/fido/android/framework/agent/api/ResultType;

    .line 162
    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchXCoordinate:I

    .line 163
    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchYCoordinate:I

    .line 165
    iput-object p3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->syncedRegTokens:Ljava/util/List;

    .line 167
    if-nez p2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "errorDetails"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    const-string/jumbo v1, "errorDetails"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->mfacErrorMessage:Ljava/lang/String;

    .line 177
    :cond_2
    const-string/jumbo v1, "coordinates"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "coordinates"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "touchX"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-string/jumbo v0, "touchX"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchXCoordinate:I

    .line 183
    :cond_3
    const-string/jumbo v0, "touchY"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "touchY"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchYCoordinate:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private extractErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 227
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string/jumbo v2, "authenticatorsFailed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    const-string/jumbo v0, "JSONException"

    goto :goto_0
.end method


# virtual methods
.method public getMfacErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->mfacErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->resultStatus:Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->serverErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncedRegTokens()Ljava/util/List;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->syncedRegTokens:Ljava/util/List;

    return-object v0
.end method

.method public getTouchXCoordinate()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchXCoordinate:I

    return v0
.end method

.method public getTouchYCoordinate()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->touchYCoordinate:I

    return v0
.end method

.method public setResultStatus(Lcom/fido/android/framework/agent/api/ResultType;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->resultStatus:Lcom/fido/android/framework/agent/api/ResultType;

    .line 197
    return-void
.end method

.method public setServerErrorMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->extractErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->serverErrorMessage:Ljava/lang/String;

    .line 221
    return-void
.end method
