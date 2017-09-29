.class final Lcom/alipay/android/app/flybird/ui/window/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/i;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/i;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a:Landroid/view/View;

    const-string/jumbo v1, "nopwd_value_item"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/i;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    invoke-static {v1, p2}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;Z)V

    .line 163
    if-eqz p2, :cond_1

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/i;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/i;->a:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, "setting_nopwd"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->b(Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
