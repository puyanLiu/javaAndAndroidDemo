.class Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;
.super Ljava/lang/Object;
.source "DynamicTemplateServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

.field private final synthetic b:Ljava/util/Map;

.field private final synthetic c:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Ljava/util/Map;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->c:Landroid/content/res/Resources;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v1

    .line 622
    const-string/jumbo v0, "DynamicTemplateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleBirdResponse >>> downloadStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    iget-object v3, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->b:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 625
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    return-void

    .line 626
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 627
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 628
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    sget-object v3, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 631
    :cond_2
    const-string/jumbo v3, "DynamicTemplateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleBirdResponse >>> status="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    iget-object v3, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    invoke-static {v3}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v3

    .line 635
    if-eqz v3, :cond_4

    .line 636
    sget-object v4, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v3}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_4
    sget-object v3, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
