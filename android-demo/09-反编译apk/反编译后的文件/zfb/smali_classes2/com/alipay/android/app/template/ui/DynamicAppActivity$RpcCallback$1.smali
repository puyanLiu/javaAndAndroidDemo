.class Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;
.super Ljava/lang/Object;
.source "DynamicAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->d(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    move-result-object v0

    .line 213
    sget v1, Lcom/alipay/android/app/template/R$string;->network_exception:I

    .line 214
    const/4 v2, 0x1

    .line 212
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    move-result-object v0

    const-string/jumbo v1, "network_exception"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 219
    if-lez v0, :cond_0

    .line 220
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    invoke-static {v2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string/jumbo v1, "DynamicAppActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    move-result-object v0

    .line 226
    const-string/jumbo v1, "\u7f51\u7edc\u9519\u8bef"

    .line 225
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
