.class final Lcom/alipay/android/app/flybird/ui/window/view/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "encryptType"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "spwd"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->getInputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v1, "{\"action\":{\"name\":\"/setting/save\"}}"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "params"

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 181
    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 182
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->g(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->h(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/s;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/s;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/r;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "pwd"

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/app/encrypt/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
