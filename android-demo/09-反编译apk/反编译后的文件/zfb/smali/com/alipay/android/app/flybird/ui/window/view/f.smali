.class final Lcom/alipay/android/app/flybird/ui/window/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/f;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/f;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/f;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->c_()V

    .line 125
    :cond_0
    return-void
.end method
