.class final Lcom/alipay/android/app/flybird/ui/window/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/e;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/e;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    if-eqz p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/e;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 98
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b(Z)V

    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/e;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "flybird_setting_channel_auto_label"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/e;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 102
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b(Z)V

    .line 103
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/e;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "flybird_setting_channel_label"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
