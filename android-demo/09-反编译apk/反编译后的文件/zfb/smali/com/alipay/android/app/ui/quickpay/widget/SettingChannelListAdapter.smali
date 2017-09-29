.class public Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:[Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->b:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->c:I

    .line 31
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->d:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->c:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;II)V
    .locals 3

    .prologue
    .line 24
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    aput-object v0, v1, p2

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->c:I

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(II)V

    goto :goto_0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    aget-object v1, v0, p1

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->d:Landroid/app/Activity;

    const-string/jumbo v2, "mini_list_item_handle_right"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 86
    const-string/jumbo v0, "mini_block_item_normal_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/r;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/r;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string/jumbo v0, "drag_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    if-nez v0, :cond_0

    move-object v0, v2

    .line 142
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
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

    .line 104
    new-instance v3, Lcom/alipay/android/app/ui/quickpay/widget/s;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/s;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v3, Lcom/alipay/android/app/ui/quickpay/widget/t;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/t;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->c:I

    if-ne p1, v3, :cond_3

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->c:I

    if-nez v3, :cond_1

    .line 126
    const-string/jumbo v3, "alipay_msp_drag_up_disabled"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :goto_1
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->c:I

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    .line 132
    const-string/jumbo v0, "alipay_msp_drag_down_disabled"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object v0, v2

    .line 142
    goto :goto_0

    .line 128
    :cond_1
    const-string/jumbo v3, "alipay_msp_drag_up"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 134
    :cond_2
    const-string/jumbo v0, "alipay_msp_drag_down"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
