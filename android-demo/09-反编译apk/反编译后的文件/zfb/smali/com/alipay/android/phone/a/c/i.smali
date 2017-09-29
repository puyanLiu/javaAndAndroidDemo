.class public final Lcom/alipay/android/phone/a/c/i;
.super Ljava/lang/Object;
.source "FlyBirdItemView.java"


# instance fields
.field a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field b:Lcom/alipay/android/phone/a/c/g;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alipay/android/phone/a/c/i;->c:Landroid/app/Activity;

    .line 19
    new-instance v0, Lcom/alipay/android/phone/a/c/g;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/a/c/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/i;->b:Lcom/alipay/android/phone/a/c/g;

    .line 20
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/i;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 7

    .prologue
    .line 26
    if-eqz p1, :cond_1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/i;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {p3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->toJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/a/c/i;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->resetViewData(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 31
    :goto_0
    if-nez v0, :cond_0

    .line 32
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/a/c/i;->b:Lcom/alipay/android/phone/a/c/g;

    invoke-virtual {v1, v0, p2, p3}, Lcom/alipay/android/phone/a/c/g;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 41
    :cond_0
    :goto_1
    return-object v0

    .line 29
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/i;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->toJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/phone/a/c/i;->c:Landroid/app/Activity;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 40
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "FlyBirdItemView create failed, use default"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/i;->b:Lcom/alipay/android/phone/a/c/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/a/c/g;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 37
    :catch_1
    move-exception v1

    move-object p1, v0

    move-object v0, v1

    goto :goto_2
.end method
