.class Lcom/alipay/android/app/template/TemplateManager$1;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Ljava/util/Map;

.field private final synthetic e:Z

.field private final synthetic f:Ljava/util/Map;

.field private final synthetic g:Landroid/content/Context;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/util/Map;Landroid/content/Context;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateManager$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/TemplateManager$1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/alipay/android/app/template/TemplateManager$1;->d:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/alipay/android/app/template/TemplateManager$1;->e:Z

    iput-object p6, p0, Lcom/alipay/android/app/template/TemplateManager$1;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/alipay/android/app/template/TemplateManager$1;->g:Landroid/content/Context;

    iput-object p8, p0, Lcom/alipay/android/app/template/TemplateManager$1;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/android/app/template/TemplateManager$1;->i:Landroid/os/ConditionVariable;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 115
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager$1;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateManager$1;->d:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/alipay/android/app/template/TemplateManager$1;->e:Z

    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateManager$1;->f:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/android/app/template/TemplateManager$1;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;ZLjava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager$1;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 118
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateManager$1;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateManager$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager$1;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 128
    return-void

    .line 125
    :cond_1
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateManager$1;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
