.class Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;
.super Ljava/lang/Object;
.source "DynamicTemplateServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/alipay/android/app/template/DtmElementClickListener;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/DtmElementClickListener;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->e:Lcom/alipay/android/app/template/DtmElementClickListener;

    iput-object p6, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->g:Landroid/os/ConditionVariable;

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1054
    new-instance v0, Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->e:Lcom/alipay/android/app/template/DtmElementClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flybird/FBDocument;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 1055
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$5;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1060
    return-void
.end method
