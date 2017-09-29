.class final Lcom/alipay/android/app/hardwarepay/base/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->f(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->g(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;->a(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->h(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/e;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;->a(I)V

    goto :goto_0
.end method
