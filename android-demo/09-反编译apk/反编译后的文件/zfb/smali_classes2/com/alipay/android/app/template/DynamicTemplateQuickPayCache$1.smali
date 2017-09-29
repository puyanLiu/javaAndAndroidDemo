.class Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache$1;
.super Ljava/lang/Object;
.source "DynamicTemplateQuickPayCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache$1;->a:Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache$1;->b:Landroid/app/Activity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache$1;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/UiAssistantor;->inflateWebView(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/UiAssistantor;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 46
    return-void
.end method
