.class final Lcom/alipay/android/app/flybird/ui/window/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/h;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/h;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/h;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, "setting_nopwd"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->b(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method
