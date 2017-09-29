.class Lcom/alipay/android/app/template/ui/DynamicAppActivity$2;
.super Ljava/lang/Object;
.source "DynamicAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$2;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$2;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->d(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$2;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    .line 172
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$2;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    sget v2, Lcom/alipay/android/app/template/R$string;->template_data_error:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 171
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    return-void
.end method
