.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;
.super Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

.field private i:[Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;-><init>()V

    .line 24
    const-string/jumbo v0, "{\"name\":\"/setting/channel\"}"

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->f:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->g:Landroid/widget/ListView;

    .line 27
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->h:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    .line 28
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->i:[Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->j:Z

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->a(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->a:Landroid/view/View;

    const-string/jumbo v1, "channel_list"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->g:Landroid/widget/ListView;

    .line 39
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    const-string/jumbo v1, "mini_list_item_handle_right"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    const-string/jumbo v1, "text"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    invoke-direct {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->h:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->h:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->a:Landroid/view/View;

    const-string/jumbo v1, "title_back_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/d;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/app/flybird/ui/window/view/d;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-super {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->g:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "setting_activity_channel"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 73
    const-string/jumbo v0, "payments"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string/jumbo v0, "payments"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v4

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->i:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(I)V

    move v0, v2

    .line 78
    :goto_1
    if-ge v0, v4, :cond_1

    .line 79
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->i:[Ljava/lang/String;

    aput-object v5, v6, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->h:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->i:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a([Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->h:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->notifyDataSetChanged()V

    .line 86
    :cond_2
    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->j:Z

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->a:Landroid/view/View;

    const-string/jumbo v1, "auto_channel_check"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 91
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->a:Landroid/view/View;

    const-string/jumbo v3, "channel_label"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    new-instance v3, Lcom/alipay/android/app/flybird/ui/window/view/e;

    invoke-direct {v3, p0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/e;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    iget-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->j:Z

    if-eqz v3, :cond_4

    .line 109
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->g:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 111
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(Z)V

    .line 112
    const-string/jumbo v0, "flybird_setting_channel_auto_label"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 114
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 116
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(Z)V

    .line 117
    const-string/jumbo v0, "flybird_setting_channel_label"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->b_()V

    .line 125
    const/4 v0, 0x1

    return v0
.end method
