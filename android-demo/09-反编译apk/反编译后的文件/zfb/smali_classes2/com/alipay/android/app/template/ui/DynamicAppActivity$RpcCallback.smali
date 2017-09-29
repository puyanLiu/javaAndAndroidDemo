.class Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;
.super Ljava/lang/Object;
.source "DynamicAppActivity.java"

# interfaces
.implements Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    return-object v0
.end method


# virtual methods
.method public onRpcResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 181
    if-eqz p1, :cond_3

    .line 182
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    :try_start_0
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 187
    const-string/jumbo v1, "bizResult"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "{}"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 194
    :goto_0
    const-string/jumbo v1, "templateResult"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 195
    const-string/jumbo v3, "templateJson"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;)V

    .line 232
    :goto_2
    return-void

    .line 191
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    const-string/jumbo v3, "DynamicAppActivity"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v4}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v4}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    new-instance v1, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
