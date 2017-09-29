.class final Lcom/alipay/android/app/flybird/ui/window/view/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/m;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/m;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/m;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/m;->a:Landroid/view/View;

    const-string/jumbo v3, "setting_dialog_container"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/m;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/widget/EditText;ZLandroid/view/View;Landroid/view/View;)V

    .line 84
    return-void
.end method
