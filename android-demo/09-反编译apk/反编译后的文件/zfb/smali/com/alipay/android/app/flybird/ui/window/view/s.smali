.class final Lcom/alipay/android/app/flybird/ui/window/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/view/r;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/r;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/s;->a:Lcom/alipay/android/app/flybird/ui/window/view/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/s;->a:Lcom/alipay/android/app/flybird/ui/window/view/r;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/r;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->dismiss()V

    .line 189
    return-void
.end method
