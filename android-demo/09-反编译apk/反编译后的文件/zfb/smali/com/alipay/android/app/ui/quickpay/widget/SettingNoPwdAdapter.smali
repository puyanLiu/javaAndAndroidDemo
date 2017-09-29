.class public Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:[Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->b:Z

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->c:Ljava/lang/String;

    .line 36
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->d:Landroid/app/Activity;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->a:[Ljava/lang/String;

    aget-object v3, v0, p1

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->d:Landroid/app/Activity;

    const-string/jumbo v1, "mini_list_item_handle_right"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 87
    const-string/jumbo v0, "mini_block_item_normal_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    const-string/jumbo v0, "drag_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    if-nez v0, :cond_0

    move-object v0, v2

    .line 115
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->i()Z

    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "flybird_yuan_bi"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const-string/jumbo v0, "drag_up"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    const-string/jumbo v1, "drag_down"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 106
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const-string/jumbo v3, "mini_channel_gou"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, v2

    .line 115
    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingNoPwdAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "flybird_yuan_ri"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
