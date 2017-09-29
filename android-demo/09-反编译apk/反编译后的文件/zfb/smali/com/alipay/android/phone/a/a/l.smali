.class final Lcom/alipay/android/phone/a/a/l;
.super Ljava/lang/Object;
.source "ServerDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/a/a/j;

.field private final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/a/a/j;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/a/a/l;->a:Lcom/alipay/android/phone/a/a/j;

    iput-object p2, p0, Lcom/alipay/android/phone/a/a/l;->b:Ljava/lang/ref/WeakReference;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/android/phone/a/a/l;->a:Lcom/alipay/android/phone/a/a/j;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/j;->a(Lcom/alipay/android/phone/a/a/j;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/l;->a:Lcom/alipay/android/phone/a/a/j;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/j;->b(Lcom/alipay/android/phone/a/a/j;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/phone/a/a/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 373
    const-string/jumbo v0, "search"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    return-void

    .line 374
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 376
    sget-object v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v1, v4, :cond_0

    .line 377
    iget-object v1, p0, Lcom/alipay/android/phone/a/a/l;->a:Lcom/alipay/android/phone/a/a/j;

    invoke-static {v1}, Lcom/alipay/android/phone/a/a/j;->b(Lcom/alipay/android/phone/a/a/j;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
