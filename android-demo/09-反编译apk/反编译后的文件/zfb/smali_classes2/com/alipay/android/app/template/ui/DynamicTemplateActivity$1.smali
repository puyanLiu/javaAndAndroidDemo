.class Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;
.super Landroid/os/AsyncTask;
.source "DynamicTemplateActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

.field private final synthetic b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;Lcom/alipay/android/app/template/service/DynamicTemplateService;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    iput-object p2, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object p3, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->c:Landroid/app/Dialog;

    .line 74
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 79
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;)Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->a:Ljava/lang/String;

    .line 80
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    iget-object v5, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    const/4 v6, 0x0

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string/jumbo v1, "DynamicTemplateActivity"

    const-string/jumbo v2, "Throwable: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 85
    goto :goto_0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->showTemplate(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    sget v2, Lcom/alipay/android/app/template/R$string;->generate_view_failed:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
