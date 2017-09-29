.class Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;
.super Ljava/lang/Object;
.source "DynamicAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    iput-object p2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->c:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getTemplateById(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    new-instance v2, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    iget-object v4, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v4}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->d(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->f(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 133
    const-string/jumbo v1, "tplId"

    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v1, "bizParams"

    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "birdParams"

    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 138
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "DynamicAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RPC request param="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    new-instance v2, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    :goto_1
    return-void

    .line 121
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto/16 :goto_0

    .line 149
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v4}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v2, v1, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1
.end method
