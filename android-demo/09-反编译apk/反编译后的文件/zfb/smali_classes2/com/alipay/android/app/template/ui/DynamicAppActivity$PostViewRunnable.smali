.class Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;
.super Ljava/lang/Object;
.source "DynamicAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/view/View;

.field final b:Ljava/lang/String;

.field final c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->a:Landroid/view/View;

    .line 247
    iput-object p2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->b:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 249
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 253
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->dismissProgressDialog()V

    .line 255
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    sget v1, Lcom/alipay/android/app/template/R$id;->container:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    .line 256
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->a:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->c:Lcom/alibaba/fastjson/JSONObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    const/4 v6, 0x0

    .line 263
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 265
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 265
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->e(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    .line 270
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;->d:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    sget v2, Lcom/alipay/android/app/template/R$string;->generate_view_failed:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    const/4 v2, 0x1

    .line 269
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
