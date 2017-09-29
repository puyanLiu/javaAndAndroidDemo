.class final Lcom/alipay/android/app/hardwarepay/base/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/a;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/a;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/a;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;->a(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/a;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->b(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Z

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/a;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->c(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    return-void
.end method
