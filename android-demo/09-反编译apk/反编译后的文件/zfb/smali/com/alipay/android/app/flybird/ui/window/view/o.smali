.class final Lcom/alipay/android/app/flybird/ui/window/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/o;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/o;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->b(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->c_()V

    .line 113
    return-void
.end method
